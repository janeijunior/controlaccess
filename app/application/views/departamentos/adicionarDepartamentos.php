
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <?php echo $custom_error; ?>
        <div class="panel panel-default">

            <div class="panel-heading">
                Cadastro de Departamento
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <form action="<?php echo current_url(); ?>" id="formDepartamentos" method="post"  >
                            <div class="form-group">
                                <label>Nome:</label>

                                <input  class="form-control" id="descricao" type="text" name="departamentodescricao" value="<?php echo set_value('departamentodescricao'); ?>"  />
                                <p class="help-block">Insira somente o nome do Departamento.</p>
                            </div>

                            <a href="<?php echo base_url() ?>index.php/departamentos" class="btn btn-info"><i class="icon-plus icon-white"></i> Voltar</a>
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

        $('#formAcessorios').validate({
            rules :{
                departamentodescricao: { required: true},

            },
            messages:{
                departamentodescricao: { required: 'Campo Requerido.'},
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
