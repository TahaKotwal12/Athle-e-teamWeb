<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gmap.aspx.cs" Inherits="NGO_PROJ.member.gmap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            Location</td>
        <td>
            <asp:Label ID="lblLocation" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
           <div>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDvqAPuhMvITVvfq0Z8FZUB83VMxuFj5SE&sensor=false&libraries=places"></script>
    <script type="text/javascript">
        var source, destination;
        var directionsDisplay;
        var directionsService = new google.maps.DirectionsService();
        google.maps.event.addDomListener(window, 'load', function () {
            new google.maps.places.SearchBox(document.getElementById('txtSource'));
            new google.maps.places.SearchBox(document.getElementById('txtDestination'));
            directionsDisplay = new google.maps.DirectionsRenderer({ 'draggable': true });
        });

        function GetRoute() {
            var mumbai = new google.maps.LatLng(18.9750, 72.8258);
            var mapOptions = {
                zoom: 7,
                center: mumbai
            };
            map = new google.maps.Map(document.getElementById('dvMap'), mapOptions);
            directionsDisplay.setMap(map);
            directionsDisplay.setPanel(document.getElementById('dvPanel'));

            //*********DIRECTIONS AND ROUTE**********************//
            source = document.getElementById("txtSource").value;
            destination = document.getElementById("txtDestination").value;

            var request = {
                origin: source,
                destination: destination,
                travelMode: google.maps.TravelMode.DRIVING
            };
            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                }
            });

            //*********DISTANCE AND DURATION**********************//
            var service = new google.maps.DistanceMatrixService();
            service.getDistanceMatrix({
                origins: [source],
                destinations: [destination],
                travelMode: google.maps.TravelMode.DRIVING,
                unitSystem: google.maps.UnitSystem.METRIC,
                avoidHighways: false,
                avoidTolls: false
            }, function (response, status) {
                if (status == google.maps.DistanceMatrixStatus.OK && response.rows[0].elements[0].status != "ZERO_RESULTS") {
                    var distance = response.rows[0].elements[0].distance.text;
                    var duration = response.rows[0].elements[0].duration.text;
                    var dvDistance = document.getElementById("dvDistance");
                    dvDistance.innerHTML = "";
                    dvDistance.innerHTML += "Distance: " + distance + "<br />";
                    dvDistance.innerHTML += "Duration:" + duration;

                } else {
                    alert("Unable to find the distance via road.");
                }
            });
        }
    </script>
    <table border="0" cellpadding="0" cellspacing="3">
        <tr>
            <td colspan="2">
                Sport Location:


                <input type="text" id="txtSource" value="<%=dn %>" style="width: 200px" name="source"/>
                &nbsp; Member Address:
                <input type="text" id="txtDestination" value="<%=sr %>" style="width: 200px"  name="dest"/>
                

                <%--<input type="text" id="txtSource" value="Ratnagiri, Maharashtra, India" style="width: 200px" name="source"/>
                &nbsp; Destination:
                <input type="text" id="txtDestination" value="Pune, Maharashtra, India" style="width: 200px"  name="dest"/>
                --%><br />
                <input type="button" value="Get Route" onclick="GetRoute()" />
              
&nbsp;
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="2">

                <div id="dvDistance" >
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div id="dvMap" style="width: 500px; height: 500px">
                </div>
            </td>
            <td>
                <div id="dvPanel" style="width: 500px; height: 500px">
                </div>
            </td>
        </tr>
    </table>
    <br />
    </div></td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
</table>
    </form>
</body>
</html>
