


    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Cargos
                    <div class="pull-right">
                        <div class="btn-group">
                            <?php if($this->permission->checkPermission($this->session->userdata('permissao'),'aCargos')){ ?>
                                <a href="#modal-excluir" role="button" data-toggle="modal" class="btn btn-danger btn-primary btn-xs" title="Excluir Logs"><i class="icon-remove icon-white"></i> Remover Logs - 365 dias ou mais</a>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table class="table table-bordered table-striped" id="dataTables-example">
                        <thead>
                        <tr style="backgroud-color: #2D335B">
                            <th>ID</th>
                            <th>Usuário</th>
                            <th>Data</th>
                            <th>Hora</th>
                            <th>IP</th>
                            <th>Tarefa</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($results as $r) {
                            echo '<tr>';
                            echo '<td>' . $r->idLogs . '</td>';
                            echo '<td>' . $r->usuario . '</td>';
                            echo '<td>' . date('d/m/Y', strtotime($r->data)) . '</td>';
                            echo '<td>' . $r->hora . '</td>';
                            echo '<td>' . $r->ip . '</td>';
                            echo '<td>' . $r->tarefa . '</td>';
                            echo '</tr>';
                        } ?>
                        <?php if(!$results) { ?>
                            <tr>
                                <td colspan="5">Nenhum registro encontrado.</td>
                            </tr>
                        <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


</div>


<!-- Modal -->
<div id="modal-excluir" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form action="<?php echo site_url('auditoria/clean') ?>" method="post">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h5>Limpeza de Logs</h5>
        </div>
        <div class="modal-body">
            <h5 style="text-align: center">Deseja realmente remover os logs mais antigos?</h5>
        </div>
        <div class="modal-footer">
            <button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
            <button class="btn btn-danger">Excluir</button>
        </div>
            </div>
        </div>

    </form>
</div>