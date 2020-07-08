function toggleSearchBar() {
    var search = document.getElementById("searchBar");
    if(search.className === "search-bar") {
        search.className += " active";
    } else {
        search.className = "search-bar";
    }
}