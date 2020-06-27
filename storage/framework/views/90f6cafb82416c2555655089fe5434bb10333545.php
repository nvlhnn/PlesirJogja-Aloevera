<?php $__env->startSection('content'); ?>
<div class="container mt-4">
            <div class="card mt-2">
                <div class="card-header text-center">
                    <h2><strong>Data User</strong></h2>
                </div>
                <div class="card-body">
                    <ul class="list-inline">
                        <li class="list-inline-item">
                            <input id="search" class="form-control" type="search" placeholder="Search" aria-label="Search" style="width: 350px">
                        </li>
                    </ul>
                    <table class="table table-bordered table-hover table-striped" style="font-size: 15px; text-align: center" align="center">
                        <thead>
                            <tr>
                                <th scope="col" style="font-size: 17px;">ID</th>
                                <th scope="col" style="font-size: 17px;">Nama</th>
                                <th scope="col" style="font-size: 17px;">Email</th>
                                <th scope="col" style="font-size: 17px;">Kedudukan</th>
                                <th scope="col" style="font-size: 17px;">Terdaftar Sejak</th>
                                <th colspan="2" scope="col" style="font-size: 17px; width: 150px">Aksi</th>
                            </tr>
                        </thead>
                        <?php
                            $no=1;
                        ?>
                        <tbody id="tabel">
                            <?php $__currentLoopData = $user; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $p): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr style="position: center center">
                                <td style="text-align: center center"><?php echo e($no++); ?></td>
                                <td><?php echo e($p->name); ?></td>
                                <td><?php echo e($p->email); ?></td>
                                <?php if($p->isAdmin=='1'): ?>
                                <?php
                                    $c ="Admin"
                                ?>
                                <?php else: ?>
                                <?php
                                    $c = "User"
                                ?>
                                <?php endif; ?>
                                <td><?php echo e($c); ?></td>
                                <td><?php echo e($p->created_at); ?></td>
                                <td style="font-size: 20px">
                                    <?php if($p->isAdmin=='1'): ?>
                                        <a href="<?php echo e(route('adminUsers.edit', $p->id)); ?>" class="mx-2"><i class="btn btn-primary">Jadikan Users</i></a>
                                    <?php else: ?>
                                        <a href="<?php echo e(route('adminUsers.edit', $p->id)); ?>" class="mx-2"><i class="btn btn-secondary">Jadikan Admin</i></a>
                                    <?php endif; ?>
                                    |
                                    <form action="<?php echo e(route('adminUsers.destroy', $p->id)); ?>" method="post" class="d-inline">
                                        <?php echo csrf_field(); ?>
                                        <?php echo method_field('DELETE'); ?>
                                        <button type="submit" style="background-color: transparent; border: 0;" onclick="return confirm('Yakin hapus');"><i class="red trash alternate icon"></i></button>
                                    </form>   

                                </td>
                            </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.appAdmin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\projek\laravel\pabw_plesirjogja\resources\views/admin/users/index.blade.php ENDPATH**/ ?>