<?php $__env->startSection('content'); ?>
<div class="container mt-4">
            <div class="card mt-2">
                <div class="card-header text-center">
                    <h2><strong>Data Obyek Wisata</strong></h2>
                </div>
                <div class="card-body">
                    <ul class="list-inline">
                        <li class="list-inline-item">
                            <input class="form-control" type="search" id="search" placeholder="Search" aria-label="Search" style="width: 350px">
                        </li>
                        <li class="list-inline-item" style="margin-left: 540px">
                            <a href="<?php echo e(route('adminPlaces.create')); ?>" class="btn btn-primary">
                                <i class="plus icon"></i>
                                Tambah Obyek Wisata
                            </a>
                        </li>
                    </ul>
                    <table class="table table-bordered table-hover table-striped" style="font-size: 15px; text-align: center" align="center">
                        <thead>
                            <tr>
                                <th scope="col" style="font-size: 17px;">No</th>
                                <th scope="col" style="font-size: 17px;">Nama</th>
                                <th scope="col" style="font-size: 17px;">Harga Tiket (Satuan)</th>
                                <th scope="col" style="font-size: 17px;">Tiket Terjual</th>
                                <th scope="col" style="font-size: 17px;">Total Pemasukan </th>
                            </tr>
                        </thead>
                        <?php
                            $no=1;
                        ?>
                        <tbody id="tabel">
                            <?php $__currentLoopData = $sale; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $p): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr style="position: center center">
                                <td style="text-align: center center"><?php echo e($no++); ?></td>
                                <td><?php echo e($p->a); ?></td>
                                <td><?php echo e($p->b); ?></td>
                                <td><?php echo e($p->c); ?></td>
                                <td><?php echo e($p->d); ?></td>
                            </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                        
                    </table>
                </div>
            </div>
        </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.appAdmin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\projek\laravel\pabw_plesirjogja\resources\views/admin/sale/table/index.blade.php ENDPATH**/ ?>