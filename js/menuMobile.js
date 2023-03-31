const dropBtn = document.querySelectorAll('.hmmbpt-dropbtn')

const menuHam = document.querySelector('#hmm-bottom')

const menuHamBtnClose = document.querySelector('#hmmb-menu-icon-close')
const menuHamBtn = document.querySelector('#hmmb-menu-icon')
const menuSection = document.querySelector('#header-menu-mobile')

menuHamBtnClose.addEventListener('click', toggleMenu)
menuHamBtn.addEventListener('click', toggleMenu)



dropBtn.forEach(btn => btn.addEventListener('click', dropDown))

function toggleMenu(e) {
    e.preventDefault()
    menuHam.classList.toggle('hmm-open')
    menuSection.classList.toggle('relaive')

}

function dropDown(e) {
    e.preventDefault()
    console.log(e.target);
    let dropList;
    if (e.target.classList.contains('icon')) {
        dropList = e.target.parentNode.parentNode.parentNode;
    } else {
        dropList = e.target.parentNode.parentNode;
    }
    dropList.querySelector('.hmmbp-title').classList.toggle('active')
    dropList.querySelector('.hmmbp-submenu').classList.toggle('active')



}


const searchBtn = document.querySelector("#hmmt-search")
const searchIco = document.querySelector("#hmmt-search > div > span")
const searhScreen = document.querySelector("#hmm-search-dropdown")
const pSearch = document.querySelector("#hmmt-search > p")



searchBtn.addEventListener('click', (e) => {
    e.preventDefault()
    searhScreen.classList.toggle("active");

    let ico = searchIco.classList[1];


    if (ico == "icon-search") {

        searchIco.classList.add("icon-close")
        searchIco.classList.remove("icon-search")
        pSearch.innerHTML = "Cerrar"
    } else {

        searchIco.classList.add("icon-search")
        searchIco.classList.remove("icon-close")
        pSearch.innerHTML = "Buscar"
    }

})