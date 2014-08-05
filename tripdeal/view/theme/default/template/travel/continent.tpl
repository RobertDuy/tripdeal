<?php foreach($continents as $continent){ ?>
<li><a href="javascript:void(0);"
       onclick="$('.js_cont_list').removeClass('active'); $(this).addClass('active'); changeContinent(<?php echo $continent?>)"><?php echo $continent['continentName'] ?></a>
</li>
<?php } ?>
