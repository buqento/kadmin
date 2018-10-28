<?php
use dosamigos\chartjs\ChartJs;
$this->title = '';
?>
<div class="site-index">

    <div class="body-content">

        <div class="row">
            <div class="col-lg-8">
                <h2>Grafik Pertumbuhan</h2>
                <?php

                $dL = "$r031,$r461,$r791,$r10121,$r13151,$r17451,$r46591,$r60851,$r861201";
                $rL = explode(",",$dL);

                $dP = "$r032,$r462,$r792,$r10122,$r13152,$r17452,$r46592,$r60852,$r861202";
                $rP = explode(",",$dP);

                ?>

                <?= ChartJs::widget([
                    'type' => 'bar',
                    'options' => [
                        'height' => 227,
                        'width' => 400
                    ],
                    'data' => [
                        'labels' => ['0-3', '4-6', '7-9', '10-12', '13-15', '17-45', '46-59', '60-85', '> 86'],
                        'datasets' => [
                            [
                                'label' => "Laki-laki",
                                'backgroundColor' => "#607D8B",
                                'borderColor' => "#ECEFF1",
                                'pointBackgroundColor' => "rgba(179,181,198,1)",
                                'pointBorderColor' => "#fff",
                                'pointHoverBackgroundColor' => "#fff",
                                'pointHoverBorderColor' => "rgba(179,181,198,1)",
                                'data' => $rL
                            ],

                            [
                                'label' => "Perempuan",
                                'backgroundColor' => "#E91E63",
                                'borderColor' => "#FCE4EC",
                                'pointBackgroundColor' => "rgba(179,181,198,1)",
                                'pointBorderColor' => "#fff",
                                'pointHoverBackgroundColor' => "#fff",
                                'pointHoverBorderColor' => "rgba(179,181,198,1)",
                                'data' => $rP
                            ],
                        ]
                    ]
                ]);
                ?>

                <h3><?= $infoUnit ?></h3>
                <?php
                
                $dLdetail = "$r031_111,$r461_111,$r791_111,$r10121_111,$r13151_111,$r17451_111,$r46591_111,$r60851_111,$r861201_111";
                $rLdetail = explode(",",$dLdetail);
                $dPdetail = "$r032_111,$r462_111,$r792_111,$r10122_111,$r13152_111,$r17452_111,$r46592_111,$r60852_111,$r861202_111";
                $rPdetail = explode(",",$dPdetail);

                ?>

                <?= ChartJs::widget([
                    'type' => 'bar',
                    'options' => [
                        'height' => 227,
                        'width' => 400
                    ],
                    'data' => [
                        'labels' => ['0-3', '4-6', '7-9', '10-12', '13-15', '17-45', '46-59', '60-85', '> 86'],
                        'datasets' => [
                            [
                                'label' => "Laki-laki",
                                'backgroundColor' => "#CFD8DC",
                                'borderColor' => "#ECEFF1",
                                'pointBackgroundColor' => "rgba(179,181,198,1)",
                                'pointBorderColor' => "#fff",
                                'pointHoverBackgroundColor' => "#fff",
                                'pointHoverBorderColor' => "rgba(179,181,198,1)",
                                'data' => $rLdetail
                            ],

                            [
                                'label' => "Perempuan",
                                'backgroundColor' => "#F8BBD0",
                                'borderColor' => "#FCE4EC",
                                'pointBackgroundColor' => "rgba(179,181,198,1)",
                                'pointBorderColor' => "#fff",
                                'pointHoverBackgroundColor' => "#fff",
                                'pointHoverBorderColor' => "rgba(179,181,198,1)",
                                'data' => $rPdetail
                            ],
                        ]
                    ]
                ]);
                ?>



            </div>
            <div class="col-lg-4">

<!-- .bg-red,
.bg-yellow,
.bg-aqua,
.bg-blue,
.bg-light-blue,
.bg-green,
.bg-navy,
.bg-teal,
.bg-olive,
.bg-lime,
.bg-orange,
.bg-fuchsia,
.bg-purple,
.bg-maroon,
.bg-black,
.bg-red-active,
.bg-yellow-active,
.bg-aqua-active,
.bg-blue-active,
.bg-light-blue-active,
.bg-green-active,
.bg-navy-active,
.bg-teal-active,
.bg-olive-active,
.bg-lime-active,
.bg-orange-active,
.bg-fuchsia-active,
.bg-purple-active,
.bg-maroon-active,
.bg-black-active,
 -->

                <!-- Apply any bg-* class to to the info-box to color it -->
                <div class="info-box bg-lime-active">
                  <span class="info-box-icon"><i class="fa fa-share-alt"></i></span>
                  <div class="info-box-content">
                    <span class="info-box-text">Jemaat</span>
                    <span class="info-box-number"><?= $jumlahJemaat ?></span>
                    <!-- The progress section is optional -->
                    <div class="progress">
                      <div class="progress-bar" style="width: <?php echo $jumlahJemaat?>%"></div>
                    </div>
                    <span class="progress-description">
                      Data 2018
                    </span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->

                <!-- Apply any bg-* class to to the info-box to color it -->
                <div class="info-box bg-aqua-active">
                  <span class="info-box-icon"><i class="fa fa-share-alt"></i></span>
                  <div class="info-box-content">
                    <span class="info-box-text">Unit Pelayanan</span>
                    <span class="info-box-number"><?= $jumlahUnit ?></span>
                    <!-- The progress section is optional -->
                    <div class="progress">
                      <div class="progress-bar" style="width: <?php echo $jumlahUnit?>%"></div>
                    </div>
                    <span class="progress-description">
                      Data 2018
                    </span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->

                <!-- Apply any bg-* class to to the info-box to color it -->
                <div class="info-box bg-orange-active">
                  <span class="info-box-icon"><i class="fa fa-heart-o"></i></span>
                  <div class="info-box-content">
                    <span class="info-box-text">Pelayan</span>
                    <span class="info-box-number"><?= $jumlahPelayan ?></span>
                    <!-- The progress section is optional -->
                    <div class="progress">
                      <div class="progress-bar" style="width: <?php echo $jumlahPelayan?>%"></div>
                    </div>
                    <span class="progress-description">
                      Data 2018
                    </span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->


                <!-- Apply any bg-* class to to the info-box to color it -->
                <div class="info-box bg-fuchsia-active">
                  <span class="info-box-icon"><i class="fa fa-group"></i></span>
                  <div class="info-box-content">
                    <span class="info-box-text">Jiwa</span>
                    <span class="info-box-number"><?= $jumlahJiwa ?></span>
                    <!-- The progress section is optional -->
                    <div class="progress">
                      <div class="progress-bar" style="width: <?php echo $jumlahJiwa?>%"></div>
                    </div>
                    <span class="progress-description">
                      Data 2018
                    </span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->

            </div>
        </div>

    </div>
</div>
