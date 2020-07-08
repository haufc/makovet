function toggleSearchBar() {
    var nav = document.getElementById("searchBar");
    if(nav.className === "search-bar") {
        nav.className += " active";
    } else {
        nav.className = "search-bar";
    }
}