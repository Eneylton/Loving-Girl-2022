<?php
require __DIR__ . '../../../vendor/autoload.php';

use  \App\Db\Pagination;
use   \App\Entidy\Compra;
use     \App\Session\Login;

define('TITLE', 'Receber Compras');
define('BRAND', 'Compras');


Login::requireLogin();


$buscar = filter_input(INPUT_GET, 'buscar', FILTER_SANITIZE_STRING);

$condicoes = [
    strlen($buscar) ? 'nome LIKE "%' . str_replace(' ', '%', $buscar) . '%" 
                       or 
                       codigo LIKE "%' . str_replace(' ', '%', $buscar) . '%"
                       or 
                       barra LIKE "%' . str_replace(' ', '%', $buscar) . '%" ' : null
];

$condicoes = array_filter($condicoes);

$where = implode(' AND ', $condicoes);

$qtd = Compra::getQtd($where);


$pagination = new Pagination($qtd, $_GET['pagina'] ?? 1, 40);

$produtos = Compra::getList('*','compras','status = 1');


include __DIR__ . '../../../includes/layout/header.php';
include __DIR__ . '../../../includes/layout/top.php';
include __DIR__ . '../../../includes/layout/menu.php';
include __DIR__ . '../../../includes/layout/content.php';
include __DIR__ . '../../../includes/pedido/pedido-form-receber.php';
include __DIR__ . '../../../includes/layout/footer.php';
