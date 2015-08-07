<div class="col-lg-4 col-lg-offset-6">
    <nav>
        <ul class="pagination">
            <?php if($qtdProducts > 0): ?>
                <?php if($pagina > 1): ?>
                    <li>
                        <a href=<?= $url ?>&page=<?= $previousNextPage['previousPage'] ?> aria-label='Previous'><span aria-hidden='true'>&laquo; Previous</span></a>&nbsp;&nbsp;
                    </li>
                <?php endif; ?>
                <?php for($i = 1; $i < $numPaginas + 1; $i++): ?>
                    <?php if($i == $pagina): ?>
                        <?php $ativa = ' class=\'active\' ' ?>
                    <?php else: ?>
                        <?php $ativa = '' ?>
                    <?php endif; ?>
                    <li <?= $ativa ?> >
                        <a href= <?= $url ?>&page=<?= $i ?>><?= $i ?></a>&nbsp;&nbsp;
                    </li>
                <?php endfor; ?>
                <?php if($pagina < $numPaginas): ?>
                    <li>
                        <a href=<?= $url ?>&page=<?= $previousNextPage['nextPage'] ?> aria-label='Next'><span aria-hidden='true'>Next &raquo;</span></a>&nbsp;&nbsp;
                    </li>
                <?php endif; ?>
            <?php endif; ?>
        </ul>
    </nav>
</div>