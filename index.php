<?php
// memanggil file config.php
require 'config.php';
?>
<html>
<head>
	<title>Yayasan Element</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jq-3.3.1/jszip-2.5.0/dt-1.10.18/af-2.3.3/b-1.5.6/b-colvis-1.5.6/b-flash-1.5.6/b-html5-1.5.6/b-print-1.5.6/cr-1.5.0/fc-3.2.5/fh-3.1.4/kt-2.5.0/r-2.2.2/rg-1.1.0/rr-1.2.4/sc-2.0.0/sl-1.3.0/datatables.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jq-3.3.1/jszip-2.5.0/dt-1.10.18/af-2.3.3/b-1.5.6/b-colvis-1.5.6/b-flash-1.5.6/b-html5-1.5.6/b-print-1.5.6/cr-1.5.0/fc-3.2.5/fh-3.1.4/kt-2.5.0/r-2.2.2/rg-1.1.0/rr-1.2.4/sc-2.0.0/sl-1.3.0/datatables.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tooltip.js/1.3.2/esm/tooltip.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/esm/popper.js"></script>
    <script type="text/javascript" src="chartjs/Chart.js"></script>
</head>
<body>
    <div style="width: 500px;height: 500px" position="center">
            <canvas id="myChart"></canvas>
        </div>

    <table id="example" class="table" cellspacing="0" width="100%">
        <thead class="thead-dark">
            <tr>
                <th>Location</th>
                <th>Status</th>
                <th>Region</th>
                <th>Processed</th>
            </tr>
        </thead>
        <!--<tfoot>
            <tr>
            <th>Location</th>
            <th>Status</th>
            <th>Region</th>
            <th>Processed</th>
            </tr>
        </tfoot>-->

        <tbody>
        <?php
        $sql = "SELECT * FROM daerah";
        $query = $db->query($sql);
        
        while ($row = $query->fetch_assoc()) :?>
            <tr>
                <td><?php echo $row['lokasi'];?></td>
                <td class="btn btn-success"><?php echo $row['status'];?></td>
                <td><?php echo $row['region'];?></td>
                <td><?php echo $row['processeds'];?></td>
            </tr>
        <?php endwhile;?>
        </tbody>

        <script>
            $(document).ready(function() {
            $('#example').DataTable({
                "oLanguage": {
                "sLengthMenu": "Region _MENU_"
                }
            });
            } );
            </script>
        
        <script  type="text/javascript">
  var ctx = document.getElementById("piechart").getContext("2d");
  var data = {
            labels: [<?php while ($p = mysqli_fetch_array($merk)) { echo '"' . $p['merk'] . '",';}?>],
            datasets: [
            {
              label: "Penjualan Barang",
              data: [<?php while ($p = mysqli_fetch_array($penjualan)) { echo '"' . $p['penjualan'] . '",';}?>],
              backgroundColor: [
                '#29B0D0',
                '#2A516E',
                '#F07124',
                '#CBE0E3',
                '#979193'
              ]
            }
            ]
            };

  var myPieChart = new Chart(ctx, {
                  type: 'pie',
                  data: data,
                  options: {
                    responsive: true
                }
              });

</script>
        
        
        

    </table>
</body>
</html>