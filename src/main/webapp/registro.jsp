<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #f0f4f8, #d9e4f5);
            color: #333;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }
        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
            background: linear-gradient(90deg, #4facfe, #00f2fe);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-align: center;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 10px;
            font-size: 1em;
            transition: border-color 0.3s;
        }
        .form-group input:focus {
            border-color: #4facfe;
            outline: none;
        }
        .btn {
            width: 100%;
            padding: 12px;
            background: linear-gradient(90deg, #4facfe, #00f2fe);
            color: white;
            border: none;
            border-radius: 30px;
            font-size: 1em;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(79,172,254,0.4);
        }
        .message {
            padding: 12px;
            margin: 20px 0;
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            border-radius: 10px;
            color: #155724;
            text-align: center;
            font-weight: 600;
        }
        .menu {
            margin: 30px 0;
            text-align: center;
        }
        .menu a {
            display: inline-block;
            margin: 0 10px;
            padding: 10px 20px;
            background: linear-gradient(90deg, #4facfe, #00f2fe);
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-weight: 600;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .menu a:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(79,172,254,0.4);
        }
        @media (max-width: 600px) {
            .container {
                padding: 20px;
                margin: 20px;
            }
            h1 {
                font-size: 2em;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registro de Usuario</h1>
        
        <% if (request.getAttribute("mensaje") != null) { %>
            <div class="message">
                <%= request.getAttribute("mensaje") %>
            </div>
        <% } %>
        
        <form action="registro" method="POST">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            <div class="form-group">
                <label for="apellido">Apellido:</label>
                <input type="text" id="apellido" name="apellido" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="btn">Registrar</button>
        </form>
        
        <div class="menu">
            <a href="index.jsp">Volver a Inicio</a>
            <a href="consulta">Consultar Usuarios</a>
        </div>
    </div>
</body>
</html>
