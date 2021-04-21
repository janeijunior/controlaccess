<!--
        /******************************************
         * Created by PhpStorm.                   *
         * User:  Janei Araujo de Moura Junior    *
         * Email: jaraujo.php@gmail.com           *
         * Function:  Web Developer               *
         * Date:  12/09/2019                      *
         * Time:  00:47                           *
         * Copyright © 2018 All rights reserved.  *
         ******************************************/

-->
<div class="row">
    <div class="col-lg-12">

        <div class="panel panel-default">

            <div class="panel-heading">
                Visualizar Cargo
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
                                <input class="form-control" id="disabledInput" type="text" value="<?php echo $result->cargodescricao; ?>"  disabled>
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

                        </fieldset>
                        <a href="<?php echo base_url() ?>index.php/cargos" class="btn btn-info"><i class="icon-plus icon-white"></i> Voltar</a>


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

