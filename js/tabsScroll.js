const tabsSection = document.querySelectorAll('.property-group')
const tabsBar = document.querySelectorAll('.ssd-first-level li')

const header = document.querySelector('#header-menu-desktop')



window.addEventListener('scroll', () => {
    const tabMarginBot = 29
    const h2MarginTop = 60
    const headerOffset = header.clientHeight + tabsBar[0].clientHeight + tabMarginBot


    tabsSection.forEach((tab, index) => {
        const position = tab.getBoundingClientRect()
        if (position.y <= headerOffset && position.y >= (headerOffset - position.height - h2MarginTop)) {

            tabsBar[index].style.backgroundColor = 'red'
        } else {
            tabsBar[index].style.backgroundColor = 'white'
        }
    })

    const positionTab1 = tabsSection[0].getBoundingClientRect();
    if (positionTab1.y >= (headerOffset - positionTab1.height - h2MarginTop)) {
        tabsBar[0].style.backgroundColor = 'red'
    }



})
