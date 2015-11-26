<div class="col-md-9" id="edit-store">
    <div class="panel panel-default">
        <div class="panel-heading">
            <button type="button" class="btn btn-primary btn-xs pull-right" data-toggle="modal" data-target="#add-product-modal" id="add-product-button">Novas imagens</button>
            <h3 class="panel-title span7 text-center title">Loja #1</h3>
        </div>
        <div class="panel-body">
            <div class="products-images">
                <div class="product-slider">
                    <div class="view view-first">
                        <img src="http://localhost/PROJETOS/ShoppingResources/stores/loja-1/loja-1-1.jpg" class="product-pic">
                        <div class="mask">
                            <h2>Imagem Secundária</h2>

                            <a href="#" class="btn btn-success" title="Deixar imagem como Primária" id=""><span class="glyphicon glyphicon-star"></span></a>

                            <?= $this->Form->postLink('<span class="glyphicon glyphicon-trash"></span>',
                            ['controller' => '', 'action' => '', 0],
                            ['class' => 'btn btn-danger', 'title' => 'Deletar esta Foto', 'escape' => false,
                            'confirm' => __('Você deseja realmente deletar o Produto: #{0}?',
                            0)]) ?>
                        </div>
                    </div>
                    <div class="view view-first">
                        <img src="http://localhost/PROJETOS/ShoppingResources/stores/loja-1/loja-1-2.jpg" class="product-pic main-product-picture">
                        <div class="mask">
                            <h2>Imagem Primária</h2>

                            <a href="#" class="btn btn-success" title="" id=""><span class="glyphicon glyphicon-star"></span></a>

                            <?= $this->Form->postLink('<span class="glyphicon glyphicon-trash"></span>',
                            ['controller' => '', 'action' => '', 0],
                            ['class' => 'btn btn-danger', 'title' => 'Deletar esta Foto', 'escape' => false,
                            'confirm' => __('Você deseja realmente deletar o Produto: #{0}?',
                            0)]) ?>
                        </div>
                    </div>
                    <div class="view view-first">
                        <img src="http://localhost/PROJETOS/ShoppingResources/stores/loja-1/loja-1-3.jpg" class="product-pic">
                        <div class="mask">
                            <h2>Imagem secundária</h2>

                            <a href="#" class="btn btn-success" title="Deixar imagem como Primária" id=""><span class="glyphicon glyphicon-star"></span></a>

                            <?= $this->Form->postLink('<span class="glyphicon glyphicon-trash"></span>',
                            ['controller' => '', 'action' => '', 0],
                            ['class' => 'btn btn-danger', 'title' => 'Deletar esta Foto', 'escape' => false,
                            'confirm' => __('Você deseja realmente deletar o Produto: #{0}?',
                            0)]) ?>
                        </div>
                    </div>
                    <div class="view view-first">
                        <img src="http://localhost/PROJETOS/ShoppingResources/stores/loja-1/loja-1-4.jpg" class="product-pic">
                        <div class="mask">
                            <h2>Imagem secundária</h2>

                            <a href="#" class="btn btn-success" title="Deixar imagem como Primária" id=""><span class="glyphicon glyphicon-star"></span></a>

                            <?= $this->Form->postLink('<span class="glyphicon glyphicon-trash"></span>',
                            ['controller' => '', 'action' => '', 0],
                            ['class' => 'btn btn-danger', 'title' => 'Deletar esta Foto', 'escape' => false,
                            'confirm' => __('Você deseja realmente deletar o Produto: #{0}?',
                            0)]) ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-description">
                <h4><i class="fa fa-commenting"></i> Descrição</h4>
                <textarea rows="6" class="product-description" name="" id="">
                    Fone sem fio com entrada para Cart├úo Micro SD igual ao usado para mem├│ria de celular, basta conectar o cart├úo com suas m├║sicas preferidas
                    e sair praticando o seu esporte predileto. N├úo ├® necess├írio nenhum acess├│rio ou cabo. Mais mobilidade e liberdade para ir onde desejar N├úo
                    se incomode com fios ou aparelhos. Detalhes ? Para carregar basta conectar o cabo USB ao seu aparelho, Mobilidade e prazer ao praticar o
                    seu esporte preferido, e para momentos de descontra├º├úo. MP3 Port├ítil em Formato de Fone de Ouvido Sem Fio Cabo USB 2.0 Conte├║do da caixa?
                    1 Fone De Ouvido Sem Fio C2 Sport Mp3 Player Entrada Cart├úo Sd ? preto + Cabo USB Especifica├º├Áes t├®cnicas ? Formatos de ├íudio: Mp3 , WMA,
                    WAV Cart├úo Micro SD (N├úo Acompanha) Ru├¡do: 86dB Frequ├¬ncia: 20HZ / 20KHZ Bateria: LiPo battery
                </textarea>
            </div>
            <div class="comercial-information">
                <h4><i class="fa fa-bar-chart"></i> Informações Comerciais</h4>
                <table style="width:100%" class="table table-striped">
                    <tbody>
                        <tr>
                            <td>
                                Acessado:
                            </td>
                            <td>
                                320 Vezes
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Produtos vendidos:
                            </td>
                            <td>
                                130 Unidades
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Produtos Reservados (se encerram em 7 dias)
                            </td>
                            <td>
                                14
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Quantidade de produtos diferentes
                            </td>
                            <td>
                                145
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="span7 text-center">
                <button id="" name="" class="btn btn-info">Editar</button>
            </div>
        </div>
        <div class="panel-footer span7 text-center">
            <?= $this->Html->link('Alguma dúvida? Envie-nos um Email',['controller' => 'Pages', 'action' => 'display', 'email']) ?>
        </div>
    </div>
</div>