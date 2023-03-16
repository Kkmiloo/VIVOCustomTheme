const dropdown = document.querySelector('#dropdowns-login')
const dropdownList = document.querySelector('#myDIV')


dropdown.addEventListener('click', (e) => {
    dropdownList.classList.toggle("active");
})
