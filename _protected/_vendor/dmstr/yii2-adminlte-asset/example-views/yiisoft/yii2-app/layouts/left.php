<aside class="main-sidebar">

    <section class="sidebar">

        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    ['label' => 'Dashboard', 'icon' => 'dashboard', 'url' => ['/site']],
                    // ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],

                    //ARTIKEL
                    ['label' => 'Artikel', 'icon' => 'circle-o', 'url' => ['/artikel']],

                    //EVENT
                    ['label' => 'Event', 'icon' => 'circle-o', 'url' => ['/event']],

                    //PRODUK KELEMBAGAAN
                    ['label' => 'Produk Kelembagaan', 'icon' => 'circle-o', 'url' => ['/produkkelembagaan'],],

                    //BIODATA
                    [
                        'label' => 'Biodata', 
                        'icon' => 'users', 
                        'url' => '#',
                        'items' => [
                            ['label' => 'Biodata Jemaat', 'icon' => 'circle-o', 'url' => ['/biodata'],],
                            ['label' => 'Biodata Majelis', 'icon' => 'circle-o', 'url' => ['/biodatamajelis'],],
                        ]
                    ],

                    //MASTER DATA
                    [
                        'label' => 'Master Data', 
                        'icon' => 'cogs', 
                        'url' => '#',
                        'items' => [
                            ['label' => 'Jemaat', 'icon' => 'circle-o', 'url' => ['/jemaat']],
                            ['label' => 'Sektor', 'icon' => 'circle-o', 'url' => ['/sektor']],
                            ['label' => 'Unit', 'icon' => 'circle-o', 'url' => ['/unit']],
                        ]
                    ],

                ],
            ]
        ) ?>

    </section>

</aside>