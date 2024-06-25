<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('submissao','Home::submissao');
$routes->get('exibirSubmissao','Home::exibirSubmissao');
$routes->get('inserir','Home::inserir');
$routes->post('inserir','Home::inserir');
$routes->get('Avaliacao','Home::Avaliacao');
$routes->post('Avaliacao', 'Home::Avaliacao');
$routes->get('admin','Home::admin',['filter'=>'group:admin']);
$routes->get('exibirAvaliacao','Home::exibirAvaliacao');
$routes->get('verSubmissao','Home::verSubmissao');

service('auth')->routes($routes);


