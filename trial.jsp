<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MEERA Data</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/scrolling-nav.css" rel="stylesheet">

</head>
<body>

<div class="form-group">
 <label class="col-md-2 control-label" for="selectbasic">Start Mon..</label>
  <div class="col-md-2">
    <select id="stmon" name="stmon" required="required" class="form-control">
      <option value="1">JAN</option>
      <option value="2">FEB</option>
      <option value="3">MAR</option>
      <option value="4">APR</option>
      <option value="5">MAY</option>
      <option value="6">JUN</option>
      <option value="7">JUL</option>
      <option value="8">AUG</option>
      <option value="9">SEP</option>
      <option value="10">OCT</option>
      <option value="11">NOV</option>
      <option value="12">DEC</option>
    </select>
  </div>
  
  <div class="well">
    <b> With select all and filter:</b>
<select id="ddlCars2" multiple="multiple">
<option value="Accord">Accord</option>
<option value="Duster">Duster</option>
<option value="Esteem">Esteem</option>
<option value="Fiero">Fiero</option>
<option value="Lancer">Lancer</option>
<option value="Phantom">Phantom</option>
</select>

<div class="form-group">
    <label class="col-md-4 control-label" for="rolename">Parameters</label>
    <div class="col-md-4">
        <select id="dates-field2" class="multiselect-ui form-control" multiple="multiple">
            <option value="cheese">Cheese</option>
            <option value="tomatoes">Tomatoes</option>
            <option value="mozarella">Mozzarella</option>
            <option value="mushrooms">Mushrooms</option>
            <option value="pepperoni">Pepperoni</option>
            <option value="onions">Onions</option>
        </select>
    </div>
</div>


<script type="text/javascript">
$(function() {
    $('.multiselect-ui').multiselect({
        includeSelectAllOption: true
    });
});
</script>


</div>
  
</div>
</body>
</html>
