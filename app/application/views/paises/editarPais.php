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
                Editar Pais
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <form action="<?php echo current_url(); ?>" id="formPais" method="post"  >
                            <div class="form-group">
                                <label >ID</label>
                                <?php echo form_hidden('id',$result->id) ?>
                                <input class="form-control"  type="text" value="<?php echo $result->id ?>" disabled>
                            </div>
                            <div class="form-group">
                                <label>Nome:</label>
                                <input  class="form-control" id="descricao" type="text" name="paisnome" value="<?php echo $result->paisnome ?>"  />
                                <p class="help-block">Insira o nome do país. Ex:(Brasil)</p>
                            </div>
                            <div class="form-group">
                                <label>Sigla:</label>
                                <input  class="form-control" id="descricao" type="text" name="paissigla" value="<?php echo $result->paissigla ?>"  />
                                <p class="help-block">Insira somente a sigla do país. Ex:(BRA)</p>
                            </div>
                            <div class="form-group">
                                <label>Nacionalidade:</label>
                                <input  class="form-control" id="descricao" type="text" name="paisnacionalidade" value="<?php echo $result->paisnacionalidade ?>"  />
                                <p class="help-block">Ex:(BRASILEIRA)</p>
                            </div>
                            <div class="form-group">
                                <label  class="control-label">Situação:</label>
                                <div class="control">
                                    <select class="form-control" name="situacao" id="situacao">
                                        <?php if($result->situacao == 1){$ativo = 'selected'; $inativo = '';} else{$ativo = ''; $inativo = 'selected';} ?>
                                        <option value="1" <?php echo $ativo; ?>>Ativo</option>
                                        <option value="0" <?php echo $inativo; ?>>Inativo</option>
                                    </select>
                                </div>
                            </div>

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
