<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Sektor */

$this->title = 'Update Sektor';
$this->params['breadcrumbs'][] = ['label' => 'Sektor', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="sektor-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
