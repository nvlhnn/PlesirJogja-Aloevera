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
                                <th scope="col" style="font-size: 17px;">ID</th>
                                <th scope="col" style="font-size: 17px;">Nama</th>
                                <th scope="col" style="font-size: 17px;">Operasional</th>
                                <th scope="col" style="font-size: 17px;">Buka</th>
                                <th scope="col" style="font-size: 17px;">Tutup</th>
                                <th scope="col" style="font-size: 17px;">Tiket</th>
                                <th scope="col" style="font-size: 17px;">Gambar</th>
                                <th scope="col" style="font-size: 17px; width: 150px">Aksi</th>
                            </tr>
                        </thead>
                        <?php
                            $no=1;
                        ?>
                        <tbody id="tabel">
                            <?php $__currentLoopData = $place; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $p): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr style="position: center center">
                                <td style="text-align: center center"><?php echo e($no++); ?></td>
                                <td><?php echo e($p->nama); ?></td>
                                <td><?php echo e($p->hari); ?></td>
                                <td><?php echo e($p->buka); ?></td>
                                <td><?php echo e($p->tutup); ?></td>
                                <td>Rp <?php echo e($p->harga_tiket); ?></td>
                                <td><img width="150px" height="90px" src="<?php echo e(url('/images/'.$p->gambar)); ?>"></td>

                                <td style="font-size: 20px">
                                    <a href="<?php echo e(route('adminPlaces.edit', $p->id)); ?>"><i class="blue edit icon"></i></a> |
                                    <form action="<?php echo e(route('adminPlaces.destroy', $p->id)); ?>" method="post" class="d-inline">
                                        <?php echo csrf_field(); ?>
                                        <?php echo method_field('DELETE'); ?>
                                        <button type="submit" style="background-color: transparent; border: 0;" onclick="return confirm('Yakin hapus');"><i class="red trash alternate icon"></i></button>
                                    </form>   
                                </td>
                            </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                        
                    </table>
                    <?php echo e($place->links()); ?>

                </div>
            </div>
        </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.appAdmin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\projek\laravel\pabw_plesirjogja\resources\views/admin/places/index.blade.php ENDPATH**/ ?>