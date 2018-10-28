<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use dosamigos\ckeditor\CKEditor;

use app\models\Kategori;

/* @var $this yii\web\View */
/* @var $model app\models\Artikel */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="artikel-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'judul')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'konten')->widget(CKEditor::className(), [
        'options' => ['rows' => 3],
        'preset' => 'basic'
    ]) ?>

    <?php
    $kategoris = Kategori::find()->select('name')->indexBy('id')->column();
    echo $form->field($model, 'kategori_id')->widget(Select2::classname(), [
        'data' => $kategoris,
    ]);?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
