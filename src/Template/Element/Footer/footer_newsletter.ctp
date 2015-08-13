<?= $this->Form->create(null, ['url' => ['controller' => 'Subscribers', 'action' => 'add'], 'type' => 'post', 'class' => 'form-inline']) ?>
    <div id="newsletter" class="col-lg-10 col-lg-offset-1 span7 text-center">
        <div class="col-md-3">
            <label for="email" class="control-label full-column">Newsletter</label>
        </div>
        <div class="col-md-6">
            <?= $this->Form->input('email', ['label' => false, 'class' => 'form-control full-column', 'placeholder' => 'Email']) ?>
        </div>
        <div class="col-md-3">
            <?= $this->Form->button('Enviar', ['type' => 'submit', 'class' => 'btn btn-info full-column']) ?>
        </div>
    </div>
<?= $this->Form->end() ?>

