<?php $__env->startSection('content'); ?>

<div class="container">
    <div>
        <div class="card card-body">
            <div class="card-body">
              <h4 class="card-title">
                Tiket Saya
                <i class="green ticket alternate icon"></i> <br> <br>
              </h4>
              <input type="search" class="cari form-control ml-3" placeholder="Cari Tiket..." name="search" id="search" style="width: 250px">
              
              <ul class="list-inline" id="tabel">
                    <?php $__currentLoopData = $user->tickets; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ticket): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li class="list-inline-item my-3 mx-3">
                                    <div class="card" style="width: 16rem">
                                      <img src="/images/<?php echo e($ticket->place->gambar); ?>" class="card-img-top" style="width: 223px; height: 100px" alt="...">
                                        <div class="card-body">
                                            <a><h5 class="card-title"><b><?php echo e($ticket->place->nama); ?></b></h5></a> <br>
                                            
                                            <p class="card-text"><b>ID Pemesanan: </b><?php echo e($ticket->kode_pembayaran); ?></p>
                                            <p type="card-text"><b>Kode Tiket: </b><?php echo e($ticket->kode_tiket); ?></p>
                                            <p class="card-text"><b>Status:</b> Sudah Dibayar 
                                              <i class=" green check circle icon"></i>
                                            </p>                
                                        </div>
                                    </div>
                                </li>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
</div>


<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\projek\laravel\pabw_plesirjogja\resources\views/Baskets/show.blade.php ENDPATH**/ ?>