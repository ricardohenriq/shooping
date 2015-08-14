<div class="modal fade" id="add_banner_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center" id="myModalLabel"><span class="title">Adicionar novo Banner</span></h4>
            </div>
            <div class="modal-body">
                <p>
                    Seu site deve seguir nossas Regras, por favor leia nossos
                    <?= $this->Html->link('Termos de Serviços','/termos-de-servico', ['class' => 'btn btn-xs btn-info', 'target' => '_blank']) ?>
                    <?= $this->Html->link('Politicas de Privacidade','/politicas-de-privacidade', ['class' => 'btn btn-xs btn-info', 'target' => '_blank']) ?>
                    <br>Submeta o Link Completo de Redirecionamento quando o Banner for clicado seguindo o exemplo:
                    (http://www.site.com/banner.gif)
                    <br><br>
                </p>
                <?= $this->Form->create(null, ['url' => ['controller' => 'Banners', 'action' => 'add'], 'type' => 'file', 'id' => 'add-banner-form', 'class' => 'form-horizontal']) ?>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="link" class="control-label col-md-3">Link de Redirecionamento</label>
                            <div class="col-md-9">
                                <?= $this->Form->input('link', ['label' => false, 'id' => 'link', 'class' => 'form-control']) ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="link" class="control-label col-md-3">Arquivo do Banner</label>
                            <div class="col-md-9">
                                <?= $this->Form->file('banner',['class' => 'form-control', 'id' => 'banner']) ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="title" class="control-label col-md-3">Título</label>
                            <div class="col-md-9">
                                <?= $this->Form->input('title', ['label' => false, 'id' => 'title', 'class' => 'form-control']) ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="country" class="control-label col-md-3">Geo Targeting</label>
                            <div class="col-md-9">
                                <?= $this->Form->select('country', ['all' => 'All (WorldWide)'], ['class' => 'form-control country']) ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="show-times" class="control-label col-md-3">Exibir</label>
                            <div class="col-md-3">
                                <?= $this->Form->input('show-times', ['label' => false, 'id' => 'show-times', 'class' => 'form-control']) ?>
                            </div>
                            <div class="col-md-6">
                                Vezes por dia (Se você colocar um valor acima da quantidade de
                                créditos que tem, o seu banner será exibido até o seu limite de créditos)
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="show-user" class="control-label col-md-3">Exibir para mesmo Usuário</label>
                            <div class="col-md-3">
                                <?= $this->Form->input('show-user', ['label' => false, 'id' => 'show-user', 'class' => 'form-control']) ?>
                            </div>
                            <div class="col-md-6">
                                Esta é a quantidade de vezes que o banner será exibido para o mesmo
                                usuário, é comum que este valor seja maior do que 10.
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Dias da Semana</label>
                            <div class="col-md-2">
                                <div class="checkbox">
                                    <label for="sunday">
                                        <input type="checkbox" name="weekdays[]" id="sunday" value="1">
                                        Domingo
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label for="monday">
                                        <input type="checkbox" name="weekdays[]" id="monday" value="2">
                                        Segunda
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label for="tuesday">
                                        <input type="checkbox" name="weekdays[]" id="tuesday" value="3">
                                        Terça
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="checkbox">
                                    <label for="wednesday">
                                        <input type="checkbox" name="weekdays[]" id="wednesday" value="4">
                                        Quarta
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label for="thursday">
                                        <input type="checkbox" name="weekdays[]" id="thursday" value="5">
                                        Quinta
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label for="friday">
                                        <input type="checkbox" name="weekdays[]" id="friday" value="6">
                                        Sexta
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label for="saturday">
                                        <input type="checkbox" name="weekdays[]" id="saturday" value="7">
                                        Sabado
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                Selecione os dias da semana em que seu Banner deve ser mostrado.
                            </div>
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <div class="col-md-6 col-md-offset-3">
                            <?= $this->Form->button('Reset', ['type' => 'reset', 'class' => 'btn btn-danger']) ?>
                            <?= $this->Form->button('Adicionar', ['type' => 'submit', 'class' => 'btn btn-info']) ?>
                        </div>
                    </div>
                <?= $this->Form->end() ?>
            </div>
        </div>
    </div>
</div>