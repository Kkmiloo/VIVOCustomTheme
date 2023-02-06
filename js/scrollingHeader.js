const headerMenuDesktop = document.querySelector('#header-menu-desktop');
const hmdBottom = document.querySelector('#hmd-bottom');

const content = document.querySelector('.header-margin')
const developerPanel = document.querySelector('#developerPanel')



window.onscroll = function (e) {
    // print "false" if direction is down and "true" if up
    if (this.oldScroll < this.scrollY) {

        if (developerPanel.childNodes.length > 1) {
            headerMenuDesktop.style = "top: -99px"
        } else {
            headerMenuDesktop.style = "top: -56px"
            content.style = "margin-top: 146px"
        }
        hmdBottom.classList.add('scroll')
    } else {
        headerMenuDesktop.style = "top: 0px"
        hmdBottom.classList.remove('scroll')
    }
    this.oldScroll = this.scrollY;
}


