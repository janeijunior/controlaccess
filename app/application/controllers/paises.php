<?php

class Paises extends CI_Controller {
    /******************************************
     * Created by PhpStorm.                   *
     * User:  Janei Araujo de Moura Junior    *
     * Email: jaraujo.php@gmail.com           *
     * Function:  Web Developer               *
     * Date:  15/10/2018                      *
     * Time:  00:47                           *
     * Copyright © 2018 All rights reserved.  *
     ******************************************/

    function __construct() {
        parent::__construct();
        if ((!$this->session->userdata('session_id')) || (!$this->session->userdata('logado'))) {
            redirect('sistema/login');
        }

        $this->load->helper(array('form', 'codegen_helper'));
        $this->load->model('paises_model', '', TRUE);
        $this->load->helper(array('audit_helper'));
        $this->data['menuPaises'] = 'Paises';
    }

    function index(){
        $this->gerenciar();
    }

    function gerenciar(){

        if(!$this->permission->checkPermission($this->session->userdata('permissao'),'vDepartamentos')){
            $this->session->set_flashdata('error','Você não tem permissão para visualizar País.');
            redirect(base_url());
        }

        $this->load->library('table');
        $this->load->library('pagination');


        $config['base_url'] = base_url().'index.php/paises/gerenciar/';
        $config['total_rows'] = $this->paises_model->count('pais');
        $config['per_page'] = 1000000;
        $config['next_link'] = 'Próxima';
        $config['prev_link'] = 'Anterior';
        $config['full_tag_open'] = '<div class="pagination alternate"><ul>';
        $config['full_tag_close'] = '</ul></div>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li><a style="color: #2D335B"><b>';
        $config['cur_tag_close'] = '</b></a></li>';
        $config['prev_tag_open'] = '<li>';
        $config['prev_tag_close'] = '</li>';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['first_link'] = 'Primeira';
        $config['last_link'] = 'Última';
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';

        $this->pagination->initialize($config);

        $this->data['results'] = $this->paises_model->get('pais','id,paisnome,paissigla,paisnacionalidade,','',$config['per_page'],$this->uri->segment(3));
        $this->data['view'] = 'paises/paises';
        $this->load->view('tema/topo',$this->data);


    }

    function visualizar() {

        if(!$this->uri->segment(3) || !is_numeric($this->uri->segment(3))){
            $this->session->set_flashdata('error','Item não pode ser encontrado, parâmetro não foi passado corretamente.');
            redirect('sistema');
        }
        if(!$this->permission->checkPermission($this->session->userdata('permissao'),'vDepartamentos')){
            $this->session->set_flashdata('error','Você não tem permissão para visualizar País.');
            redirect(base_url());
        }
        $this->data['result'] = $this->paises_model->getById($this->uri->segment(3));

        if($this->data['result'] == null){
            $this->session->set_flashdata('error','Cargo não encontrado.');
            redirect(base_url() . 'index.php/paises/editar/'.$this->input->post('id'));
        }
        $this->data['view'] = 'paises/visualizarPais';
        $this->load->view('tema/topo', $this->data);

    }

    function adicionar() {
        if(!$this->permission->checkPermission($this->session->userdata('permissao'),'aPaises')){
            $this->session->set_flashdata('error','Você não tem permissão para adicionar um País.');
            redirect(base_url());
        }
        $this->load->library('form_validation');
        $this->data['custom_error'] = '';
        $this->form_validation->set_rules('paisnome', 'paisnome', 'trim|required|xss_clean');

        if ($this->form_validation->run() == false) {
            $this->data['custom_error'] = (validation_errors() ? '<div class="form_error">' . validation_errors() . '</div>' : false);

        } else {

            $paisnome = $this->input->post('paisnome');
            $paissigla = $this->input->post('paissigla');
            $paisnacionalidade = $this->input->post('paisnacionalidade');
            $situacao = 1;
            $data = array(
                'paisnome' => $paisnome,
                'paissigla' => $paissigla,
                'paisnacionalidade' => $paisnacionalidade,
                'situacao' => $situacao,
                'userinsert' => $this->session->userdata('id'),
                'dateinsert' => date('Y-m-d H:i:s'),
            );

            if ($this->paises_model->add('pais', $data) == TRUE) {
                log_info('País adicionado com sucesso - Nome: '.$this->input->post('paisnome'));
                $this->session->set_flashdata('success', 'País adicionado com sucesso!');
                redirect(base_url() . 'index.php/paises/adicionar/');
            } else {
                $this->data['custom_error'] = '<div class="form_error"><p>Ocorreu um erro.</p></div>';
            }
        }

        $this->data['view'] = 'paises/adicionarPais';
        $this->load->view('tema/topo', $this->data);

    }

    function editar() {
        if(!$this->permission->checkPermission($this->session->userdata('permissao'),'ePaises')){
            $this->session->set_flashdata('error','Você não tem permissão para editar este País.');
            redirect(base_url());
        }
        if(!$this->uri->segment(3) || !is_numeric($this->uri->segment(3))){
            $this->session->set_flashdata('error','Item não pode ser encontrado, parâmetro não foi passado corretamente.');
            redirect('sistema');
        }
        $this->load->library('form_validation');
        $this->data['custom_error'] = '';
        $this->form_validation->set_rules('paisnome','paisnome', 'trim|required|xss_clean');
        if ($this->form_validation->run() == false) {
            $this->data['custom_error'] = (validation_errors() ? '<div class="form_error">' . validation_errors() . '</div>' : false);
        } else {
            $paisnome = $this->input->post('paisnome');
            $paissigla = $this->input->post('paissigla');
            $paisnacionalidade = $this->input->post('paisnacionalidade');
            $situacao = $this->input->post('situacao');
            $data = array(
                'paisnome' => $paisnome,
                'paissigla' => $paissigla,
                'paisnacionalidade' => $paisnacionalidade,
                'situacao' => $situacao,
                'userupdate' => $this->session->userdata('id'),
                'dateupdate' => date('Y-m-d H:i:s'),
            );
            if ($this->paises_model->edit('pais', $data, 'id', $this->input->post('id')) == TRUE) {
                log_info('País editado com sucesso - ID'.$this->input->post('id'));
                $this->session->set_flashdata('success', 'O país foi editado com sucesso!');
                redirect(base_url() . 'index.php/paises/editar/'.$this->input->post('id'));
            } else {
                $this->data['custom_error'] = '<div class="form_error"><p>Ocorreu um errro.</p></div>';
            }
        }
        $this->data['result'] = $this->paises_model->getById($this->uri->segment(3));
        $this->data['view'] = 'paises/editarPais';
        $this->load->view('tema/topo', $this->data);
    }
    function excluir() {

        if (!$this->permission->checkPermission($this->session->userdata('permissao'), 'dPaises')) {
            $this->session->set_flashdata('error', 'Você não tem permissão para excluir este país.');
            redirect(base_url());
        }
        $id =  $this->input->post('id');
        if ($id == null) {

            $this->session->set_flashdata('error', 'Erro ao tentar excluir Pais.');
            redirect(base_url().'index.php/paises/gerenciar/');
        }
        $this->paises_model->delete('pais','id', $id);
        log_info('País excluido com sucesso - ID'.$this->input->post('id'));
        $this->session->set_flashdata('success', 'País excluido com sucesso!');
        redirect(base_url().'index.php/paises/gerenciar/');
    }
}