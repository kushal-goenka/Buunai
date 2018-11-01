<script>
		function subscribe()
		{
			var emailpattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			var email = $('#txtemail').val();
			if(email != "")
			{
				if(!emailpattern.test(email))
				{
					$('.text-danger').remove();
					var str = '<span class="error">Invalid Email</span>';
					$('#txtemail').after('<div class="text-danger">Invalid Email</div>');

					return false;
				}
				else
				{
					$.ajax({
						url: 'index.php?route=module/newsletters/news',
						type: 'post',
						data: 'email=' + $('#txtemail').val(),
						dataType: 'json',
						
									
						success: function(json) {
						
						$('.text-danger').remove();
						$('#txtemail').after('<div class="text-danger">' + json.message + '</div>');
						
						}
						
					});
					return false;
				}
			}
			else
			{
				$('.text-danger').remove();
				$('#txtemail').after('<div class="text-danger">Email Is Require</div>');
				$(email).focus();

				return false;
			}
			

		}
	</script>
	

<h5><?php echo $heading_title; ?></h5>
<ul><li style="list-style:none;">
	<form method="post">
		<div class="form-group required">
		<div class="news-text">
<div class="text-content"><?php echo $footernewstext; ?></div>
            
            <div class="col-sm-10">
              <input type="email" name="txtemail" id="txtemail" value="" placeholder="<?php echo $entry_email; ?>" class="form-control input-lg"  /> 
    	       
            </div>
		</div>
		</div>

		<div class="form-group required">
            
            <div class="col-sm-10">
              <button type="submit" class="btn btn-default btn-lg" onclick="return subscribe();">Subscribe</button>  
    	       
            </div>
		</div>
		</form></li>
</ul>