
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

<!-- The #page-top ID is part of the scrolling feature - the data-spy and data-target are part of the built-in Bootstrap scrollspy function -->

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="padding-top: 0px;padding-bottom: 0px;">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="../index.html">Home</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a class="page-scroll" href="#page-top"></a>
                    </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                    <li>
                    	<a class="page-scroll pull-right" href="#">Sign Out</a>
                    </li>
                	</ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Intro Section -->
    <section id="intro" class="intro-section" style="padding-top: 75px;">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                <form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>MEERA Data</legend>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-2 control-label" for="selectbasic">Type of data</label>
  <div class="col-md-10">
    <select id="selectbasic" name="selectbasic" class="form-control">
      <option value="1">MERRA2 tavg1_2d_slv_NX: 2d, 1-Hourly, Time-Averaged, Single-Level, Assimilation, Single-Level Diagnostics V5.12.4(tavg1_2d_slv_Nx)</option>
    </select>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-1 control-label" for="textinput">North</label>  
  <div class="col-md-2">
  <input id="textinput" name="north" value="41.836" disabled="disabled" type="text" required="required" class="form-control input-md">
  </div>
  <label class="col-md-1 control-label" for="textinput">East</label>  
  <div class="col-md-2">
  <input id="textinput" name="east" value="100" disabled="disabled" type="text" required="required" class="form-control input-md">
  </div>
  <label class="col-md-1 control-label" for="textinput">West</label>  
  <div class="col-md-2">
  <input id="textinput" name="west" value="67.148" disabled="disabled" type="text" required="required" class="form-control input-md">
  </div>
  <label class="col-md-1 control-label" for="textinput">South</label>  
  <div class="col-md-2">
  <input id="textinput" name="south" value="5.625" disabled="disabled" type="text" required="required" class="form-control input-md">
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label" for="selectbasic">Start Yr.</label>
  <div class="col-md-2">
    <select id="styear" name="styear" required="required" class="form-control">
      <script>
      	var myDate = new Date();
      	var styear = myDate.getFullYear();
      	for(var i = 1980; i < styear+1; i++){
      		document.write('<option value="'+i+'">'+i+'</option>');
      	}
      </script>
    </select>
  </div>
  <label class="col-md-2 control-label" for="selectbasic">Start Mon..</label>
  <div class="col-md-2">
    <select id="stmon" name="stmon" required="required" class="form-control">
      <option value="1">JAN</option>
      <option value="1">FEB</option>
      <option value="1">MAR</option>
      <option value="1">APR</option>
      <option value="1">MAY</option>
      <option value="1">JUN</option>
      <option value="1">JUL</option>
      <option value="1">AUG</option>
      <option value="1">SEP</option>
      <option value="1">OCT</option>
      <option value="1">NOV</option>
      <option value="1">DEC</option>
    </select>
  </div>
  <label class="col-md-2 control-label" for="selectbasic">Start Date.</label>
  <div class="col-md-2">
    <select id="stdate" name="stdate" required="required" class="form-control">
     <script>
     	for(var i = 1; i < 32; i++){
     		document.write('<option value="'+i+'">'+i+'</option>')
     	}
     </script>
    </select>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label" for="selectbasic">End Yr.</label>
  <div class="col-md-2">
    <select id="endyear" name="endyear" required="required" class="form-control">
      <script>
      	var myDate = new Date();
      	var endyear = myDate.getFullYear();
      	for(var i = 1980; i < endyear+1; i++){
      		document.write('<option value="'+i+'">'+i+'</option>');
      	}
      </script>
    </select>
  </div>
  <label class="col-md-2 control-label" for="selectbasic">End Mon..</label>
  <div class="col-md-2">
    <select id="endmon" name="endmon" required="required" class="form-control">
      <option value="1">JAN</option>
      <option value="1">FEB</option>
      <option value="1">MAR</option>
      <option value="1">APR</option>
      <option value="1">MAY</option>
      <option value="1">JUN</option>
      <option value="1">JUL</option>
      <option value="1">AUG</option>
      <option value="1">SEP</option>
      <option value="1">OCT</option>
      <option value="1">NOV</option>
      <option value="1">DEC</option>
    </select>
  </div>
  <label class="col-md-2 control-label" for="selectbasic">End Date.</label>
  <div class="col-md-2">
    <select id="enddate" name="enddate" required="required" class="form-control">
     <script>
     	for(var i = 1; i < 32; i++){
     		document.write('<option value="'+i+'">'+i+'</option>')
     	}
     </script>
    </select>
  </div>
</div>

<legend>Parameters</legend>
<div class="form-group">
  <label class="col-md-3 control-label" for="textinput">PS=Surface Pressure</label>  
  <label class="col-md-3 control-label" for="textinput">T10M=10-meter air temperature</label>  
  <label class="col-md-3 control-label" for="textinput">T2M=2-meter air temperature</label>  
  <label class="col-md-3 control-label" for="textinput">U10M=10-meter eastward wind</label>  
  <label class="col-md-3 control-label" for="textinput">U2M=2-meter eastward wind</label>  
  <label class="col-md-3 control-label" for="textinput">U50M= eastward wind at 50 meters</label>  
  <label class="col-md-3 control-label" for="textinput">V10M=10-meter northward wind</label>  
  <label class="col-md-3 control-label" for="textinput">V2M=2-meter northward wind</label>  
  <label class="col-md-3 control-label" for="textinput">V50M= northward wind at 50 meters</label>  
</div>
<div class="form-group">
  <div class="col-md-12">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary" style="width: 84px;height: 38px;">Submit</button>
  </div>
</div>

</fieldset>
</form>

                </div>
            </div>
        </div>
    </section>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Scrolling Nav JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/scrolling-nav.js"></script>

</body>

</html>
