window.addEventListener("load", function() {
	document.body.classList.remove("loading");
  });  
window.onload = function() {
	// Obtener elementos del DOM
	const loaderContainer = document.getElementById("loader-container");
	const loaderProgress = document.getElementById("loader-progress");
	const loaderText = document.getElementById("loader-text");

	// Establecer variables para el progreso y el intervalo del loader
	let progress = 0;
	let interval;

	// Iniciar el intervalo para aumentar el progreso del loader
	interval = setInterval(function() {
		// Aumentar el progreso en un número aleatorio
		progress += Math.floor(Math.random() * 10) + 1;

		// Limitar el progreso a un máximo de 100
		if (progress > 100) {
			progress = 100;
		}

		// Actualizar el ancho del loader de acuerdo al progreso
		loaderProgress.style.width = progress + "%";

		// Actualizar el texto del loader con el porcentaje actual
		loaderText.textContent = progress + "%";

		// Si el progreso es igual a 100, detener el intervalo y redirigir a la página de inicio
		if (progress === 100) {
			clearInterval(interval);
			loaderContainer.style.display = "none";
			window.location.replace("file:///C:/Users/gaelc/OneDrive/Escritorio/Dream2.0/DREAM3.0/index.html"); 
		}
	}, 500);
}


