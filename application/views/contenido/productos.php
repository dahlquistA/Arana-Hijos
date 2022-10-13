<div class="container my-5 py-5" style="background: rgba(0,0,0,.7)"> <h3 class=" text-white text-center ">Catálogo de Productos</h1>


  <div class="row d-flex justify-content-around px-5">

      <?php foreach ($productos as $row) {
    ?>
        <?php if (!($row->estado == 0) && ($row->stock > 0)) {?>


      <div class="col-xs-6 col-sm-6 col-md-5 col-lg-4 col-xl-3 pt-5">
        <div class="card card_galeria text-white"  >
          <img class="galeria_img " src="<?=base_url('uploads/imagenes_producto/') . $row->img;?>" alt="Card image cap" >
          <div class="card-body">
            <p class="card-title text-center"><?php echo $row->descripcion ?></p>
            <p class="card-text"> </p>
            <p><b>Precio: $</b><?php echo $row->precio; ?> ARS</p>
            <p class="card-text"> </p>
            <p><b>Stock: </b><?php echo $row->stock; ?> unidades</p>
          </div>
        </div>
      </div>

      <?php }?>
     <?php }?>

  </div>
    <?php echo $pagination ?>
</div>
