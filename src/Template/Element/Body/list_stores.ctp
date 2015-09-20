<div class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title span7 text-center title">Lista de Lojas em seu Nome</h3>
        </div>
        <div class="panel-body overflow">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th><?= __('Núm.') ?></th>
                    <th><?= __('Núm.Log') ?></th>
                    <th><?= __('Criada') ?></th>
                    <th><?= __('Modificada') ?></th>
                    <th><?= __('Tipo') ?></th>
                    <th><?= __('Descrição') ?></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>31212</td>
                    <td>19:12</td>
                    <td>11/01/2015</td>
                    <td>Clicks</td>
                    <td>O Banner "adsx" da empresa "juicyads" teve 120 clicks no dia 12/12/2015</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>31212</td>
                    <td>19:12</td>
                    <td>11/01/2015</td>
                    <td>Clicks</td>
                    <td>O Banner "adsx" da empresa "juicyads" foi clicado na pagina "videos.com/blonde" na hora 19:21 no dia 12/12/2015</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>31212</td>
                    <td>19:12</td>
                    <td>11/01/2015</td>
                    <td>Clicks</td>
                    <td>O Banner "adsx" do usuario "billGAtes" teve 120 clicks no dia 12/12/2015</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>31212</td>
                    <td>19:12</td>
                    <td>11/01/2015</td>
                    <td>Compra</td>
                    <td>O usuario "bill" comprou 120 clicks em banners 300x300 no dia 12/12/2015 as 13:00 id "123saf"</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>31212</td>
                    <td>19:12</td>
                    <td>11/01/2015</td>
                    <td>Confirmacao</td>
                    <td>Compra com id "123saf" completada as 12:02 no dia 12/12/2015</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>31212</td>
                    <td>19:12</td>
                    <td>11/01/2015</td>
                    <td>Malicious</td>
                    <td>Identificada atividade suspeita (clicks massivos) do ip "192.0.0.0" as 12:02 no dia 12/12/2015</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>31212</td>
                    <td>19:12</td>
                    <td>11/01/2015</td>
                    <td>Attribution</td>
                    <td>Atribuido 100 clicks ao banner "xyx" do usuario "bill"</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>31212</td>
                    <td>19:12</td>
                    <td>11/01/2015</td>
                    <td>Banned</td>
                    <td>Banner "xyx" do usuario "bill" foi retirado de exibição por violar nossos Termos de Serviços (TOS)</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="panel-footer span7 text-center">
            <?= $this->Html->link('Mais dúvidas? Envie-nos um Email',['controller' => 'Pages', 'action' => 'display', 'email']) ?>
        </div>
    </div>
</div>