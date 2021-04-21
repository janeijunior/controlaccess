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
                Editar Tipo de empresa
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <form action="<?php echo current_url(); ?>" id="formAcessorios" method="post"  >
                            <div class="form-group">
                                <label>Nome:</label>
                                <?php echo form_hidden('id',$result->id) ?>
                                <input  class="form-control" id="nome" type="text" name="tipopessoajuridicadescricao" value="<?php echo $result->tipopessoajuridicadescricao; ?>"  />
                                <p class="help-block">Insira somente o nome do tipo de empresa.</p>
                            </div>


                            <a href="<?php echo base_url() ?>index.php/tipoempresa" class="btn btn-info"><i class="icon-plus icon-white"></i> Voltar</a>
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
                tipopessoajuridicadescricao: { required: true},

            },
            messages:{
                tipopessoajuridicadescricao: { required: 'Campo Requerido.'},
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
