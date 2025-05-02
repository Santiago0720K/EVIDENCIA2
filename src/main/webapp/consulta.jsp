<%@page import="java.util.List"%>
<%@page import="com.miproyecto.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Consulta de Usuarios</title>
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
        .form-group {
            display: flex;
            flex-wrap: wrap;
            margin-bottom: 25px;
        }
        .form-group label {
            flex: 1 1 100%;
            margin-bottom: 8px;
            font-weight: 600;
        }
        .form-group input {
            flex: 1 1 auto;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 10px;
            margin-right: 10px;
            transition: box-shadow 0.3s;
        }
        .form-group input:focus {
            box-shadow: 0 0 10px rgba(79, 172, 254, 0.5);
            outline: none;
        }
        .btn {
            padding: 12px 25px;
            background: linear-gradient(90deg, #4facfe, #00f2fe);
            color: white;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            font-weight: 600;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(79,172,254,0.4);
        }
        .menu {
            margin-top: 30px;
            text-align: center;
        }
        .menu a {
            color: #4facfe;
            text-decoration: none;
            margin: 0 15px;
            font-weight: 600;
            transition: color 0.3s;
        }
        .menu a:hover {
            color: #00f2fe;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f7ff;
        }
        .results, .not-found {
            margin-top: 20px;
            padding: 20px;
            border-radius: 15px;
        }
        .results {
            background-color: #f5faff;
            border: 1px solid #4facfe;
        }
        .not-found {
            background-color: #ffe6e6;
            border: 1px solid #ff4d4d;
            color: #a94442;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .form-group {
                flex-direction: column;
            }
            .form-group input, .btn {
                width: 100%;
                margin: 5px 0;
            }
            table, thead, tbody, th, td, tr {
                display: block;
            }
            tr {
                margin-bottom: 15px;
                background: #f9f9f9;
                border-radius: 10px;
                box-shadow: 0 2px 8px rgba(0,0,0,0.1);
                padding: 10px;
            }
            th {
                display: none;
            }
            td {
                display: flex;
                justify-content: space-between;
                padding: 10px;
                border: none;
                border-bottom: 1px solid #ddd;
            }
            td::before {
                content: attr(data-label);
                font-weight: bold;
                color: #4facfe;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Consulta de Usuarios</h1>
        
        <form action="consulta" method="GET">
            <div class="form-group">
                <label for="email">Buscar usuario por email:</label>
                <input type="email" id="email" name="email" required>
                <button type="submit" class="btn">Buscar</button>
            </div>
        </form>
        
        <% if (request.getAttribute("busquedaRealizada") != null) { %>
            <div class="results">
                <h2>Resultado de la búsqueda</h2>
                <% if (request.getAttribute("usuarioBuscado") != null) { %>
                    <% Usuario usuario = (Usuario) request.getAttribute("usuarioBuscado"); %>
                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Email</th>
                        </tr>
                        <tr>
                            <td data-label="Nombre"><%= usuario.getNombre() %></td>
                            <td data-label="Apellido"><%= usuario.getApellido() %></td>
                            <td data-label="Email"><%= usuario.getEmail() %></td>
                        </tr>
                    </table>
                <% } else { %>
                    <div class="not-found">
                        No se encontró ningún usuario con el email especificado.
                    </div>
                <% } %>
            </div>
        <% } %>
        
        <h2>Lista de Usuarios Registrados</h2>
        <% 
            List<Usuario> listaUsuarios = (List<Usuario>) session.getAttribute("listaUsuarios");
            if (listaUsuarios != null && !listaUsuarios.isEmpty()) {
        %>
            <table>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                </tr>
                <% for (Usuario usuario : listaUsuarios) { %>
                    <tr>
                        <td data-label="Nombre"><%= usuario.getNombre() %></td>
                        <td data-label="Apellido"><%= usuario.getApellido() %></td>
                        <td data-label="Email"><%= usuario.getEmail() %></td>
                    </tr>
                <% } %>
            </table>
        <% } else { %>
            <p>No hay usuarios registrados en el sistema.</p>
        <% } %>
        
        <div class="menu">
            <a href="index.jsp">Volver a Inicio</a> | 
            <a href="registro">Registrar Usuario</a>
        </div>
    </div>
</body>
</html>

