<div class="actions columns large-2 medium-3">
    <!-- String solta que representa o nome da sidebar -->
    <!-- Qual a função do "__" -->
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
            <!-- Cria um link HTML que é acessado via POST, necessita javascript,
              é criado um formulário -->
            <!-- Contem Texto do Link, uma ação(método) do controler e o parametro,
              e uma mensagem de confirmação (alert do javascript) -->
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $user->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $user->id)]
            )
        ?></li>
        <!-- Cria um Link comum em HTML -->
        <!-- Contem Texto do Link e uma ação(método) do controler -->
        <li><?= $this->Html->link(__('List Users'), ['action' => 'index']) ?></li>
        <!-- Cria um Link comum em HTML -->
        <!-- Contem Texto do Link, um controlador que será acionado e uma ação(método) do controler -->
        <li><?= $this->Html->link(__('List User Types'), ['controller' => 'UserTypes', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New User Type'), ['controller' => 'UserTypes', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Bookings'), ['controller' => 'Bookings', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Booking'), ['controller' => 'Bookings', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Stores'), ['controller' => 'Stores', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Store'), ['controller' => 'Stores', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="users form large-10 medium-9 columns">
    <!-- Irá criar um <form> com método POST com "onaction" apontando para propria página
     do controler (a página atual), o argumento "$user" é usado como forma de contexto,
     Neste contexto permite FormHelper trabalhar com resultados obtidos com a ORM Embutido
     todas as entradas que eu criar usará o contexto ativo -->
    <?= $this->Form->create($user) ?>
    <fieldset>
        <!-- String solta que representa o nome da legenda -->
        <legend><?= __('Edit User') ?></legend>
        <!-- Os campos irão ter as restrições do banco de dados -->
        <?php
            /* Cria um input com "type" email (descobriu porque o nome do campo da tabela
             é "email") */
            echo $this->Form->input('email');
            /* Cria um input com "type" password (descobriu porque o nome do campo da tabela
             é "password") */
            echo $this->Form->input('password');
            /* Cria um input com "type" text (descobriu porque a tabela é VARCHAR) */
            echo $this->Form->input('username');
            /* Cria um select com os valores de "$userTypes" passado via "set" do controller,
             com "'empty' => true" é criado uma opção vazia com value vazio  */
            echo $this->Form->input('user_type_id', ['options' => $userTypes, 'empty' => true]);
        ?>
    </fieldset>
    <!-- É criado um botão de submit (por padrão este é um botão de submit, com parametros
     opcionais é possivel defini-lo como "reset" ou botão normal) -->
    <?= $this->Form->button(__('Submit')) ?>
    <!-- Fecha o contexto (formulário) -->
    <?= $this->Form->end() ?>
</div>
