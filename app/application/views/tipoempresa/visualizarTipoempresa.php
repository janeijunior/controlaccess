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

        <div class="panel panel-default">

            <div class="panel-heading">
                Visualizar Tipo de Empresa
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <fieldset disabled>
                            <div class="form-group">
                                <label for="disabledSelect">ID</label>
                                <input class="form-control" id="disabledInput" type="text"  value="<?php echo $result->id ?>"  disabled>
                            </div>
                            <div class="form-group">
                                <label for="disabledSelect">Nome:</label>
                                <input class="form-control" id="disabledInput" type="text" value="<?php echo $result->tipopessoajuridicadescricao; ?>"  disabled>
                            </div>

                        </fieldset>
                        <a href="<?php echo base_url() ?>index.php/tipoempresa" class="btn btn-info"><i class="icon-plus icon-white"></i> Voltar</a>


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

