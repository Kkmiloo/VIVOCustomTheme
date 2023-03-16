const filterBtn = document.querySelector('.filter-open-btn')
const filterDeploy = document.querySelector('.virtual-search-deploy-filter')
const exitBtn = document.querySelector('.close-button')

filterBtn.addEventListener('click', () => {

    filterDeploy.classList.add('vsdf-open')

})


exitBtn.addEventListener('click', (e) => {
    e.preventDefault()
    filterDeploy.classList.remove('vsdf-open')

})