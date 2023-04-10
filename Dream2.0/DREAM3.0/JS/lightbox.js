AOS.init();
const imagenes = Array.from(document.querySelectorAll('.img-galeria'))
const imagenesLight = document.querySelector('.agregar-imagen')
const contenedorLight = document.querySelector('.imagen-light')
const Menu1 = document.querySelector(".Menu")

imagenes.forEach(function(imagen) {
    imagen.addEventListener('click', function() {
        aparecerImagen(imagen.getAttribute('src'))
        
    });
});

contenedorLight.addEventListener('click', (e)=>{
    if(e.target !== imagenesLight){
        contenedorLight.classList.toggle('show')
        imagenesLight.classList.toggle('showimage')
        Menu1.style.opacity ='1'
    }
})

const aparecerImagen = (imagen)=>{
    imagenesLight.src=imagen;
    contenedorLight.classList.toggle('show')
    imagenesLight.classList.toggle('showimage')
    Menu1.style.opacity ='0'
}