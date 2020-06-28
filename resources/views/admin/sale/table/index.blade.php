@extends('layouts.appAdmin')
@section('content')
<link href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css" rel="stylesheet">
<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>

<div class="container mt-4">
            <div class="card mt-2">
                <div class="card-header text-center">
                    <h2><strong>Data Penjualan</strong></h2>
                </div>
                <div class="card-body">
                    <ul class="list-inline">
                        <li class="list-inline-item">
                            <input class="form-control" type="search" id="search" placeholder="Search" aria-label="Search" style="width: 350px">
                        </li>
                        <li class="list-inline-item" style="margin-left: 540px">
                            <a href="{{route('adminSale.create')}}" class="btn btn-primary">
                                <i class="plus icon"></i>
                                Atur Rentang Tanggal
                            </a>
                        </li>
                    </ul>
                    <table   id="sale"
                            data-toggle="table"
                             class="table table-bordered table-hover table-striped" style="font-size: 15px; text-align: center" align="center">
                        <thead>
                            <tr>
                                <th data-sortable="true"  onclick="sortTable(0)"scope="col" style="font-size: 17px;">No</th>
                                <th data-sortable="true" onclick="sortTable(1)" scope="col" style="font-size: 17px;">Nama</th>
                                <th data-sortable="true" onclick="sortTable(2)" scope="col" style="font-size: 17px;">Harga Tiket (Satuan)</th>
                                <th data-sortable="true" onclick="sortTable(3)" scope="col" style="font-size: 17px;">Tiket Terjual</th>
                                <th data-sortable="true" onclick="sortTable(4)" scope="col" style="font-size: 17px;">Total Pemasukan </th>
                            </tr>
                        </thead>
                        @php
                            $no=1;
                        @endphp
                        <tbody id="tabel">
                            @foreach($sale as $p)
                            <tr style="position: center center">
                                <td style="text-align: center center">{{$no++}}</td>
                                <td>{{ $p->a }}</td>
                                <td>{{ $p->b }}</td>
                                <td>{{ $p->c}}</td>
                                <td>{{ $p->d }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                        
                    </table>
                </div>
            </div>
        </div>

<script>
    function sortTable(n) {
    var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
    table = document.getElementById("sale");
    switching = true;
    // Set the sorting direction to ascending:
    dir = "asc";
    /* Make a loop that will continue until
    no switching has been done: */
    while (switching) {
        // Start by saying: no switching is done:
        switching = false;
        rows = table.rows;
        /* Loop through all table rows (except the
        first, which contains table headers): */
        for (i = 1; i < (rows.length - 1); i++) {
        // Start by saying there should be no switching:
        shouldSwitch = false;
        /* Get the two elements you want to compare,
        one from current row and one from the next: */
        x = rows[i].getElementsByTagName("TD")[n];
        y = rows[i + 1].getElementsByTagName("TD")[n];
        /* Check if the two rows should switch place,
        based on the direction, asc or desc: */
        if (dir == "asc") {
            if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
            // If so, mark as a switch and break the loop:
            shouldSwitch = true;
            break;
            }
        } else if (dir == "desc") {
            if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
            // If so, mark as a switch and break the loop:
            shouldSwitch = true;
            break;
            }
        }
        }
        if (shouldSwitch) {
        /* If a switch has been marked, make the switch
        and mark that a switch has been done: */
        rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
        switching = true;
        // Each time a switch is done, increase this count by 1:
        switchcount ++;
        } else {
        /* If no switching has been done AND the direction is "asc",
        set the direction to "desc" and run the while loop again. */
        if (switchcount == 0 && dir == "asc") {
            dir = "desc";
            switching = true;
        }
        }
    }
    }
</script>
@endsection
