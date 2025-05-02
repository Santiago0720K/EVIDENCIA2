<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sistema de Registro de Usuarios</title>
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
            max-width: 1000px;
            margin: 50px auto;
            background: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }
        h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
            background: linear-gradient(90deg, #4facfe, #00f2fe);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-align: center;
        }
        h2 {
            margin-top: 30px;
            font-size: 1.8em;
            border-bottom: 2px solid #4facfe;
            padding-bottom: 5px;
        }
        p {
            font-size: 1.1em;
            line-height: 1.8;
        }
        ul {
            padding-left: 20px;
        }
        li {
            margin-bottom: 8px;
        }
        .menu {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin: 30px 0;
            flex-wrap: wrap;
        }
        .menu a {
            padding: 12px 25px;
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
        hr {
            margin: 40px 0;
            border: none;
            height: 2px;
            background: linear-gradient(90deg, #4facfe, #00f2fe);
            border-radius: 2px;
        }
        /* Responsive design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
                margin: 20px;
            }
            h1 {
                font-size: 2em;
            }
            h2 {
                font-size: 1.5em;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Bienvenido al Sistema de Registro de Usuarios</h1>
        
        <p>Este sistema permite registrar nuevos usuarios y consultar la información de usuarios registrados.</p>
        
        <div class="menu">
            <a href="registro">Registrar Usuario</a>
            <a href="consulta">Consultar Usuarios</a>
        </div>
        
        <hr>
        
        <h2>Información del Sistema</h2>
        <p>
            Este sistema es un ejemplo simple que muestra cómo utilizar:
            <ul>
                <li>Servlets para procesar formularios</li>
                <li>JSP para renderizar páginas dinámicas</li>
                <li>Métodos HTTP GET y POST</li>
                <li>Sesiones para almacenar datos</li>
            </ul>
        </p>
    </div>
</body>
</html>
