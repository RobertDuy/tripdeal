<div class="cityNumber">
    <?php echo count($cities); ?> cities available for <strong> <?php echo $countryName; ?> </strong>
</div>
<ul class="liCiy">
    <?php foreach($cities as $city){ ?>
    <li><a href="javascript:void(0);"><?php echo $city['cityName'] ?></a></li>
    <?php } ?>
    <div class="clearfix"></div>
</ul>