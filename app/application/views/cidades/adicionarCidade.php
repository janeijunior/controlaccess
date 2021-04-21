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
                Cadastro de Estado
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <form action="<?php echo current_url(); ?>" id="formEstado" method="post"  >
                            <div class="form-group">
                                <label>Nome:</label>

                                <input  class="form-control" id="descricao" type="text" name="ufnome" value="<?php echo set_value('ufnome'); ?>"  />
                                <p class="help-block">Insira o nome do estado. Ex:(Rio de Janeiro)</p>
                            </div>
                            <div class="form-group">
                                <label>Sigla:</label>

                                <input  class="form-control " id="descricao" type="text" name="ufsigla" value="<?php echo set_value('ufsigla'); ?>"  />
                                <p class="help-block">Insira somente a sigla do estado. Ex:(RJ)</p>
                            </div>
                            <div class="input-group ">

                                <select class="form-control" name="paisid_id" id="paisid_id">
                                    <?php foreach ($pais as $pais) {
                                        echo '<option value="'.$pais->id.'">'.$pais->paisnome.'</option>';
                                    } ?>
                                </select>
                                <span class="input-group-btn">
                                <button type="button" class="btn btn-danger btn-plus glyphicon-plus"></button>
                                </span>

                            </div>


                            <br>
                            <br>
                            <a href="<?php echo base_url() ?>index.php/estados" class="btn btn-info"><i class="icon-plus icon-white"></i> Voltar</a>
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
                paisnome: { required: true},
                paissigla: { required: true},
                paisnacionalidade: { required: true},

            },
            messages:{
                paisnome: { required: 'Campo Requerido.'},
                paissigla: { required: 'Campo Requerido.'},
                paisnacionalidade: { required: 'Campo Requerido.'},
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
