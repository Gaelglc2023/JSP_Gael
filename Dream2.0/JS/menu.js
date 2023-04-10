const Menu = document.querySelector(".Menu")
const menu = document.querySelector(".Menu-navegacion")

//console.log(Menu)
//console.log(menu)

Menu.addEventListener('click', ()=>{
    menu.classList.toggle("spread")
})

window.addEventListener('click', e=>{
    if(menu.classList.contains('spread') && e.target !=  menu && e.target != Menu ){
        menu.classList.toggle("spread")
    }
})