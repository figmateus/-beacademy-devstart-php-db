<?php

declare(strict_types=1);

namespace App\Controller;

use App\Connection\Connection;

class CategoryController extends AbstractController
{
    public function listAction(): void
    {
        //Abertura da Conexão
        $con = Connection::getConnection();

        //Preparação da Query
        $result = $con->prepare('SELECT * FROM tb_category');
        $result->execute();

        //Passa os dados para a View
        parent::render('category/list', $result);
    }

    public function addAction():void
    {
        if ($_POST){
            $name = $_POST['name'];
            $description = $_POST['description'];

            $query = "INSERT INTO tb_category (name, description) VALUES ('{$name}','{$description}')";

            $con = Connection::getConnection();

            $result = $con->prepare($query);
            $result->execute();

            echo 'Pronto, categoria cadastrada';
        }

        parent::render('category/add');
    }

    public function updateAction():void
    {
        $id = $_GET['id'];
        $con = Connection::getConnection();

        if ($_POST){
            $newName = $_POST['name'];
            $newDescription = $_POST['description'];

            $queryUpdate = "UPDATE tb_category SET name='{$newName}', description='{$newDescription}' WHERE id='{$id}'";

            $result = $con->prepare($queryUpdate);
            $result->execute();

            echo 'Pronto, categoria atualizada';
        }

        $query = "SELECT * FROM tb_category WHERE id='{$id}'";

        $result = $con->prepare($query);
        $result->execute();

        $data = $result->fetch(\PDO::FETCH_ASSOC);

        parent::render('category/edit', $data);
    }

    public function removeAction():void
    {
        $con = Connection::getConnection();
        $id = $_GET['id'];
        $query = "DELETE FROM tb_category WHERE id='{$id}'";

        $result = $con->prepare($query);
        $result->execute();

        echo 'Pronto, categoria excluída';

    }
}