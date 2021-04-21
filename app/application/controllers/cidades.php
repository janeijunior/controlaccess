<?php

class Cidades extends CI_Controller {
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
        $this->load->model('cidades_model', '', TRUE);
        $this->data['menuCidade'] = 'Cidades';
    }

    function index(){
        $this->gerenciar();
    }

    function gerenciar(){

        if(!$this->permission->checkPermission($this->session->userdata('permissao'),'vDepartamentos')){
            $this->session->set_flashdata('error','Você não tem permissão para visualizar Estados.');
            redirect(base_url());
        }

        $this->load->library('table');
        $this->load->library('pagination');


        $config['base_url'] = base_url().'index.php/cidades/gerenciar/';
        $config['total_rows'] = $this->cidades_model->count('cidade');
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

        $this->data['results'] = $this->cidades_model->get($config['per_page'],$this->uri->segment(3));
        $this->data['view'] = 'cidades/cidades';
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
        $this->data['result'] = $this->cidades_model->getById($this->uri->segment(3));

        if($this->data['result'] == null){
            $this->session->set_flashdata('error','Cargo não encontrado.');
            redirect(base_url() . 'index.php/cidades/editar/'.$this->input->post('id'));
        }
        $this->load->model('cidades_model');
        $this->data['cidades'] = $this->cidades_model->getActive('uf','uf.id,uf.ufnome');
        $this->data['view'] = 'cidades/visualizarCidade';
        $this->load->view('tema/topo', $this->data);

    }

    function adicionar() {

        $this->load->library('form_validation');
        $this->data['custom_error'] = '';
        $this->form_validation->set_rules('ufnome', 'ufnome', 'trim|required|xss_clean');

        if ($this->form_validation->run() == false) {
            $this->data['custom_error'] = (validation_errors() ? '<div class="form_error">' . validation_errors() . '</div>' : false);

        } else {

            $paisid_id = $this->input->post('paisid_id');
            $ufnome = $this->input->post('ufnome');
            $ufsigla = $this->input->post('ufsigla');
            $situacao = 1;
            $data = array(
                'paisid_id' => $paisid_id,
                'ufnome' => $ufnome,
                'ufsigla' => $ufsigla,
                'situacao' => $situacao,
                'userinsert' => $this->session->userdata('id'),
                'dateinsert' => date('Y-m-d H:i:s'),
            );

            if ($this->estados_model->add('uf', $data) == TRUE) {

                $this->session->set_flashdata('success', 'Estado adicionado com sucesso!');
                redirect(base_url() . 'index.php/estados/adicionar/');
            } else {
                $this->data['custom_error'] = '<div class="form_error"><p>Ocorreu um erro.</p></div>';
            }
        }
        $this->load->model('estados_model');
        $this->data['pais'] = $this->estados_model->getActive('pais','pais.id,pais.paisnome');
        $this->data['view'] = 'estados/adicionarEstado';
        $this->load->view('tema/topo', $this->data);
    }

    function editar() {

        if(!$this->uri->segment(3) || !is_numeric($this->uri->segment(3))){
            $this->session->set_flashdata('error','Item não pode ser encontrado, parâmetro não foi passado corretamente.');
            redirect('sistema');
        }

        $this->load->library('form_validation');

        $this->data['custom_error'] = '';

        $this->form_validation->set_rules('ufnome','ufnome', 'trim|required|xss_clean');

        if ($this->form_validation->run() == false) {

            $this->data['custom_error'] = (validation_errors() ? '<div class="form_error">' . validation_errors() . '</div>' : false);

        } else {


            $paisid_id = $this->input->post('paisid_id');
            $ufnome = $this->input->post('ufnome');
            $ufsigla = $this->input->post('ufsigla');
            $situacao = $this->input->post('situacao');

            $data = array(

                'ufnome' => $ufnome,
                'ufsigla' => $ufsigla,
                'situacao' => $situacao,
                'paisid_id' => $paisid_id,
                'userupdate' => $this->session->userdata('id'),
                'dateupdate' => date('Y-m-d H:i:s'),
            );

            if ($this->estados_model->edit('uf', $data, 'id', $this->input->post('id')) == TRUE) {
                $this->session->set_flashdata('success', 'O Estado foi editado com sucesso!');
                redirect(base_url() . 'index.php/estados/editar/'.$this->input->post('id'));
            } else {
                $this->data['custom_error'] = '<div class="form_error"><p>Ocorreu um errro.</p></div>';
            }
        }

        $this->data['result'] = $this->cidades_model->get($this->uri->segment(3));
        $this->load->model('estados_model');
        $this->data['pais'] = $this->estados_model->getActive('pais','pais.id,pais.paisnome');
        $this->data['view'] = 'estados/editarEstado';
        $this->load->view('tema/topo', $this->data);

    }

    function editar1() {
        if(!$this->uri->segment(3) || !is_numeric($this->uri->segment(3))){
            $this->session->set_flashdata('error','Item não pode ser encontrado, parâmetro não foi passado corretamente.');
            redirect('sistema');
        }
        $this->load->library('form_validation');
        $this->data['custom_error'] = '';
        if ($this->form_validation->run() == false) {
            $this->data['custom_error'] = (validation_errors() ? '<div class="form_error">' . validation_errors() . '</div>' : false);
        } else {
            $paisid_id = $this->input->post('paisid_id');
            $ufnome = $this->input->post('ufnome');
            $ufsigla = $this->input->post('ufsigla');
            $situacao = $this->input->post('situacao');
            $data = array(
                'paisid_id' => $paisid_id,
                'ufnome' => $ufnome,
                'ufsigla' => $ufsigla,
                'situacao' => $situacao,
                'userupdate' => $this->session->userdata('id'),
                'dateupdate' => date('Y-m-d H:i:s')
            );
            if ($this->estados_model->edit('uf', $data, 'id', $this->input->post('id')) == TRUE) {
                $this->session->set_flashdata('success', 'O estado foi editado com sucesso!');
                redirect(base_url() . 'index.php/estados/editar/'.$this->input->post('id'));
            } else {
                $this->data['custom_error'] = '<div class="form_error"><p>Ocorreu um errro.</p></div>';
            }
        }
        $this->load->model('estados_model');
        $this->data['pais'] = $this->estados_model->getActive('pais','pais.id,pais.paisnome');
        $this->data['result'] = $this->estados_model->getById($this->uri->segment(3));
        $this->data['view'] = 'estados/editarEstado';
        $this->load->view('tema/topo', $this->data);
    }

    function excluir()
    {
        if (!$this->permission->checkPermission($this->session->userdata('permissao'), 'dDepartamentos')) {
            $this->session->set_flashdata('error', 'Você não tem permissão para excluir este estado.');
            redirect(base_url());
        }
        $id =  $this->input->post('id');
        if ($id == null) {

            $this->session->set_flashdata('error', 'Erro ao tentar excluir estado.');
            redirect(base_url().'index.php/estados/gerenciar/');
        }
        $this->estados_model->delete('uf','id', $id);
        $this->session->set_flashdata('success', 'Estado excluido com sucesso!');
        redirect(base_url().'index.php/estados/gerenciar/');
    }
}