<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Jemaat */

$this->title = 'Detail Jemaat';
$this->params['breadcrumbs'][] = ['label' => 'Jemaat', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="jemaat-view">

    <div class="col-md-3">
        <img class="img-thumbnail" src="<?= $model->gambar ?>">
    </div>
    <div class="col-md-9">
        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                // 'id',
                'nama_jemaat',
                'nama_gereja',
                'alamat',
                'telepon',
                'email:email',
                // 'gambar:ntext',
                // 'created_at',
            ],
        ]) ?>
    </div>

</div>
