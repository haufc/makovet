function toggleSearchBar() {
    var nav = document.getElementById("searchBar");
    if(nav.className === "search-bar") {
        nav.className += " show";
    } else {
        nav.className = "search-bar";
    }
}

function getContextPath() {
   return  window.location.protocol + "//" + window.location.host
}

function search() {
    var url = window.location;
    var prevUrl = document.referrer;
    
    let userTerm = $('#txtSearch').val();
    if (userTerm === "") {
        alert("Bạn cần nhập từ khóa tìm kiếm!");
        $('#txtSearch').focus();
    }
    else {
        var urlService = "";
        var urlRedirect = "";
        urlService += this.getContextPath() + "/api/search.json?q="+ userTerm;
        urlRedirect += "/tim-kiem";
        
        localStorage.setItem("userTerm", userTerm);
        $.ajax({
            type: "GET",
            url:urlService,
            success: function(resp){
                localStorage.setItem("mergeLst", JSON.stringify(resp[0].concat(resp[1])));
                window.location.replace(getContextPath()+ urlRedirect);
            }
        });
    }
}