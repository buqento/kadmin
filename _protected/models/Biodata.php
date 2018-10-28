<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "biodata".
 *
 * @property int $id
 * @property string $nama
 * @property string $jenis_kelamin
 * @property string $tanggal_lahir
 * @property int $pendidikan_id
 * @property int $jemaat_id
 * @property int $sektor_id
 * @property int $unit_id
 * @property int $status_pernikahan
 * @property int $status_hidup
 * @property int $status_baptis
 * @property int $status_sidi
 * @property int $pekerjaan_id
 * @property string $created_at
 */
class Biodata extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'biodata';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama', 'jenis_kelamin', 'tanggal_lahir', 'pendidikan_id', 'alamat', 'cacat_id', 'jemaat_id', 'sektor_id', 'unit_id', 'status_pernikahan', 'status_hidup', 'status_baptis', 'status_sidi', 'pekerjaan_id'], 'required'],
            [['tanggal_lahir', 'created_at'], 'safe'],
            [['pendidikan_id', 'jemaat_id', 'sektor_id', 'unit_id', 'status_pernikahan', 'status_hidup', 'status_baptis', 'status_sidi', 'pekerjaan_id'], 'integer'],
            [['nama', 'jenis_kelamin'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nama' => 'Nama',
            'jenis_kelamin' => 'Jenis Kelamin',
            'tanggal_lahir' => 'Tanggal Lahir',
            'pendidikan_id' => 'Pendidikan Terakhir',
            'alamat' => 'Alamat',
            'cacat_id' => 'Cacat Tubuh',
            'jemaat_id' => 'Nama Jemaat',
            'sektor_id' => 'Nama Sektor',
            'unit_id' => 'Nama Unit',
            'status_pernikahan' => 'Status Pernikahan',
            'status_hidup' => 'Status Hidup',
            'status_baptis' => 'Status Baptis',
            'status_sidi' => 'Status Sidi',
            'pekerjaan_id' => 'Pekerjaan',
            'created_at' => 'Created At',
        ];
    }

    public function getPendidikan()
    {
        return $this->hasOne(Pendidikan::className(), ['id' => 'pendidikan_id']);
    }

    public function getCacat()
    {
        return $this->hasOne(Cacat::className(), ['id' => 'cacat_id']);
    }

    public function getPekerjaan()
    {
        return $this->hasOne(Pekerjaan::className(), ['id' => 'pekerjaan_id']);
    }

    public function getJemaat()
    {
        return $this->hasOne(Jemaat::className(), ['id' => 'jemaat_id']);
    }

    public function getSektor()
    {
        return $this->hasOne(Sektor::className(), ['id' => 'sektor_id']);
    }

    public function getUnit()
    {
        return $this->hasOne(Unit::className(), ['id' => 'unit_id']);
    }

}
