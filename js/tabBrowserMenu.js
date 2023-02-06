$('section#noJavascriptContainer').removeClass('hidden');

const options = document.querySelectorAll(".cb-container");

document.addEventListener('DOMContentLoaded', checkLink)

options.forEach((option) => {
    option.addEventListener("click", changeState);
});

function changeState(e) {
    e.preventDefault();
    clearClass();
    addChecked(e.target)
}

function addChecked(element) {
    element.classList.add("checked-acceptance");

}

function clearClass() {
    options.forEach((option) => {
        if (option.classList.contains("checked-acceptance")) {
            option.classList.remove("checked-acceptance");
            return;
        }
    });
}

function checkLink() {
    const myUrl = document.URL

    clearClass()

    if (!myUrl.includes('#')) {
        addChecked(options[0])
        return
    }

    options.forEach(option => {
        const optUri = option.dataset.uri
        if (myUrl.includes(optUri)) {
            addChecked(option)
        }
    })

}