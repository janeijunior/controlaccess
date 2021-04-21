<!--
        /******************************************
         * Created by PhpStorm.                   *
         * User:  Janei Araujo de Moura Junior    *
         * Email: jaraujo.php@gmail.com           *
         * Function:  Web Developer               *
         * Date:  15/10/2018                      *
         * Time:  00:47                           *
         * Copyright © 2018 All rights reserved.  *
         ******************************************/
-->
<div class="row">
    <div class="col-lg-12">
        <?php if ($custom_error != '') {
            echo '<div class="alert alert-danger">' . $custom_error . '</div>';
        } ?>
        <div class="panel panel-default">

            <div class="panel-heading">
                Editar Cargo
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <form action="<?php echo current_url(); ?>" id="formCargo" method="post"  >

                            <div class="form-group">
                                <label >ID</label>
                                <?php echo form_hidden('id',$result->id) ?>
                                <input class="form-control"  type="text"  value="<?php echo $result->id ?>" disabled>
                            </div>
                            <div class="form-group">
                                <label >Nome:</label>
                                <input class="form-control"  type="text" name="cargodescricao" value="<?php echo $result->cargodescricao; ?>" >
                            </div>

                            <div class="input-group">
                                <label>Prioridade:</label>

                                <select class="form-control" name="cargoprioridade" id="cargoprioridade">
                                    <?php if ($result->cargoprioridade == 1) {
                                        $prioridade_alta = 'selected';
                                        $prioridade_media ='';
                                        $prioridade_baixa ='';
                                    }
                                    if ($result->cargoprioridade == 2) {
                                        $prioridade_alta = '';
                                        $prioridade_media ='selected';
                                        $prioridade_baixa ='';
                                    }
                                    if ($result->cargoprioridade == 3) {
                                        $prioridade_alta = '';
                                        $prioridade_media ='';
                                        $prioridade_baixa ='selected';
                                    }

                                    ?>
                                    <option value="1" <?php echo $prioridade_alta;?>>Alta</option>
                                    <option value="2" <?php echo $prioridade_media;?>>Média</option>
                                    <option value="2" <?php echo $prioridade_baixa;?>>Baixa</option>
                                </select>
                                <p class="help-block">Insira o Nivel de Prioridade no Condomínio.</p>
                            </div>


                            <a href="<?php echo base_url() ?>index.php/cargos" class="btn btn-info"><i class="icon-plus icon-white"></i> Voltar</a>
                            <button type="submit" class="btn btn-success"><i class="icon-plus icon-white"></i> Adicionar</button>
                        </form>
                    </div>
                    <!-- /.col-lg-6 (nested) -->

                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<script src="<?php echo base_url()?>js/jquery.validate.js"></script>
<script src="<?php echo base_url();?>js/maskmoney.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".money").maskMoney();

        $('#formCargo').validate({
            rules :{
                cargodescricao: { required: true},

            },
            messages:{
                cargodescricao: { required: 'Campo Requerido.'},
            },

            errorClass: "help-inline",
            errorElement: "span",
            highlight:function(element, errorClass, validClass) {
                $(element).parents('.control-group').addClass('error');
            },
            unhighlight: function(element, errorClass, validClass) {
                $(element).parents('.control-group').removeClass('error');
                $(element).parents('.control-group').addClass('success');
            }
        });
    });
</script>
