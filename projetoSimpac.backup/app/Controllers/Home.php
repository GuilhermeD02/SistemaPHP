<?php

namespace App\Controllers;
use App\Models\SubmissaoModel;
use App\Models\Avalicao;


class Home extends BaseController
{
    public function index(): string
    {
        return view('welcome_message');
    }

    public function exibirSubmissao()
    {       
        $submissaoModel= new SubmissaoModel();
        $dados = [
            'informacoes'=>$submissaoModel->paginate(10),
            'pager' =>$submissaoModel->pager
        ];
        return view('exibirSubmissao',$dados);
 
    }
    public function inserir()
    {
        $data['titulo'] = 'Cadastrar um artigo para o SIMPAC';
        $data['acao'] = 'inserir';

        $data['msg'] = ' ';
        
        if($this->request->getMethod() === 'post')
        {
        $SubmissaoModel = new \App\Models\SubmissaoModel();
        $SubmissaoModel->set('nometrab', $this->request->getPost('nometrab'));
        $SubmissaoModel->set('autor', $this -> request -> getPost('autor'));
        $SubmissaoModel->set('curso', $this -> request -> getPost('curso'));
        if ($SubmissaoModel->insert())
        {
        // deu certo
        $data['msg'] = 'Artigo inserido com sucesso';
        }
        else
        {
        // deu errado
        $data['msg'] = 'Erro ao inserir Artigo';
        }
        }
        echo View('SubmeterArtigo', $data);
        }

public function Avaliacao(){
  
    $data['titulo'] = 'Avaliar um artigo/trabalho do SIMPAC';
    $data['acao'] = 'inserir';
    $data['msg'] = ' ';
    if($this->request->getMethod() === 'post')
    {
    $AvaliacaoModel = new \App\Models\AvaliacaoModel();
    $AvaliacaoModel->set('idAluno', $this->request->getPost('idAluno'));
    $AvaliacaoModel->set('idAvaliador', $this -> request -> getPost('idAvaliador'));
    $AvaliacaoModel->set('introducao', $this -> request -> getPost('introducao'));
    $AvaliacaoModel->set('organizacao', $this -> request -> getPost('organizacao'));
    $AvaliacaoModel->set('repeticoes', $this -> request -> getPost('repeticoes'));
    $AvaliacaoModel->set('apresentacao', $this -> request -> getPost('apresentacao'));
    $AvaliacaoModel->set('conclusao', $this -> request -> getPost('conclusao'));
    $AvaliacaoModel->set('tempo', $this -> request ->getPost('tempo'));

    if ($AvaliacaoModel->insert())
    {
    $data['msg'] = 'Avaliação do trabalho cadastrada com sucesso';
    }
    else
    {
    $data['msg'] = 'Erro ao cadastrar Avaliação do trabalho';   
    }
    }
    echo View('Avaliacao', $data);
    }

public function admin():string{
    return view('admin/administracao');
}

public function verSubmissao() {
    $verSubmissao = new SubmissaoModel();
$listaSubmissao = $verSubmissao->asArray()->findAll();

$table = new \CodeIgniter\View\Table();
$table->setHeading('ID', 'Nome do Trabalho', 'Curso', 'Autor', 'Situação');

$table->setTemplate([
    'table_open' => '<table class="table table-bordered table-striped">'
]);
$data = [
    'titulo' => "Ver Trabalhos Submetidos",
    'tabela' => $table->generate($listaSubmissao),
    'inf' => $verSubmissao->paginate(10),
    'pager' => $verSubmissao->pager
    ];
    
return view('verSubmissao', $data);
}
}




