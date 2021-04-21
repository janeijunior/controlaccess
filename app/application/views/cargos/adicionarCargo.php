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
        <?php echo $custom_error; ?>
        <div class="panel panel-default">

            <div class="panel-heading">
                Cadastro de Cargo
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <form action="<?php echo current_url(); ?>" id="formCargo" method="post"  >
                            <div class="form-group">
                                <label>Nome:</label>

                                <input  class="form-control" id="descricao" type="text" name="cargodescricao" value="<?php echo set_value('cargodescricao'); ?>"  />
                                <p class="help-block">Insira somente o nome do cargo.</p>
                            </div>
                            <div class="input-group">
                                <label>Prioridade:</label>
                                <select class="form-control" name="cargoprioridade" id="cargoprioridade">

                                    <option value="1">Alta</option>
                                    <option value="2">Media</option>
                                    <option value="3">Baixa</option>
                                </select>
                                <p class="help-block">Insira o Nivel de Prioridade no Condomínio.</p>
                            </div>
                            <br>
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

        $('#formTipoempresa').validate({
            rules :{
                cargodescricao: { required: true},
                cargoprioridade: { required: true},

            },
            messages:{
                cargodescricao: { required: 'Campo Requerido.'},
                cargoprioridade: { required: 'Campo Requerido.'},
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
