<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Horas libres</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="author" content="colorlib.com">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500"
	rel="stylesheet" />
<link href="clockpicker.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link href="css/vacaciones.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://weareoutman.github.io/clockpicker/dist/bootstrap-clockpicker.min.css">
<script src="http://code.jquery.com/jquery-2.2.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="http://weareoutman.github.io/clockpicker/dist/bootstrap-clockpicker.min.js"></script>

<style>
.clock {
	max-width: 160px;
	margin-top: 2em;
	padding: 1em;
}
</style>

	<%
	
		HttpSession sesion = (HttpSession) request.getSession();
		String DNI = (String) sesion.getAttribute("DNI");
		if (DNI==null){
			response.sendRedirect("index.jsp");
		}
	%>
		 
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
		aria-expanded="true" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		<div class="navbar-nav">
			<a class="nav-item nav-link active" href='MenuEmpleado.jsp'>P�gina
				Principal <span class="sr-only"></span>
			</a> <a class="nav-item nav-link active"
				href='ProyectoController?action=listProyectoB'>Mis Proyectos</a> <a
				class="nav-item nav-link active" href="VacacionesEmpleado.jsp">Solicitar vacaciones</a>
			<a class="nav-item nav-link active" href="PeticionController?action=anadirVacaciones&DNI<%=DNI%>">Ver Calendario</a> 
			<a class="nav-item nav-link active" href="PeticionController?action=listpeticionesbydni&DNI<%=DNI%>">Mis solicitudes</a> 
			
		</div>
	</div>
</nav>		 
		 

</head>
<body>
	<div class="s002">
		<form action=PeticionController method="Post">
			<fieldset>
				<legend>Elegir Horas Libres</legend>
			</fieldset>
			<div class="inner-form">
				<div class="input-field first-wrap">
					<div class="icon-wrap">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							viewBox="0 0 24 24">
              </svg>
					</div>
					<input id="motivo" name="motivo" type="text"
						placeholder="Indique su motivo." />
				</div>
				<div class="input-field second-wrap">
					<div class="icon-wrap">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							viewBox="0 0 24 24">
                <path
								d="M17 12h-5v5h5v-5zM16 1v2H8V1H6v2H5c-1.11 0-1.99.9-1.99 2L3 19c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2h-1V1h-2zm3 18H5V8h14v11z"></path>
              </svg>
					</div>
					<input class="datepicker" name="fecha" id="fecha" type="text"
						placeholder="Elija el d�a" />

				</div>

				<div class="input-group clock">
					<input type="text" class="form-control" id="hinicio" 
						name="hinicio" value="" placeholder="Hora Inicio"> <span
						class="input-group-addon"> <span
						class="glyphicon glyphicon-time"></span>
					</span>
				</div>
				<div class="input-group clock">
					<input type="text" class="form-control" id="hfin" name="hfin"
						value="" placeholder="Hora Fin"> <span
						class="input-group-addon"> <span
						class="glyphicon glyphicon-time"></span>
					</span>
				</div>

				<div class="input-field fouth-wrap">

					<div class="input-field fifth-wrap">
						<button class="btn-search" type="submit" id="solicitarhoras" name="solicitarhoras">SOLICITAR</button>
					</div>
				</div>
		</form>
	</div>
<script src="js/extention/choices.js"></script>
    <script src="js/extention/flatpickr.js"></script>
    <script>
      flatpickr(".datepicker",
      {});

    </script>
    <script>
      const choices = new Choices('[data-trigger]',
      {
        searchEnabled: false,
        itemSelectText: '',
      });

    </script>
	<script src="archivo.js"></script>
</body>
</html>