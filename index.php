<?php
// memanggil file config.php
require 'config.php';
?>
<html>
<head>
	<title>Yayasan Element</title>

    <link rel="stylesheet" href="datatables/datatables.min.css">
    <link rel="stylesheet" href="datatables/Bootstrap-4-4.1.1/css/bootstrap.min.css">
    <script type="text/javascript" src="datatables/jQuery-3.3.1/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="datatables/Bootstrap-4-4.1.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="datatables/datatables.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/highcharts-3d.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <div id="container" style="height: 400px"></div>

</head>
<body>

    
    <table id="example" class="table highchart dataTable" cellspacing="0" width="100%">
        <thead class="thead-dark">
            <tr>
                <th>Location</th>
                <th>Status</th>
                <th>Region</th>
                <th>Processed</th>
            </tr>
        </thead>

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

        <script>
            Highcharts.chart('container', {
                chart: {
                    type: 'pie',
                    options3d: {
                        enabled: true,
                        alpha: 45,
                        beta: 0
                    }
                },
                title: {
                    text: 'Element Inc. , 2014'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        depth: 35,
                        dataLabels: {
                            enabled: true,
                            format: '{point.name}'
                        }
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'Chart',
                    data: [
                        ['Location', 45.0],
                        ['Status', 26.8],
                        {
                            name: 'User',
                            y: 12.8,
                            sliced: true,
                            selected: true
                        },
                        ['Region', 8.5]
                    ]
                }]
            });
        </script>
        
        
        

    </table>
</body>
</html>