<div id="product-features" class="col-md-12">
    <h4><i class="fa fa-cog"></i> Informações Técnicas</h4>
    <table style="width:100%" class="table table-striped">
        <?php foreach ($product['product_features'] as $index => $productFeatures): ?>
            <tr>
                <td>
                    <?= ($product['features'][$index]['feature_name']) ?>
                </td>
                <td>
                    <?= ($productFeatures['feature_value']) ?>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>
</div>