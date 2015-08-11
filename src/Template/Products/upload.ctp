<?php
echo $this->Form->create(null, array(
    'type' => 'file'
));
echo $this->Form->file('Media.file');
echo $this->Form->error('file');
echo $this->Form->submit(__('Upload'));
echo $this->Form->end();
?>