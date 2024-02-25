<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="SvUsuarios" method="POST">
            <p><label>DNI: </label><input type="text" name="dni"></p>
            <p><label>NOMBRE: </label><input type="text" name="nombre"></p>
            <p><label>APELLIDO: </label><input type="text" name="apellido"></p>
            <p><label>TELEFONO: </label><input type="text" name="telefono"></p>
            <p><button type="submit">Enviar</button></p>
        </form>
        
        <h1>Ver lista</h1>
        <p>Para ver la lista de usuarios hacer clic en el siguiente boton</p>
        <form action="SvUsuarios" method="GET">
            <button type="submit">Mostrar Lista</button>
        </form>
        
        <h1>Eliminar Usuario</h1>
        <p>Ingresar Id del usuario a eliminar: </p>
        <form action="SvEliminar" method="POST">
            <p><label>Id: </label><input type="text" name="id_usuario" /></p>
            <button type="submit">Eliminar Usuario</button>
        </form>
        
         <h1>Editar Usuario</h1>
        <p>Ingresar Id del usuario a editar </p>
        <form action="SvEditar" method="GET">
            <p><label>Id: </label><input type="text" name="id_usuarioEdit" /></p>
            <button type="submit">Editar Usuario</button>
        </form>
        
    </body>
</html>
