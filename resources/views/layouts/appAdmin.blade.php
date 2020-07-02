<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>{{ config('apps.name', 'PlesirJogja.com') }}</title>



  <!-- Custom fonts for this template-->
  <link href="{{ asset('sa2/vendor/fontawesome-free/css/all.min.css')}}" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">

  <!-- Custom styles for this template-->
  <link href="{{ asset('sa2/css/sb-admin-2.min.css')}}" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient sidebar sidebar-dark accordion" id="accordionSidebar" style="background-color: #245B43">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
        <div class="sidebar-brand-text mx-3">Admin {{ config('apps.name', 'PlesirJogja.com') }}</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="/">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">


      <li class="nav-item">
        <a class="nav-link" href="{{route('adminSale.create')}}">
          <i class="fas fa-fw fa-table"></i>
          <span>Data Penjualan</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Statistik Penjualan</span>
        </a>
        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="{{route('adminChart.create')}}">Penjualan</a>
            <a class="collapse-item" href="{{route('placeChart.create')}}">Tempat Wisata</a>
          </div>
        </div>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="{{route('adminPlaces.index')}}">
          <i class="fas fa-fw fa-table"></i>
          <span>Data Tempat Wisata</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="{{route('adminUsers.index')}}">
          <i class="fas fa-fw fa-table"></i>
          <span>Data Pengguna</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn" type="button" style="background-color: #245B43">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>


            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              @guest
              @if (Route::has('register'))
                <li class="nav-item">
                  <a class="btn btn-outline-success mx-3" href="{{ route('register') }}" style="font-size: 15px;">{{ __('Register') }}</a>
                </li>
              @endif
                <li class="nav-item">
                  <a class="btn btn-success" href="{{ route('login') }}" style="font-size: 15px;">{{ __('Login') }}</a>
                </li>
              @else
                <li class="nav-item dropdown">
                  <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" style="color: black" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                  {{ Auth::user()->name }} <span class="caret"></span>
                  </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                    {{ __('Logout') }}
                    </a>
                      <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                      @csrf
                      </form>
                    </div>
                </li>
              @endguest
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->
        <div class="container" style="margin-left: 44%">
            @if (session()->has('notif'))
                <div class="row">
                    <div class="alert alert-success" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        {{session()->get('notif')}}
                    </div>
                </div>
            @endif
        </div>
        
        <main class="py-4">
            @yield('content')
        </main>
        

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; PlesirJogja.com 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>


  <!-- Bootstrap core JavaScript-->
  <script src="{{ asset('sa2/vendor/jquery/jquery.min.js')}}"></script>
  <script src="{{ asset('sa2/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

  <!-- Core plugin JavaScript-->
  <script src="{{ asset('sa2/vendor/jquery-easing/jquery.easing.min.js')}}"></script>

  <!-- Custom scripts for all pages-->
  <script src="{{ asset('sa2/js/sb-admin-2.min.js')}}"></script>

  <!-- Page level plugins -->
  <script src="{{ asset('sa2/vendor/chart.js/Chart.min.js')}}"></script>

  <!-- Page level custom scripts -->
  <script src="{{ asset('sa2/js/demo/chart-area-demo.js')}}"></script>
  <script src="{{ asset('sa2/js/demo/chart-pie-demo.js')}}"></script>

  <script>
          $(document).ready(function(){
              $("#search").on("keyup", function() {
                  var value = $(this).val().toLowerCase();
                  $("#tabel tr").filter(function() {
                  $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                  });
              });
          });
      </script>
</body>


</html>

{{-- <script type="text/javascript">
    $(document).ready(function(){
        $('ul li a').click(function(){
            $('li a').removeClass("active");
            $(this).addClass("active");
        });
    });
</script> --}}

{{-- <script>
    $(document).ready(function(){
    
     fetch_places_data();
    
     function fetch_places_data(query = '')
     {
      $.ajax({
       url:"{{ route('places.action') }}",
       method:'GET',
       data:{query:query},
       dataType:'json',
       success:function(data)
       {
        $('tbody').html(data.table_data);
        $('#total_records').text(data.total_data);
       }
      })
     }
    
     $(document).on('keyup', '#search', function(){
      var query = $(this).val();
      fetch_places_data(query);
     });
    });
    </script> --}}
