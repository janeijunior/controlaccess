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
                Cadastro de País
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <form action="<?php echo current_url(); ?>" id="formPais" method="post"  >
                            <div class="form-group">
                                <label>Nome:</label>

                                <input  class="form-control" id="descricao" type="text" name="paisnome" value="<?php echo set_value('paisnome'); ?>"  />
                                <p class="help-block">Insira o nome do país. Ex:(Brasil)</p>
                            </div>
                            <div class="form-group">
                                <label>Sigla:</label>

                                <input  class="form-control" id="descricao" type="text" name="paissigla" value="<?php echo set_value('paissigla'); ?>"  />
                                <p class="help-block">Insira somente a sigla do país. Ex:(BRA)</p>
                            </div>
                            <div class="form-group">
                                <label>Nacionalidade:</label>

                                <input  class="form-control" id="descricao" type="text" name="paisnacionalidade" value="<?php echo set_value('paisnacionalidade'); ?>"  />
                                <p class="help-block">Ex:(BRASILEIRA)</p>
                            </div>
                            <br>
                            <a href="<?php echo base_url() ?>index.php/paises" class="btn btn-danger"><i class="icon-plus icon-white"></i> Voltar</a>
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
