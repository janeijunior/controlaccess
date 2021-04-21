<?php

class Cargos extends CI_Controller {
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
        $this->load->model('cargos_model', '', TRUE);
        $this->data['menuCargos'] = 'Cargos';
    }

    function index(){
        $this->gerenciar();
    }

    function gerenciar(){

        if(!$this->permission->checkPermission($this->session->userdata('permissao'),'vDepartamentos')){
            $this->session->set_flashdata('error','Você não tem permissão para visualizar Cargo.');
            redirect(base_url());
        }

        $this->load->library('table');
        $this->load->library('pagination');


        $config['base_url'] = base_url().'index.php/cargos/gerenciar/';
        $config['total_rows'] = $this->cargos_model->count('cargo');
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

        $this->data['results'] = $this->cargos_model->get('cargo','id,cargodescricao,cargoprioridade,','',$config['per_page'],$this->uri->segment(3));
        $this->data['view'] = 'cargos/cargos';
        $this->load->view('tema/topo',$this->data);


    }

    function visualizar() {

        if(!$this->uri->segment(3) || !is_numeric($this->uri->segment(3))){
            $this->session->set_flashdata('error','Item não pode ser encontrado, parâmetro não foi passado corretamente.');
            redirect('sistema');
        }

        if(!$this->permission->checkPermission($this->session->userdata('permissao'),'vDepartamentos')){
            $this->session->set_flashdata('error','Você não tem permissão para visualizar Cargo.');
            redirect(base_url());
        }

        $this->data['result'] = $this->cargos_model->getById($this->uri->segment(3));

        if($this->data['result'] == null){
            $this->session->set_flashdata('error','Cargo não encontrado.');
            redirect(base_url() . 'index.php/cargos/editar/'.$this->input->post('id'));
        }

        $this->data['view'] = 'cargos/visualizarCargo';
        $this->load->view('tema/topo', $this->data);

    }

    function adicionar() {

        $this->load->library('form_validation');
        $this->data['custom_error'] = '';
        $this->form_validation->set_rules('cargodescricao', 'cargodescricao', 'trim|required|xss_clean');

        if ($this->form_validation->run() == false) {
            $this->data['custom_error'] = (validation_errors() ? '<div class="form_error">' . validation_errors() . '</div>' : false);

        } else {

            $cargodescricao = $this->input->post('cargodescricao');

            $cargoprioridade = $this->input->post('cargoprioridade');

            $data = array(
                'cargodescricao' => $cargodescricao,

                'cargoprioridade' => $cargoprioridade,

                'userinsert' => $this->session->userdata('id'),

                'dateinsert' => date('Y-m-d H:i:s'),
            );

            if ($this->cargos_model->add('cargo', $data) == TRUE) {

                $this->session->set_flashdata('success', 'Cargo adicionado com sucesso!');
                redirect(base_url() . 'index.php/cargos/adicionar/');
            } else {
                $this->data['custom_error'] = '<div class="form_error"><p>Ocorreu um erro.</p></div>';
            }
        }

        $this->data['view'] = 'cargos/adicionarCargo';
        $this->load->view('tema/topo', $this->data);

    }

    function editar() {

        if(!$this->uri->segment(3) || !is_numeric($this->uri->segment(3))){
            $this->session->set_flashdata('error','Item não pode ser encontrado, parâmetro não foi passado corretamente.');
            redirect('sistema');
        }

        $this->load->library('form_validation');

        $this->data['custom_error'] = '';

        $this->form_validation->set_rules('cargodescricao','cargodescricao', 'trim|required|xss_clean');

        if ($this->form_validation->run() == false) {

            $this->data['custom_error'] = (validation_errors() ? '<div class="form_error">' . validation_errors() . '</div>' : false);

        } else {

            $cargodescricao = $this->input->post('cargodescricao');

            $cargoprioridade = $this->input->post('cargoprioridade');


            $data = array(
                'cargodescricao' => $cargodescricao,
                'cargoprioridade' => $cargoprioridade,
                'userupdate' => $this->session->userdata('id'),
                'dateupdate' => date('Y-m-d H:i:s'),
            );

            if ($this->cargos_model->edit('cargo', $data, 'id', $this->input->post('id')) == TRUE) {
                $this->session->set_flashdata('success', 'O cargo foi editado com sucesso!');
                redirect(base_url() . 'index.php/cargos/editar/'.$this->input->post('id'));
            } else {
                $this->data['custom_error'] = '<div class="form_error"><p>Ocorreu um errro.</p></div>';
            }
        }

        $this->data['result'] = $this->cargos_model->getById($this->uri->segment(3));

        $this->data['view'] = 'cargos/editarCargo';
        $this->load->view('tema/topo', $this->data);

    }


    function excluir()
    {

        if (!$this->permission->checkPermission($this->session->userdata('permissao'), 'dDepartamentos')) {
            $this->session->set_flashdata('error', 'Você não tem permissão para excluir este cargo.');
            redirect(base_url());
        }


        $id =  $this->input->post('id');
        if ($id == null) {

            $this->session->set_flashdata('error', 'Erro ao tentar excluir tipo de empresa.');
            redirect(base_url().'index.php/cargos/gerenciar/');
        }

        $this->cargos_model->delete('cargo','id', $id);


        $this->session->set_flashdata('success', 'Cargo excluido com sucesso!');
        redirect(base_url().'index.php/cargos/gerenciar/');
    }
}