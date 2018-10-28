<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Produkkelembagaan */

$this->title = 'Update Produk Kelembagaan';
$this->params['breadcrumbs'][] = ['label' => 'Produk Kelembagaan', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="produkkelembagaan-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
