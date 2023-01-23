const tabsSection = document.querySelectorAll('.property-group')
const tabsBar = document.querySelectorAll('.ssd-first-level li')

const header = document.querySelector('#header-menu-desktop')

const pColor = "#741823"
const whiteColor = "#FFF"
document.addEventListener('DOMContentLoaded', () => {
    tabsBar[0].style.backgroundColor = pColor
    tabsBar[0].children[0].style.color = whiteColor
})

window.addEventListener('scroll', () => {
    const tabMarginBot = 29
    const h2MarginTop = 60
    const headerOffset = header.clientHeight + tabsBar[0].clientHeight + tabMarginBot


    tabsSection.forEach((tab, index) => {
        const position = tab.getBoundingClientRect()

        tabsBar[index].style.transition = 'background-color 0.2s'
        if (position.y <= headerOffset && position.y >= (headerOffset - position.height - h2MarginTop)) {
            tabsBar[index].style.backgroundColor = pColor
            tabsBar[index].children[0].style.color = whiteColor
        } else {
            tabsBar[index].style.backgroundColor = whiteColor
            tabsBar[index].children[0].style.color = 'black'
        }
    })

    const positionTab1 = tabsSection[0].getBoundingClientRect();
    if (positionTab1.y >= (headerOffset - positionTab1.height - h2MarginTop)) {
        tabsBar[0].style.backgroundColor = pColor
        tabsBar[0].children[0].style.color = whiteColor
    }
})


