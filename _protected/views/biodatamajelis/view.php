<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Biodatamajelis */

$this->title = 'Detail Biodata Majelis';
$this->params['breadcrumbs'][] = ['label' => 'Biodata Majelis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="biodatamajelis-view">
    <div class="col-md-3">
        <img class="img-thumbnail" src="<?= $model->foto ?>">
    </div>
    <div class="col-md-9">
        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                // 'id',
                'nama',
                'tempat_lahir',
                'tanggal_lahir',
                'jabatan',
                'alamat',
                'telepon',
                'email:email',
                // 'foto:ntext',
                'pendidikan_id',
                'pekerjaan',
                'keterangan',
                'status_aktif',
                'created_at',
            ],
        ]) ?>
    </div>

</div>
