<?php
require_once "../config/conexion.php";

// Verificar si se ha enviado el formulario de actualización
if (isset($_POST['pedido_id']) && isset($_POST['estado_pedido'])) {
    $pedido_id = $_POST['pedido_id'];
    $estado_pedido = $_POST['estado_pedido'];
    $query = "UPDATE pedidos SET estado = '$estado_pedido' WHERE id = $pedido_id";
    $result = mysqli_query($conexion, $query);
    if (!$result) {
        die(mysqli_error($conexion));
    }
    header('Location:?action=list');

}
else{
    $query = "SELECT p.id, p.fecha, p.estado, c.nombre AS nombre_cliente FROM pedidos p INNER JOIN clientes c ON c.id = p.id_cliente";
    $result = mysqli_query($conexion, $query);
    if (!$result) {
        die(mysqli_error($conexion));
    }
}

// Verifica que $result sea un objeto mysqli_result antes de usar mysqli_fetch_all
if ($result instanceof mysqli_result) {
    $pedidos = mysqli_fetch_all($result, MYSQLI_ASSOC);
} else {
    die("Error en la consulta: " . mysqli_error($conexion));
}

include("includes/header.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Pedidos</title>
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/estilos.css">
    <!-- Agregar el enlace a Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+78ZEZzGaG7gTiAOp6yVlFvXf1gSk7nxfxFJmOmG1hxgvo2" crossorigin="anonymous">
    <!--- jQuery library ----->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


</head>

<body>
    <div class="container mt-4">
        <h1>Lista de Pedidos</h1>
        <!-- Tabla utilizando Bootstrap -->
        <table class="table table-hover">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Fecha</th>
                    <th>Estado</th>
                    <th>Cliente</th>
                    <th>Acciones</th>
                </tr>
            </thead>
        <tbody>
            <?php foreach ($pedidos as $pedido) { ?>
                <tr>
                    <td><?php echo $pedido['id']; ?></td>
                    <td><?php echo $pedido['fecha']; ?></td>
                    <td class="text-center <?php
                        // Determinar las clases CSS según el estado del pedido
                        if ($pedido['estado'] == 'Entregado') {
                            echo 'bg-success text-white';
                        } elseif ($pedido['estado'] == 'Pendiente') {
                            echo 'bg-danger text-white';
                        } elseif ($pedido['estado'] == 'Enviado') {
                            echo 'bg-warning text-dark';
                        }
                        ?>">
                        <?php echo $pedido['estado']; ?>
                    </td>
                    <td><?php echo $pedido['nombre_cliente']; ?></td>
                    <td>
                        <form action="pedidos.php" method="POST">
                            <input type="hidden" name="pedido_id" value="<?php echo $pedido['id']; ?>">
                            <div class="input-group">
                                <select name="estado_pedido" class="form-select">
                                    <option value="Pendiente" <?php if ($pedido['estado'] == 'Pendiente') echo 'selected'; ?>>Pendiente</option>
                                    <option value="Enviado" <?php if ($pedido['estado'] == 'Enviado') echo 'selected'; ?>>Enviado</option>
                                    <option value="Entregado" <?php if ($pedido['estado'] == 'Entregado') echo 'selected'; ?>>Entregado</option>
                                </select>
                                <button type="submit" class="btn btn-primary btn-sm mx-1"><i class="bi bi-pencil"></i> Actualizar</button>
                            </div>
                        </form>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>   

    <!-- Agregar el enlace a jQuery y Bootstrap JS al final del archivo -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

<?php include("includes/footer.php"); ?>

</html>
