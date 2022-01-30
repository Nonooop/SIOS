<?php include "../komponen/header.php";
$eksekusi = mysqli_query($test, "select count(*) as total from pembayaran");
$nmbrg = mysqli_fetch_array($eksekusi);
?>
<!-- ============================================================== -->
<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="main-content">

    <div class="page-content">
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-flex align-items-center justify-content-between">
                        <h4 class="mb-0">Cara Pesan</h4>

                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="javascript: void(0);">SIOS</a></li>
                                <li class="breadcrumb-item active">Cara Pesan</li>
                            </ol>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end page title -->


            <div class="row">
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title mb-4">Cara Pemesanan</h4>
                            <div class="">
                                <ul class="verti-timeline list-unstyled">
                                    <li class="event-list" style="padding: 0 0 0px 20px;">
                                        <div class="event-date text-primar">Langkah 01</div>
                                        <h6>Daftar Akun</h6>
                                        <p class="text-muted">Jika kamu ingin berbelanja namun belum memiliki akun, maka daftarkan terlebih dahulu dengan menekan sign up di pojok kanan atas</p>
                                    </li>
                                    <li class="event-list" style="padding: 0 0 0px 20px;">
                                        <div class="event-date text-primar">Langkah 02</div>
                                        <h6>Masuk</h6>
                                        <p class="text-muted">Anda perlu login untuk terhubung dengan segala transaksi anda</p>
                                    </li>
                                    <li class="event-list" style="padding: 0 0 0px 20px;">
                                        <div class="event-date text-primar">Langkah 03</div>
                                        <h6>Pilih dan Masukan Keranjang</h6>
                                        <p class="text-muted">Lihat barang dan pilih yang akan anda beli lalu masukan kedalam keranjang</p>
                                    </li>
                                    <li class="event-list" style="padding: 0 0 0px 20px;">
                                        <div class="event-date text-primar">Langkah 04</div>
                                        <h6>Checkout</h6>
                                        <p class="text-muted">Pesan semua yang ada dikeranjang, anda bisa mengatur jumlah maupun menghapus barang yang ada dikeranjang. Lalu anda diminta untuk isikan data Pengiriman.</p>
                                    </li>
                                    <li class="event-list" style="padding: 0 0 0px 20px;">
                                        <div class="event-date text-primar">Langkah 05</div>
                                        <h6>Lakukan Pembayaran</h6>
                                        <p class="text-muted">Lakukan Pembayaran dan kirim bukti pembayaran ke email kami info-sios@sios.com. Lalu penjual akan memproses pesanan kamu setelah semua langkah diikut. Selamat berbelanja</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Pembayaran</h4>
                            <div class="text-center">
                                <div class="avatar-sm mx-auto mb-4"> <span class="avatar-title bg-white rounded-circle font-size-16">
                                        <i class="uil-shopping-basket"><img src="../assets/images/payment-methods.jpg" alt="" class="avatar-title  rounded-circle font-size-16"></i>

                                    </span> </div>
                                <p class="font-16 text-muted mb-2"></p>
                                <h5><a href="#" class="text-dark"><?php echo $nmbrg['total'] ?> <span class="text-muted font-16">metode pembayaran</span> </a></h5>
                                <div class="row mt-4">
                                    <div class="col-6">
                                        <div class="social-source text-center mt-3">
                                            <div class="avatar-xs mx-auto mb-3"> <span class="avatar-title bg-white rounded-circle font-size-18">
                                                    <i class="uil-shopping-basket"><img src="../assets/images/bca-bank-central-asia-logo.png" alt="" class="avatar-title bg-white rounded-circle font-size-16"></i>
                                                </span> </div>
                                            <h5 class="font-size-16">BCA</h5>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="social-source text-center mt-3">
                                            <div class="avatar-xs mx-auto mb-3"> <span class="avatar-title bg-white  font-size-16">
                                                    <i class="uil-shopping-basket"><img src="../assets/images/BNI_logo.svg.png" alt="" class="avatar-title  bg-white font-size-16"></i>
                                                </span> </div>
                                            <h5 class="font-size-16">BNI</h5>
                                            <p></p>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="social-source text-center mt-3">
                                            <div class="avatar-xs mx-auto mb-3"> <span class="avatar-title rounded-circle bg-white font-size-16">
                                                    <i class="uil-shopping-basket"><img src="../assets/images/dana-min.png" alt="" class="avatar-title bg-white  rounded-circle font-size-16"></i>
                                                </span> </div>
                                            <h5 class="font-size-16">DANA</h5>
                                            <!--<p class="text-muted mb-0">104 sales</p>-->
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="social-source text-center mt-3">
                                            <div class="avatar-xs mx-auto mb-3"> <span class="avatar-title rounded-circle bg-white font-size-16">
                                                    <i class="uil-shopping-basket"><img src="../assets/images/unnamed.png" alt="" class="avatar-title bg-white  rounded-circle font-size-16"></i>
                                                </span> </div>
                                            <h5 class="font-size-15">GOPAY</h5>
                                            <!--<p class="text-muted mb-0">104 sales</p>-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end row -->
            </div> <!-- container-fluid -->
        </div>
        <?php include "../komponen/footer.php"; ?>