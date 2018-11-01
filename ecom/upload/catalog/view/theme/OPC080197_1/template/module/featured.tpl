<div class="box">
<div class="featured">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
	<?php 
		$sliderFor = 5;
		$productCount = sizeof($products); 
	?>
	<?php if ($productCount >= $sliderFor): ?>
		<div class="customNavigation">
			<a class="fa prev fa-arrow-left">&nbsp;</a>
			<a class="fa next fa-arrow-right">&nbsp;</a>
		</div>	
	<?php endif; ?>	
	
	<div class="box-product <?php if ($productCount >= $sliderFor){?>product-carousel<?php }else{?>productbox-grid<?php }?>" id="<?php if ($productCount >= $sliderFor){?>featured-carousel<?php }else{?>featured-grid<?php }?>">
  <?php foreach ($products as $product) { ?>
  <div class="<?php if ($productCount >= $sliderFor){?>slider-item<?php }else{?>product-items<?php }?>">
    <div class="product-block product-thumb transition">
	  <div class="product-block-inner">	  	
		<div class="image">
			<?php if ($product['thumb_swap']) { ?>	
											<a href="<?php echo $product['href']; ?>">
											<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />						
											<img class="img-responsive hover-image" src="<?php echo $product['thumb_swap']; ?>" alt="<?php echo $product['name']; ?>"/>
											</a>
										<?php } else {?>
										<a href="<?php echo $product['href']; ?>">
											<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />						
										</a>
										<?php } ?>	
	        <?php if (!$product['special']) { ?>       
			 <?php } else { ?>
			<span class="saleicon sale">Sale</span>         
			 <?php } ?>	
		</div>
		<div class="hoverblock">
		<?php if ($product['rating']) { ?>
					<div class="rating">
					<?php for ($i = 1; $i <= 5; $i++) { ?>
					<?php if ($product['rating'] < $i) { ?>
					<span class="fa fa-stack"><i class="fa fa-star off fa-stack-2x"></i></span>
					<?php } else { ?>
					<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
					<?php } ?>
					<?php } ?>
					</div>
		<?php } ?>
		
		<div class="button-group">
				<button type="button" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="addtocart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php //echo $button_cart; ?><i class="fa fa-shopping-cart"></i></button>
				<button class="wishlist" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
				<button class="compare" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
				<div class="quickview-button" data-toggle="tooltip" title="<?php echo $button_quick; ?>">
									<a class="quickbox" href="<?php echo $product['quick']; ?>"><i class="fa fa-eye" aria-hidden="true"></i></a>
									</div>
			</div>
			</div>
			</div>
			</div>
			<div class="caption">
				<h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
				<?php /*?><p class="desc"><?php echo $product['description']; ?></p><?php */?>
				<?php if ($product['price']) { ?>
				<p class="price">
				  <?php if (!$product['special']) { ?>
				  <?php echo $product['price']; ?>
				  <?php } else { ?>
				  <span class="price-old"><?php echo $product['price']; ?></span><span class="price-new"><?php echo $product['special']; ?></span> 
				  <?php } ?>
				  <?php if ($product['tax']) { ?>
				  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
				  <?php } ?>
				</p>
				<?php } ?>
				<div class="button-group">
				<button type="button" class="addtocart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></button>
				<button class="wishlist" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
				<button class="compare" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
			</div>
			</div>
		    </div>
  
  <?php } ?>
</div>
  </div>
</div>
<span class="featured_default_width" style="display:none; visibility:hidden"></span>
</div>