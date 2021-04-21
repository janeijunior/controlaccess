<?php
class Estados_model extends CI_Model {
    /******************************************
     * Created by PhpStorm.                   *
     * User:  Janei Araujo de Moura Junior    *
     * Email: jaraujo.php@gmail.com           *
     * Function:  Web Developer               *
     * Date:  17/03/2020                      *
     * Time:  17:52                           *
     * Copyright © 2018 All rights reserved.  *
     ******************************************/
    function __construct() {
        parent::__construct();
    }

    function get($perpage=0,$start=0,$one=false){

        $this->db->from('uf');
        $this->db->select('uf.*, pais.paisnome as pais');
        $this->db->limit($perpage,$start);
        $this->db->join('pais', 'uf.paisid_id = pais.id', 'left');

        $query = $this->db->get();

        $result =  !$one  ? $query->result() : $query->row();
        return $result;
    }

    function getActive($table,$fields){

        $this->db->select($fields);
        $this->db->from($table);
        $this->db->where('situacao',1);
        $query = $this->db->get();
        return $query->result();;
    }

    function getById($id){
        $this->db->where('id',$id);
        $this->db->limit(1);
        return $this->db->get('uf')->row();
    }

    function add($table,$data){
        $this->db->insert($table, $data);
        if ($this->db->affected_rows() == '1')
        {
            return TRUE;
        }

        return FALSE;
    }

    function edit($table,$data,$fieldID,$ID){
        $this->db->where($fieldID,$ID);
        $this->db->update($table, $data);

        if ($this->db->affected_rows() >= 0)
        {
            return TRUE;
        }

        return FALSE;
    }

    function delete($table,$fieldID,$ID){
        $this->db->where($fieldID,$ID);
        $this->db->delete($table);
        if ($this->db->affected_rows() == '1')
        {
            return TRUE;
        }

        return FALSE;
    }

    function count($table){
        return $this->db->count_all($table);
    }
}

/* End of file estados_model.php */
/* Location: ./application/models/estados_model.php */