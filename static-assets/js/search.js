function toggleSearchBar() {
    var nav = document.getElementById("searchBar");
    if(nav.className === "search-bar") {
        nav.className += " show";
    } else {
        nav.className = "search-bar";
    }
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
        urlService += this[0].getContextPath() + "/api/search.json?q="+ userTerm;
        urlRedirect += "/tim-kiem";
        
        localStorage.setItem("userTerm", userTerm);
        $.ajax({
            type: "GET",
            url:urlService,
            success: function(resp){
                localStorage.setItem("mergeLst", JSON.stringify(resp[0].concat(resp[1]).concat(resp[2]).concat(resp[3])));
                window.location.replace(getContextPath()+ urlRedirect);
            }
        });
    }
}