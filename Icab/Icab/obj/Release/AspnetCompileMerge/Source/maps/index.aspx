<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Icab.maps.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?v=3&key=AIzaSyB9TfxrcpyfVLg6QCDTjdjEyDM3dOIFuiI&language=en"></script>
    <script src="../assets/js/markerclusterer.js"></script>
    <script src="../assets/js/infobox.js"></script>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Vị trí khách hàng</title>
    <style>
        .sidenav {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }

        .sidenav a {
            padding: 8px 8px 8px 32px;
            text-decoration: none;
            font-size: 18px;
            color:  #f1f1f1;
            display: block;
            transition: 0.3s;
        }

        .sidenav a:hover, .offcanvas a:focus{
            color: #818181;
        }

        .sidenav .closebtn {
            position: absolute;
            top: 0;
            right: 25px;
            font-size: 36px;
            margin-left: 50px;
        }
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
        transition: margin-left .5s;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      .infoBox{
            width: 250px !important;
            height: 190px;
            background: transparent url(../assets/img/1111.png) no-repeat left top;
            margin-top: 15px;
            line-height: 20px;
            font-size: 12px;
            margin-bottom: 50px;
      }
      /*.infoBox:before{
          background-image: url(../assets/img/popup-map.png) ;
            background-repeat: no-repeat;
          background: red url(../assets/img/1111.png) no-repeat left top;
          content : " ";
          width: 0;
          height: 0;
          border-left: 10px solid transparent;
          border-right: 10px solid transparent;
          border-bottom: 10px solid #fff;
          position:absolute;
          top:-10px;
          left:130px;
        }*/
      .infobox_wrapper{
          padding: 15px;
      }

    </style>
</head>
<body onload="initMap()">
    <div id="mySidenav" class="sidenav">
      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
      <a href="/maps/highmap.aspx">Bản đồ tăng trưởng</a>
        <a href="#">Báo mất tín hiệu</a>
      <a href="#">Quản lý vị trí</a>
      <a href="#">Thông báo</a>
      <a href="#">Hỗ trợ</a>
    </div>
    <div id="map"></div>
    <script>
        var styles = [
          [{
              url: 'https://googlemaps.github.io/js-marker-clusterer/images/people35.png',
              height: 35,
              width: 35,
              anchor: [16, 0],
              textColor: '#ff00ff',
              textSize: 10
          }, {
              url: 'https://googlemaps.github.io/js-marker-clusterer/images/people45.png',
              height: 45,
              width: 45,
              anchor: [24, 0],
              textColor: '#ff0000',
              textSize: 11
          }, {
              url: 'https://googlemaps.github.io/js-marker-clusterer/images/people55.png',
              height: 55,
              width: 55,
              anchor: [32, 0],
              textColor: '#ffffff',
              textSize: 12
          }],
          [{
              url: 'https://googlemaps.github.io/js-marker-clusterer/images/conv30.png',
              height: 27,
              width: 30,
              anchor: [3, 0],
              textColor: '#ff00ff',
              textSize: 10
          }, {
              url: 'https://googlemaps.github.io/js-marker-clusterer/images/conv40.png',
              height: 36,
              width: 40,
              anchor: [6, 0],
              textColor: '#ff0000',
              textSize: 11
          }, {
              url: 'https://googlemaps.github.io/js-marker-clusterer/images/conv50.png',
              width: 50,
              height: 45,
              anchor: [8, 0],
              textSize: 12
          }],
          [{
              url: 'https://googlemaps.github.io/js-marker-clusterer/images/heart30.png',
              height: 26,
              width: 30,
              anchor: [4, 0],
              textColor: '#ff00ff',
              textSize: 10
          }, {
              url: 'https://googlemaps.github.io/js-marker-clusterer/images/heart40.png',
              height: 35,
              width: 40,
              anchor: [8, 0],
              textColor: '#ff0000',
              textSize: 11
          }, {
              url: 'https://googlemaps.github.io/js-marker-clusterer/images/heart50.png',
              width: 50,
              height: 44,
              anchor: [12, 0],
              textSize: 12
          }],
          [{
              url: 'https://googlemaps.github.io/js-marker-clusterer/images/pin.png',
              height: 48,
              width: 30,
              anchor: [-18, 0],
              textColor: '#ffffff',
              textSize: 10,
              iconAnchor: [15, 48]
          }]
        ];
        // click lostsignal
        $('.lostsignal').click(function () {
            alert(1);
            //alert($(this).getAttribute('id'));
        });
        //openNav();
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
            //document.getElementById("map").style.marginLeft = "250px";
            document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            //document.getElementById("map").style.marginLeft = "0";
            document.body.style.backgroundColor = "white";
        }
        //$("body").on("mousemove", function (event) {
        //    if (event.pageX < 1) {
        //        openNav();
        //    }
        //});

        var locations = [];
        var locationName = [];
        var boxList = [];
        $.ajax
                ({
                    type: "GET",
                    url: "/Handler/GetAllLocations.ashx",
                    data: {},
                    async: false,
                    dataType: 'json',
                    success: function (data) {
                        if (data != null) {
                            $.each(data, function (i) {
                                var marker = {
                                    lat: parseFloat(data[i].LATITUDE),
                                    lng: parseFloat(data[i].LONGTIUDE),
                                    CIID: data[i].CIID
                                };
                                locations.push(marker);
                            });
                        }
                        else {
                        }
                    },
                    error: function (result) {

                    }
                });

        function initMap() {

            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 11,
                center: { lat: 21.0249704, lng: 105.8213545 },
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });


            /***********menu***********/
            var chicago = { lat: 41.85, lng: -87.65 };
            function MenuControl(controlDiv, map) {

                // Set CSS for the control border.
                var controlUI = document.createElement('div');
                controlUI.style.backgroundColor = '#fff';
                controlUI.style.border = '2px solid #fff';
                controlUI.style.borderRadius = '3px';
                controlUI.style.boxShadow = '0 2px 6px rgba(0,0,0,.3)';
                controlUI.style.cursor = 'pointer';
                controlUI.style.marginBottom = '22px';
                controlUI.style.textAlign = 'center';
                controlUI.title = 'Click to open menu';
                controlUI.style.marginTop = '5px';
                controlDiv.appendChild(controlUI);

                // Set CSS for the control interior.
                var controlText = document.createElement('div');
                controlText.style.color = 'rgb(25,25,25)';
                controlText.style.fontFamily = 'Roboto,Arial,sans-serif';
                controlText.style.fontSize = '16px';
                controlText.style.lineHeight = '38px';
                controlText.style.paddingLeft = '5px';
                controlText.style.paddingRight = '5px';
                controlText.innerHTML = '&#9776;';
                controlUI.appendChild(controlText);

                // Setup the click event listeners: simply set the map to Chicago.
                controlUI.addEventListener('click', function () {
                    //map.setCenter(chicago);
                    openNav();
                });

            }
            var centerControlDiv = document.createElement('div');
            var centerControl = new MenuControl(centerControlDiv, map);
            centerControlDiv.index = 1000;
            map.controls[google.maps.ControlPosition.TOP_LEFT].push(centerControlDiv);
            /***********End menu***********/
            // Create an array of alphabetical characters used to label the markers.
            var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
            var infowindow = new google.maps.InfoWindow({});

            var markers = locations.map(function (location, i) {
                var myLatLngMaker = { lat: location.lat, lng: location.lng };
                console.log(111111);
                var marker = new google.maps.Marker({
                    position: myLatLngMaker,
                    draggable: true
                    //title: location.CIID
                    //label: labels[i % labels.length],
                    //title: 'Hello World!'+i
                });

                marker.metadata = { type: "point", id: location.CIID };
                google.maps.event.addListener(marker, 'click', function (e) {
                    var ciid = marker.metadata.id;
                    $.ajax
                    ({
                        type: "POST",
                        url: "/Handler/GetInfoLocations.ashx",
                        data: { "ciid": ciid },
                        async: false,
                        dataType: 'json',
                        success: function (data) {
                            if (data != null) {
                                var content = '<div class="infobox_wrapper"><b>' + data[0].CIFULLNAME.toUpperCase() + '</b></br>';
                                content += '' + data[0].LOFULLADDRESS + '</br>';
                                content += '' + data[0].PHONENUMBER + '</br>';
                                //content += '<button class="lostsignal" id="lostsignal' + data[0].CIID+ '">Mất tín hiệu</button></div>';
                                var div = document.createElement('div');
                                div.className = "infowindow";
                                div.innerHTML = content;
                                var myOptions = {
                                    content: content
                                    , disableAutoPan: false
                                    , maxWidth: 0
                                    , pixelOffset: new google.maps.Size(-140, 0)
                                    , zIndex: null
                                    , boxStyle: {
                                    }
                                    , pixelOffset: new google.maps.Size(-125, 10)
                                    , closeBoxMargin: "2px 2px 2px 2px"
                                    //, closeBoxURL: "http://www.google.com/intl/en_us/mapfiles/close.gif"
                                    , closeBoxURL: ""
                                    , infoBoxClearance: new google.maps.Size(1, 1)
                                    , isHidden: false
                                    , pane: "floatPane"
                                    , enableEventPropagation: false
                                    , alignBottom: true
                                };
                                var ib = new InfoBox();
                                ib.setOptions(myOptions);
                                //infowindow.setContent(div);
                                //infowindow.open(map, marker);
                                //boxList[boxList.length - 1].open(map, marker);
                                //google.maps.event.addDomListener(div, 'click', function () { alert('clicked!') });
                                ib.close();
                                ib.open(map, marker);
                                ib.addListener("domready", function () {
                                    $(".lostsignal").on("click", function () {
                                        var id = $(this).attr("id");
                                        alert("Clicked!" + id);
                                    });
                                });
                                google.maps.event.addListener(map, "click", function (event) {
                                    if (ib) {
                                        ib.close();
                                    }
                                });


                            }
                            else {
                            }
                        },
                        error: function (result) {
                        }
                    });
                });


                return marker;
            });

            //google.maps.event.addListener(map, "click", function (event) {
            //    if (ib) {
            //        ib.close();
            //    }
            //});

            // Add a marker clusterer to manage the markers.
            var markerCluster = new MarkerClusterer(map, markers,
                {
                    //styles: styles[-1],
                    imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'
                });
        }
    </script>    
<%--    </div>
    </form>--%>
</body>
</html>
