<?php $i = 0; ?>
<?php foreach($countries as $country){ ?>
<?php if($i==0){ ?>
<li class="itemCity active"><a href="javascript:void(0);" onclick="changeCountry('<?php echo $country['countryName']?>','<?php echo DIR_ROOT_NAME?>')"><img src="<?php echo $country['image']; ?>"><span><?php echo $country['countryName'] ?></span></a></li>
<?php }else{ ?>
<li class="itemCity"><a href="javascript:void(0);" onclick="changeCountry('<?php echo $country['countryName']?>','<?php echo DIR_ROOT_NAME?>')"><img src="<?php echo $country['image']; ?>"><span><?php echo $country['countryName'] ?></span></a></li>
<?php } ?>
<?php $i++; } ?>