<?php foreach($countries as $country){ ?>
    <li class="itemCity"><a href="javascript:void(0);" onclick="changeCountry(<?php echo $country; ?>)"><img src="<?php echo $country['image']; ?>"><span><?php echo $country['countryName'] ?></span></a></li>
<?php } ?>