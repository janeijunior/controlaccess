<?php


/******************************************
 * Created by PhpStorm.                   *
 * User:  Janei Araujo de Moura Junior    *
 * Email: jaraujo.php@gmail.com           *
 * Function:  Web Developer               *
 * Date:  15/10/2018                      *
 * Time:  00:47                           *
 * Copyright © 2018 All rights reserved.  *
 ******************************************/



if(!$results){?>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Países
                    <div class="pull-right">
                        <div class="btn-group">
                            <?php if($this->permission->checkPermission($this->session->userdata('permissao'),'aDepartamentos')){ ?>
                                <a href="<?php echo base_url();?>index.php/paises/adicionar" class="btn btn-success btn-primary btn-xs"><i class=" icon-white"></i> Adicionar País</a>
                            <?php } ?>

                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Sigla</th>
                            <th>Nome</th>
                            <th>Nacionalidade</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td align="center" colspan="5">Nenhum Cargo Cadastrado</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
<?php } else{?>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Países
                    <div class="pull-right">
                        <div class="btn-group">
                            <?php if($this->permission->checkPermission($this->session->userdata('permissao'),'aPaises')){ ?>
                                <a href="<?php echo base_url();?>index.php/paises/adicionar" class="btn btn-success btn-primary btn-xs"><i class=" icon-white"></i> Adicionar País</a>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table width="100%" class="table table-bordered table-striped" id="dataTables-example">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Sigla</th>
                            <th>Nome</th>
                            <th>Nacionalidade</th>
                            <th>Ação</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($results as $r) {

                            echo '<tr>';
                            echo '<td align="center">'.$r->id.'</td>';
                            echo '<td>'.$r->paisnome.'</td>';
                            echo '<td>'.$r->paissigla.'</td>';
                            echo '<td>'.$r->paisnacionalidade.'</td>';


                            echo '<td>';
                            if($this->permission->checkPermission($this->session->userdata('permissao'),'vPaises')){
                                echo '<a style="margin-right: 1%" href="'.base_url().'index.php/paises/visualizar/'.$r->id.'" class="btn btn-primary btn-xs btn btn-info" title="Visualizar País"> <i class="fa fa-eye"></i></a>  ';
                            }
                            if($this->permission->checkPermission($this->session->userdata('permissao'),'ePaises')){
                                echo '<a style="margin-right: 2%" href="'.base_url().'index.php/paises/editar/'.$r->id.'" class="btn btn-primary btn-xs btn-warning" title="Editar País"> <i class="fa fa-pencil"></i></a>';
                            }
                            if($this->permission->checkPermission($this->session->userdata('permissao'),'dPaises')){
                                echo '<a style="margin-right: 2%" href="#modal-excluir" role="button" data-toggle="modal" pais="'.$r->id.'" class="btn btn-primary btn-xs btn btn-danger" title="Excluir País"> <i class="fa fa-remove"></i></a>';
                            }

                            echo '</td>';
                            echo '</tr>';
                        }?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
<?php } ?>
<div class="modal fade" id="modal-excluir" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form action="<?php echo base_url() ?>index.php/paises/excluir" method="post" >
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Excluir Pais</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>

                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="id" name="id" value="" />
                    <h5 style="text-align: center">Deseja realmente excluir este País?</h5>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
                    <button class="btn btn-danger">Excluir</button>
                </div>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    $(document).ready(function(){


        $(document).on('click', 'a', function(event) {

            var pais = $(this).attr('pais');
            $('#id').val(pais);

        });

    });

</script>







