<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Biodatamajelis */

$this->title = 'Update Data';
$this->params['breadcrumbs'][] = ['label' => 'Biodata Majelis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="biodatamajelis-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
