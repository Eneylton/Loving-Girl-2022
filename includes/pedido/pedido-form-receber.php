<?php

$resultados = '';
$total = 0;
foreach ($produtos as $item) {
   $total += $item->subtotal;
   $resultados .= '<tr>
                     <td>

                     <div class="icheck-red ">
                     <input type="checkbox" value="' . $item->produtos_id . '" name="id[]" id="[' . $item->produtos_id . ']">
                     <label for="[' . $item->produtos_id . ']"></label>
                     </div>
                     </td>
                      <td style="display:none">' . $item->codigo . '</td>
                      <td>' . $item->barra . '</td>
                      <td style="text-transform:uppercase">' . $item->nome . '</td>
                      <td>

                      <span style="font-size:16px" class="' . ($item->qtd <= 3 ? 'badge badge-danger' : 'badge badge-success') . '">' . $item->qtd . '</span>

                      </td>

                      <td> R$ ' . number_format($item->valor_compra, "2", ",", ".") . '</td>
                      <td> <button type="button" class="btn btn-dark"> R$ ' . number_format($item->subtotal, "2", ",", ".") . '</button></td>

                      </tr>

                      ';
}

$resultados = strlen($resultados) ? $resultados : '<tr>
                                                     <td colspan="6" class="text-center" > Nenhuma Produto Encontrada !!!!! </td>
                                                     </tr>';

unset($_GET['status']);
unset($_GET['pagina']);
$gets = http_build_query($_GET);

//PAGINAÇÂO

$paginacao = '';
$paginas = $pagination->getPages();

foreach ($paginas as $key => $pagina) {
   $class = $pagina['atual'] ? 'btn-primary' : 'btn-secondary';
   $paginacao .= '<a href="?pagina=' . $pagina['pagina'] . '&' . $gets . '">

                  <button type="button" class="btn ' . $class . '">' . $pagina['pagina'] . '</button>
                  </a>';
}

?>

<section class="content">
   <div class="container-fluid">
      <div class="row">
         <div class="col-12">
            <div class="card card-purple">
               <div class="card-header">

                  <form method="get">
                  <div class="row">
                        <div class="col-6 d-flex align-items-end">

                          
                           <input placeholder="Pesquisar" type="text"  class="form-control col-6" name="buscar" value="<?= $buscar ?>" autofocus>
                           <button type="submit" class="btn btn-warning" name="">
                              <i class="fas fa-search"></i>

                              Pesquisar

                           </button>

                        </div>


                </div>
                  </form>
               <br>
               <form id="form1" action="receber-insert.php" method="post">
                  <table id="example1" class="table table-dark table-hover table-striped">
                     <thead>
                        <tr>
                           <td colspan="7">
                              <input type="submit" name="submit" value="Receber" onclick="return confirm('Receber todos os produtos!!!')" class="btn btn-primary">                      
  
                              <button type="submit" name="enviar" value="imprimir" class="btn btn-dark float-right"> <i class="fas fa-print"></i> &nbsp; &nbsp; IMPRIMIR RELATÓRIO</button>

                           </td>

                           
                           
                        </tr>
                        <tr>

                           <th>
                              <div class="icheck-warning d-inline">
                                 <input type="checkbox" id="select-all">
                                 <label for="select-all">
                                 </label>
                              </div>
                           </th>

                           <th> BARRA </th>
                           <th> NOME </th>
                           <th> QTD </th>
                           <th> VALOR UNITÁRO </th>
                           <th> SUBTOTAL </th>
                        </tr>
                     </thead>
                     <tbody>
                        <?= $resultados ?>
                     </tbody>

                     <tr>
                        <td colspan="5" style="text-align: right; ">TOTAL</td>

                        <td>

                           <button type="submit" class="btn btn-primary btn-lg">
                              R$ <?= number_format($total, "2", ",", ".") ?>
                           </button>
                        </td>
                     </tr>

                  </table>
            </div>

         </div>

      </div>
      </form>

   </div>

   </div>
</section>

<?= $paginacao ?>
