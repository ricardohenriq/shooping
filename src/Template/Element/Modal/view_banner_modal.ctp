<div class="modal fade" id="view_banner_modal" tabindex="-1" role="dialog" aria-labelledby="banner-name-modal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title span7 text-center title" id="banner-name-modal"></h4>
            </div>
            <div class="modal-body">
                <?= $this->Html->image('/img/loader.gif', ['title' => 'Arguarde o Download das Informações',
                'id' => 'banner-pic-modal', 'class' => 'picture-left']) ?>
                <p id="banner-info"class="banner-information">
                    <span class="title">Banner ID: </span><span id="banner-id-modal"></span><br>
                    <span class="title">Tipo do Banner: </span><span id="banner-type-modal"></span><br>
                    <span class="title">URL de Redirecionamento: </span><span id="banner-url-redirect-modal"></span><br>
                    <span class="title">Adicionado em: </span><span id="banner-created-modal"></span><br>
                    <span class="title">Ultima modificação em: </span><span id="banner-modified-modal"></span><br>
                    <span class="title">Clicado: </span><span id="banner-clicks-modal"></span><br>
                </p>
                <p class="summary">
                    <span class="title">Descrição: </span><span id="banner-description-modal"></span>
                </p>
            </div>
        </div>
    </div>
</div>