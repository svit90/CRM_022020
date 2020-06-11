function setCookie(key, value) {
    var expires = new Date();
    expires.setTime(expires.getTime() + (1 * 24 * 60 * 60 * 1000));
    document.cookie = key + '=' + value + ';expires=' + expires.toUTCString();
}

function getCookie(key) {
    var keyValue = document.cookie.match('(^|;) ?' + key + '=([^;]*)(;|$)');
    return keyValue ? keyValue[2] : null;
}

function clearCookie(key) {
    var expires = new Date();
    expires.setTime(-1);
    document.cookie = key + '=' + "" + ';expires=' + expires.toUTCString();
}

function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, '\\$&');
    var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, ' '));
}

//Load infor of user in master page
function loadInfoUser_masterpage() {
    var email = getCookie("USER_EMAIL");
    var pass = getCookie("USER_PASS");
    var role = getCookie("USER_ROLE");
    var userName = decodeURIComponent(getCookie("USER_NAME"));
    $("#lb_userName").text(userName.replace("+"," "));   
}

function showerror(msg, title, type, pos) {
    var $toastlast;
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "progressBar": true,
        "preventDuplicates": false,
        "positionClass": pos,
        "onclick": null,
        "showDuration": "400",
        "hideDuration": "1000",
        "timeOut": "7000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    };
    var $toast = toastr[type](msg, title);
    $toastlast = $toast;
}

function getUserLocation() {

    var flickerAPI = "https://jsonip.com/";
    var IPAddress = ""; var str = "";
    $.getJSON(flickerAPI, {
        tags: "ip",
        tagmode: "any",
        format: "json"
    }).done(function (data) {
        IPAddress = data.ip;
        //var uri_1 = "http://api.ipstack.com/";
        //var access_key_1 = 'da07864e4f5506da881b236b57f43dc4';
        //var uri_2 = "http://api.ipapi.com/";
        //var access_key_2 = '2fe0c1d5b9e2f6c8c70d49cd2eecbc51';

        // get the API result via jQuery.ajax
        $.ajax({
            url: "http://api.ipapi.com/" + data.ip + "?access_key=2fe0c1d5b9e2f6c8c70d49cd2eecbc51&format=1",
            dataType: 'jsonp',
            success: function (json) {
                str = json.region_name + " , " + json.city + " , " + json.country_name;
                if (json.ip === "115.73.214.199" || json.ip === "118.69.224.243" || json.ip === "118.69.224.168") {
                    str = "Imm Group Building, Số 99 Nguyễn Đình Chiểu, Phường 6, Quận 3, TP. HCM";
                }
                if (json.ip === "118.70.171.215") {
                    str = "Lotte Center, 54 Liễu Giai, Quận Ba Đình, Hà Nội";
                }
                document.getElementById("lb_IPAddress").innerText = json.ip;
                document.getElementById("lb_Location").innerText = str;
            }
        });
    });
}


// MetisMenu
function load_control_menu() {
    var flickerAPI = "https://api.immgroup.com/crm/menu/all";
    $.getJSON(flickerAPI, {
        format: "json"
    }).done(function (data) {
        var str = "";
        str = create_menu_control("0","Trang chủ", "0", data);
        $("#side-menu").append(str);
        str = "";

        var sideMenu = $('#side-menu').metisMenu();
        sideMenu.on('shown.metisMenu', function (e) {
            fix_height();
        });
    });

}

function create_menu_control(mode, parent, level, data) {
    if(level === "0") {level = "first";}else if(level === "first") {level = "second";}else if(level === "second") {level = "third";}
    var str = "";
    if (mode === "0") {
        jQuery.each(data, function (i, val) {
            var arrow = "<span class=\"fa arrow\"></span>";
            if (val.ParentKey === "0") {
                var str_sub = create_menu_control(val.PriKey, parent +"/"+ val.MenuName, level, data);
                if (str_sub === "") {
                    arrow = "";
                }
                str += "<li id=\"li_" + val.PriKey + "\">";
                str += "<a href=\"" + val.MenuUrl + "\" ><i class=\"fa fa-sitemap\"></i> <span class=\"nav-label\">" + val.MenuName + "</span> " + arrow;
                str += "</a> ";
                str += str_sub;
                str += "</li>";
            }
        });
    } else {
        var str_sub = "";
        var ul = "<ul class=\"nav nav-" + level + "-level collapse\">";
        jQuery.each(data, function (i, val) {
            var arrow = "<span class=\"fa arrow\"></span>";
            if (val.ParentKey === mode) {
                var str_sub_child = create_menu_control(val.PriKey, parent + "/" + val.MenuName, level, data);
                if (str_sub_child === "") {
                    arrow = "";
                }
                str_sub += "<li id=\"li_" + val.PriKey + "\">";
                str_sub += "<a href=\"" + val.MenuUrl + "\" onclick=\"showHeaderPage('" + parent + "','" + val.MenuName +"')\">" + val.MenuName + arrow;
                str_sub += "</a > ";
                str_sub += str_sub_child;
                str_sub += "</li>";
            }
        });
        if (str_sub !== "") {
            str += ul + str_sub + "</ul>";
        }        
    }
    return str;
}

function showHeaderPage(parent, curent) {
    var str = "";
    var arr = parent.split("/");
    $("#pageHeading").empty();
    $("#pageHeading").append("<h2>" + curent + "</h2>");
    var ol = "<ol class=\"breadcrumb\">";
    $.each(arr, function (index, value) {
        str += "<li class=\"breadcrumb-item\"><a href=\"#\">" + value + "</a></li>";
    });
    str += "<li class=\"breadcrumb-item active\"><strong>" + curent + "</strong></li>";
    $("#pageHeading").append(ol + str + "</ol>");
}
