<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Login</title>
  <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<section align='left'>
<b>
    <%@ page import="java.io.*" %>
	<%
	try {
			Process process = Runtime.getRuntime().exec("cmd dir");
		 
			BufferedReader reader = new BufferedReader(
					new InputStreamReader(process.getInputStream()));
			String line;
			while ((line = reader.readLine()) != null) {
				System.out.println(line);
			}
		 
			reader.close();
		 
		} 
	catch (IOException e) {
			e.printStackTrace();
		}
    %>	
</b>
<hr width="20%" align="left"><b>Datatype:</b><br>
<form>
<table style="width:20%">
<tr	align="right"><td>    MERRA <input name="datatype" type="radio" value="MERRA"/></td>
    <td>	MERRA 2 <input name="datatype" type="radio" value="MERRA2"/></td>
<tr align="right"><td>	NCEP NCAR<input name="datatype" type="radio" value="NCEP NCAR"/></td>
	<td>	ERA Interim<input name="datatype" type="radio" value="ERA Interim"/></td>
<tr align="right"><td>	CFSR<input name="datatype" type="radio" value="CFSR"/><br /></td>
	<td>	JRA-55<input name="datatype" type="radio" value="JRA-55"/><br /></td>
</table>
<hr width="20%" align="left">
<b>Location:</b>
<table style="width:20%">
<tr	align="right"><td>	Latitude <input type="text" id="lat" name="lat" />
<tr	align="right"><td>	Longitude <input type="text" id="lon" name="lon" />
</table>
<hr width="20%" align="left">
<aside align="right">
<div id="map" style="width:400px;height:400px;background:yellow;float=right"></div>

<script>
function myMap() {
var mapOptions = {
    center: new google.maps.LatLng(51.5, -0.12),
    zoom: 10,
    mapTypeId: google.maps.MapTypeId.ROADMAP
}
var map = new google.maps.Map(document.getElementById("map"), mapOptions);
}
</script>
									<!-- NOTE FOR THE MAP TO BE DISPLAYED A KEY IS TO BE OBTAINED FROM GOOGLE FIRST, WE WILL DO THAT LATER AS THE SITE 
									MUST BE UP FOR IT-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
</aside>
</form>
</body>
</html>
