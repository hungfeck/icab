<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="highmap.aspx.cs" Inherits="Icab.maps.highmap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bản đồ tăng trưởng</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <!-- Include Required Prerequisites -->
    <script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/3/css/bootstrap.css" />
 
    <!-- Include Date Range Picker -->
    <script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />

    <script src="highmaps.js"></script>
	<script src="https://code.highcharts.com/maps/modules/exporting.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/proj4js/2.3.6/proj4.js"></script>
	<script src="vn-all.js"></script>
	<style>
		/*#container {
			height: 700px; 
			min-width: 510px; 
			max-width: 1000px; 
			margin: 0 auto; 
            margin-top: 50px !important;
		}*/
		.loading {
			margin-top: 10em;
			text-align: center;
			color: gray;
		}
        .wrapper_search{
            /*padding-left: 50px;*/
            /*text-align: center;*/
            margin-top: 10px;
            margin: auto 0px;
        }
        .wrapper_search p{
            float: left;
            padding-right: 20px;
        }
	</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="wrapper_search" style=" width: 600px; margin: 10px auto;">
            <div id="options" class="options">
                <p>Tiêu chí: 
                 <%--   <select class="seoption" style="margin-left: 10px;">
                        <option value="TANGTRUONG" selected="selected">Tăng trưởng</option>
                        <option value="NGUNGHUY">Ngưng hủy</option>
                        <option value="LAPMOI">Lắp mới</option>
                        <option value="MOLAI">Mở lại</option>
                    </select>--%>
                    <asp:DropDownList ID="ddlSearch" CssClass="ddlSearch"  runat="server" style="margin-left: 10px; height: 25px; line-height: 25px;" >
                        <asp:ListItem Selected="True" Value="TANGTRUONG"> Tăng trưởng </asp:ListItem>
                        <asp:ListItem Value="NGUNGHUY"> Ngưng hủy </asp:ListItem>
                        <asp:ListItem Value="LAPMOI"> Lắp mới </asp:ListItem>
                        <asp:ListItem Value="MOLAI"> Mở lại </asp:ListItem>
                    </asp:DropDownList>
                </p>
            </div>
            <p>Ngày<input type="text" name="daterange" value="01/01/2015 - 01/31/2015" style="margin-left: 10px;height: 25px; line-height: 25px; padding-left: 5px;" /></p>
            <%--<button>Xem</button>--%>
            <asp:Button ID="btnSearch" CssClass="btnSearch" Text="Xem" runat="server"  />
        </div>
         <div id="container" style="height: 90vh; width: 100%; margin: 0 auto;"></div>
    </div>
    </form>
    <script type="text/javascript">
        
        Search();
        $('input[name="daterange"]').daterangepicker(
            {
                locale: {
                    format: 'DD/MM/YYYY'
                },
                startDate: '31/08/2017',
                endDate: '06/09/2017'
            }
            );
        function Search() {
            
            var dataLapmoi = [
			['vn-yb', 0],
			['vn-pt', 100],
			['vn-3655', 200],
			['vn-qn', 300],
			['vn-kh', 400],
			['vn-tg', 500],
			['vn-bv', 600],
			['vn-bu', 700],
			['vn-hc', 11670],
			['vn-br', 90],
			['vn-st', 100],
			['vn-li', 110],
			['vn-311', 120],
			['vn-ty', 130],
			['vn-318', 11040],
			['vn-hd', 150],
			['vn-bn', 160],
			['vn-317', 170],
			['vn-vc', 180],
			['vn-nb', 190],
			['vn-hm', 200],
			['vn-ho', 210],
			['vn-bg', 220],
			['vn-tb', 230],
			['vn-ld', 240],
			['vn-bp', 250],
			['vn-tn', 260],
			['vn-py', 270],
			['vn-bd', 280],
			['vn-3623', 290],
			['vn-724', 300],
			['vn-qg', 310],
			['vn-331', 6800],
			['vn-dt', 330],
			['vn-333', 340],
			['vn-la', 350],
			['vn-337', 360],
			['vn-bl', 370],
			['vn-vl', 380],
			['vn-hg', 390],
			['vn-nd', 400],
			['vn-db', 410],
			['vn-ls', 420],
			['vn-th', 430],
			['vn-307', 440],
			['vn-tq', 450],
			['vn-328', 460],
			['vn-na', 470],
			['vn-qb', 480],
			['vn-dk', 61839],
			['vn-nt', 500],
			['vn-6365', 510],
			['vn-299', 520],
			['vn-300', 530],
			['vn-qt', 540],
			['vn-tt', 550],
			['vn-kg', 560],
			['vn-da', 7000],
			['vn-ag', 580],
			['vn-cm', 590],
			['vn-tv', 600],
			['vn-cb', 61],
			['vn-lo', 620],
			['vn-bi', 630]
            ];
            var dataNgungHuy = [
                ['vn-yb', 0],
                ['vn-pt', 100],
                ['vn-3655', 200],
                ['vn-qn', 700],
                ['vn-kh', 400],
                ['vn-tg', 500],
                ['vn-bv', 600],
                ['vn-bu', 700],
                ['vn-hc', 8000],
                ['vn-br', 900],
                ['vn-st', 1000],
                ['vn-li', 110],
                ['vn-311', 120],
                ['vn-ty', 130],
                ['vn-318', 7000],
                ['vn-hd', 1500],
                ['vn-bn', 1600],
                ['vn-317', 1700],
                ['vn-vc', 1800],
                ['vn-nb', 1900],
                ['vn-hm', 2000],
                ['vn-ho', 2100],
                ['vn-bg', 2200],
                ['vn-tb', 7100],
                ['vn-ld', 2400],
                ['vn-bp', 2500],
                ['vn-tn', 2600],
                ['vn-py', 2700],
                ['vn-bd', 2800],
                ['vn-3623', 290],
                ['vn-724', 30],
                ['vn-qg', 310],
                ['vn-331', 320],
                ['vn-dt', 330],
                ['vn-333', 340],
                ['vn-la', 350],
                ['vn-337', 360],
                ['vn-bl', 370],
                ['vn-vl', 380],
                ['vn-hg', 390],
                ['vn-nd', 400],
                ['vn-db', 410],
                ['vn-ls', 420],
                ['vn-th', 430],
                ['vn-307', 440],
                ['vn-tq', 450],
                ['vn-328', 460],
                ['vn-na', 470],
                ['vn-qb', 480],
                ['vn-dk', 490],
                ['vn-nt', 500],
                ['vn-6365', 510],
                ['vn-299', 502],
                ['vn-300', 530],
                ['vn-qt', 540],
                ['vn-tt', 550],
                ['vn-kg', 560],
                ['vn-da', 5181],
                ['vn-ag', 580],
                ['vn-cm', 590],
                ['vn-tv', 600],
                ['vn-cb', 610],
                ['vn-lo', 620],
                ['vn-bi', 730]
            ];
            var dataClassesNgunghuy = [{
                from: 0,
                to: 200,
                color: '#F1EEF6',
                //name: ''
            }, {
                from: 201,
                to: 4000,
                color: '#C994C7',
                //name: ''
            }, {
                from: 4001,
                color: '#980043',
                //name: 'Red',

            }]
            var dataClassesTangTruong = [{
                from: 0,
                to: 200,
                color: 'rgb(181, 196, 225)'
                //,name: 'Republican'
            }, {
                from: 201,
                to: 4000,
                color: 'rgb(86, 120, 187)'
                //, name: 'Democrat'

            }, {
                from: 4001,
                color: 'rgb(40, 83, 169)'
                //, name: 'Green'

            }]
            var dataMappointTangtruong = [{
                name: 'Chi nhánh 1',
                lat: 21.029021,
                lon: 105.813326,
                value: 2000
            }, {
                name: 'Chi nhánh 2',
                lat: 20.989664,
                lon: 105.786585,
                value: 4000
            }, {
                name: 'Chi nhánh 3',
                lat: 20.977642,
                lon: 105.835251,
                value: 5040
            }]
            var dataMappointNgunghuy = [{
                name: 'Chi nhánh 1',
                lat: 21.029021,
                lon: 105.813326,
                value: 1500
            }, {
                name: 'Chi nhánh 2',
                lat: 20.989664,
                lon: 105.786585,
                value: 2500
            }, {
                name: 'Chi nhánh 3',
                lat: 20.977642,
                lon: 105.835251,
                value: 3000
            }]
            var dataMapoint;

            var data;
            var dataClassColor;
            alert
            if ($('.ddlSearch').val() == 'NGUNGHUY') {
                data = dataNgungHuy;
                dataClassColor = dataClassesNgunghuy;
                dataMapoint = dataMappointNgunghuy;
            }
            else {
                data = dataLapmoi;
                dataClassColor = dataClassesTangTruong;
                dataMapoint = dataMappointTangtruong;
            }

            // Create the chart
            Highcharts.mapChart('container', {
                chart: {
                    map: 'countries/vn/vn-all'
                },

                title: {
                    text: 'Tăng trưởng toàn quốc'
                },

                subtitle: {
                    //text: 'Source map: <a href="http://code.highcharts.com/mapdata/countries/vn/vn-all.js">Vietnam</a>'
                    text: 'Từ ngày 30/08/2017 đến ngày 06/09/2017'
                },

                mapNavigation: {
                    enabled: true,
                    buttonOptions: {
                        verticalAlign: 'bottom'
                    }
                },
                tooltip: {
                    headerFormat: ''
                    , pointFormat: '<b>{point.name}</b><br> {point.value} thuê bao'
                    //, pointFormat: '<b>{point.name}</b><br>Lat: {point.lat}, Lon: {point.lon}'
                },
                colorAxis: {
                    min: 0,
                    dataClasses: dataClassColor
                }, legend: {
                    title: {
                        text: 'Tăng trưởng<br>',
                        style: {
                            color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
                        }
                    },
                    layout: 'vertical',
                    align: 'right',
                    margin: 22,
                    floating: true,
                    valueDecimals: 0,
                    valueSuffix: ' thuê bao',
                    backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || 'rgba(255, 255, 255, 0.85)',
                    symbolRadius: 0,
                    symbolHeight: 14,
                    x: -50
                },
                plotOptions: {
                    mapline: {
                        showInLegend: false,
                        enableMouseTracking: false
                    }
                },
                series: [{
                    data: data,
                    name: 'Random data',
                    states: {
                        hover: {
                            color: '#BADA55'
                        }
                    },
                    dataLabels: {
                        enabled: true,
                        format: '{point.name}'
                    }
                }, {
                    // Specify points using lat/lon
                    type: 'mappoint',
                    name: 'Chi nhánh',
                    color: Highcharts.getOptions().colors[3],
                    data: dataMapoint
                }

                ]

            });
            $('.highcharts-credits').css("display", "none");
            $('.highcharts-legend').css("margin-right", "100px");
        }
        $('.btnSearch').click(function (e) {
            Search();
            e.stopPropagation();
            e.preventDefault();
        });
    </script>
    <script type="text/javascript">
        // Prepare demo data
        // Data is joined to map using value of 'hc-key' property by default.
        // See API docs for 'joinBy' for more info on linking data and map.
        //$.ajax
        //        ({
        //            type: "POST",
        //            url: "/Handler/GetListGrowth.ashx",
        //            data: {
        //                begin_date: "01/01/2017", end_date: "25/08/2017", month: "1", year: "2017", growth: "LAPMOI", type: "top_growth", sort: "ASC"
        //            },
        //            async: false,
        //            dataType: 'json',
        //            success: function (data) {
        //                if (data != null) {
        //                    $.each(data, function (i) {
        //                        var marker = {
        //                            lat: parseFloat(data[i].LATITUDE),
        //                            lng: parseFloat(data[i].LONGTIUDE),
        //                            CIID: data[i].CIID
        //                        };
        //                        locations.push(marker);
        //                    });
        //                }
        //                else {
        //                }
        //            },
        //            error: function (result) {

        //            }
        //        });

    </script>
</body>
</html>
