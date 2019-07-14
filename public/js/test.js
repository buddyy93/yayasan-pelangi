var table_data = []
var pie_table_data = [];

var base_url = 'http://localhost/yayasan-pelangi-uji-pemrograman/';

function updateTable(val) {
	var url = base_url + 'testing/get';
	if (val !== '') {
		url = base_url + 'testing/get?region=' + val
		updateChart(val)
	} else {
		updateChart('')
	}
	$.getJSON(url, function (data) {
		table_data = []
		for (var i = 0; i < data.length; i++) {
			table_data.push(Object.values(data[i]))
		}
		if (table_data.length == 0) {
			$('#default_table').dataTable().fnClearTable();
		}
		else {
			$('#default_table').dataTable().fnClearTable();
			$('#default_table').dataTable().fnAddData(table_data);
		}
	});
}

function showPieTable(ev) {
	var region = $('#region_select').val();
	if (region == '')
		url = base_url + 'testing/getPieTableData?status=' + ev.target.dataItem.category;
	else
		url = base_url + 'testing/getPieTableData?region=' + region + '&status=' + ev.target.dataItem.category;

	$.getJSON(url, function (data) {
		pie_table_data = []
		for (var i = 0; i < data.length; i++) {
			pie_table_data.push(Object.values(data[i]))
		}
		if (pie_table_data.length == 0) {
			$('#pie_table').dataTable().fnClearTable();
		}
		else {
			$('#pie_table').dataTable().fnClearTable();
			$('#pie_table').dataTable().fnAddData(pie_table_data);
		}

		$('#exampleModal').modal('show');
	});
}

function updateChart(val) {
	var url = base_url + "testing/getPieData";
	if (val !== '')
		url = base_url + 'testing/getPieData?region=' + val;

	$.getJSON(url, function (data) {
		am4core.ready(function () {

// Themes begin
			am4core.useTheme(am4themes_animated);
// Themes end

			var chart = am4core.create("chartdiv", am4charts.PieChart3D);
			chart.hiddenState.properties.opacity = 0; // this creates initial fade-in

			chart.legend = new am4charts.Legend();

			chart.data = data;

			var series = chart.series.push(new am4charts.PieSeries3D());
			series.slices.template.events.on("hit", showPieTable, this);
			series.dataFields.value = "count";
			series.dataFields.category = "status";
			var colorSet = new am4core.ColorSet();
			colorSet.list = ["#B71C1C", "#689F38", "#123456", "#bca234"].map(function (color) {
				return new am4core.color(color);
			});
			series.colors = colorSet;
		});
	});
}

$(document).ready(function () {
	var default_table = $('#default_table').DataTable({
		data: table_data,
		responsive: true,
		columns: [
			{title: "id", visible: false},
			{title: "Location"},
			{title: "Status"},
			{title: "Region"},
			{title: "Date"},
		]
	});

	var pie_table = $('#pie_table').DataTable({
		data: pie_table_data,
		responsive: true,
		columns: [
			{title: "id", visible: false},
			{title: "Location"},
			{title: "Status"},
			{title: "Region"},
			{title: "Date"},
		]
	});
	updateTable('');

	updateChart('');

});
