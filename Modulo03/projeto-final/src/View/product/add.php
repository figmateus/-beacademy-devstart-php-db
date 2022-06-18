<h1>Cadastrar Produto</h1>

<form action="" method="post">

    <label for="category">Categoria</label>
    <select name="category" id="category" class="form-select mb-3">
        <option selected>--Selecione--</option>

        <?php
            while ($category = $data->fetch(\PDO::FETCH_ASSOC)){
                extract($category);
                echo "<option value='{$id}'>{$name}</option>";
            }
        ?>

    </select>

    <label for="name">Nome</label>
    <input type="text" id="name" name="name" class="form-control mb-3">

    <label for="description">Descrição</label>
    <textarea id="description" name="description" class="form-control mb-3"></textarea>

    <label for="value">Valor</label>
    <input type="text" id="value" name="value" class="form-control mb-3">

    <label for="quantity">Quantidade</label>
    <input type="text" id="quantity" name="quantity" class="form-control mb-3">

    <label for="photo">Foto</label>
    <input type="text" id="photo" name="photo" class="form-control mb-3">

    <button class="btn btn-primary">Enviar</button>
</form>