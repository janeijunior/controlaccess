<!--
/**
 * Created by:
 * User:    Janei araujo de Moura Junior
 * Email:   janei.junior@gmail.com
 * Date: 15/10/2018
 * Time: 00:47
 */
-->
<div class="row">
    <div class="col-lg-12">

        <div class="panel panel-default">

            <div class="panel-heading">
                Visualizar País
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
                                <input class="form-control" id="disabledInput" type="text" value="<?php echo $result->paisnome; ?>"  disabled>
                            </div>
                            <div class="form-group">
                                <label for="disabledSelect">Nome:</label>
                                <input class="form-control" id="disabledInput" type="text" value="<?php echo $result->paissigla; ?>"  disabled>
                            </div>
                            <div class="form-group">
                                <label for="disabledSelect">Nome:</label>
                                <input class="form-control" id="disabledInput" type="text" value="<?php echo $result->paisnacionalidade; ?>"  disabled>
                            </div>
                            <div class="form-group">
                                <label  for="disabledSelect">Situação:</label>
                                <div class="control">
                                    <select id="disabledSelect" class="form-control">
                                        <?php if($result->situacao == 1){$ativo = 'selected'; $inativo = '';} else{$ativo = ''; $inativo = 'selected';} ?>
                                        <option value="1" <?php echo $ativo; ?>>Ativo</option>
                                        <option value="0" <?php echo $inativo; ?>>Inativo</option>
                                    </select>
                                </div>
                            </div>


                        </fieldset>
                        <a href="<?php echo base_url() ?>index.php/paises" class="btn btn-danger"><i class="icon-plus icon-white"></i> Voltar</a>


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

