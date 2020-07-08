function toggleSearchBar() {
    var nav = document.getElementById("searchBar");
    if(nav.className === "search-bar") {
        nav.className += " show";
    } else {
        nav.className = "search-bar";
    }
}