<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('exibirSubmissao','Home::exibirSubmissao');
//$routes->get('inserir','Home::inserir');
//$routes->post('inserir','Home::inserir');
//$routes->get('Avaliacao','Home::Avaliacao');
//$routes->post('Avaliacao', 'Home::Avaliacao');

//Administrador
$routes->get('/admin','Home::HomeAdm');
$routes->get('/admin/Avaliacao','Home::Avaliacao',['filter'=>'group:admin']);
$routes->post('/admin/Avaliacao','Home::Avaliacao',['filter'=>'group:admin']);
$routes->get('/admin/inserirADM','Home::inserirADM',['filter'=>'group:admin']);
$routes->post('/admin/inserirADM','Home::inserirADM',['filter'=>'group:admin']);
$routes->get('/admin/verSubmissao','Home::verSubmissao',['filter'=>'group:admin']);
$routes->get('/admin/exibirAvaliacao','Home::exibirAvaliacao',['filter'=>'group:admin']);


//Aluno
$routes->get('/user','Home::HomeAluno');
$routes->get('/user/inserir','Home::inserir');
$routes->post('/user/inserir','Home::inserir',['filter'=>'group:user']);

//$routes->get('exibirAvaliacao','Home::exibirAvaliacao');
//$routes->get('verSubmissao','Home::verSubmissao');

service('auth')->routes($routes);


