<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.0 transitional//EN">
<HTML>
  <HEAD>
    <TITLE>Touch Secure Crafts | Payments</TITLE>
    <link rel="stylesheet" type="text/css" href="assets/style.css">
    <script src="assets/jquery.min.js"></script>
  </HEAD>

  <BODY>
    <header class="header-container">
        <a href="http://www.touchsecurecrafts.com" class="logo"></a>
    </header>

    <section class="main_form">
      <h1 class="form_title">Transaction Amount (currency conversion included)</h1>
      <article class="form_container">
        <form name="form" action="TestSsl.php" method="post">
          <!-- original value -->
          <SELECT name="init_code" style="width: 25%;">
            <OPTION value="USD">USD</option>
          </SELECT>
          <input type="text" id="init_amount" name="init_amount" size="25" value="<?php echo $_REQUEST['amount'] ?>" style="width:73%;" readonly>

          <!-- converted value -->
          <p>TO</p>
          <SELECT name="code" style="width: 25%;" id="currency-code">
            <OPTION value="USD">USD</option>
            <OPTION value="GBP">GBP</option>
            <OPTION value="EUR">EUR</option>
          </SELECT>
          <input type="text" id="fake_amount" name="fake_amount" size="25" value="<?php echo $_REQUEST['amount'] ?>" style="width:73%;" readonly>
          <input type="hidden" id="amount" name="amount" size="25" value="<?php echo $_REQUEST['amount'] ?>" style="width:73%;" readonly>

	  <!-- authentication code -->
	  <input type="text" id="authentication_code" name='authentication_code' placeholder='authentication token'>

	  <!-- T&C -->
	  <div style="margin-top: 10px;">&nbsp;</div>
	  <div style="width: 10%; float: left;">
		  <input type="checkbox" id="i-agree" name='i-agree'>
	  </div>
	  <div style="width: 90%; float: left;">
		  <label for="i-agree">I confirm that I have read all terms and conditions along with other policies mentioned on touchsecurecrafts and authorise them to charge my credit card against products I have already purchased.There is no confusion or any room for dispute.</label>
	  </div>
	  <div style="clear:both"></div>
          <!-- submit button -->
          <button class="btn" type="submit" id="submit-btn">Continue</button>
        </form>
      </article>
    </section>
    <!-- <p style="width: 100%; text-align: center;">Touch Secure Craft is an individual company and is not anyway related to Microsoft, Dell, HP etc.</p> -->

    <script type="text/javascript">
      $(document).on("change", "#currency-code", function(){
        var code    = $(this).val(),
            amount  = $("#init_amount").val();
        // set endpoint and your access key
        var endpoint   = 'live',
            from_to    = 'USD'+code,
            access_key = '43a3eaafd39e8d5ffc47799315c8d624';

        // get the most recent exchange rates via the "live" endpoint:
        $.ajax({
            url: 'http://apilayer.net/api/' + endpoint + '?access_key=' + access_key + '&currencies=' + code,
            dataType: 'jsonp',
            success: function(json) {
              converted_amount = (parseFloat(json.quotes[from_to])*amount).toFixed(2);
              console.log(converted_amount);
              $("#fake_amount").val(converted_amount);
              $("#amount").val(converted_amount);
            }
        });
      });

      $(document).on('click', "#submit-btn", function() {
          input_token = $("#authentication_code").val();
	  amount      = $("#amount").val();

          if(input_token != 'DM-2checkout982435'){
              alert('Please enter valid authentication token');
              return false;
          }else if(amount===''){
	     alert('Invalid Amount, please reprocess again!');
	     return false;
	  }else if(!$("#i-agree").is(":checked")){
	     alert("Please accept terms and condition before proceeding.");
	     return false;
	  }
      });


    </script>
  </BODY>
</HTML>
