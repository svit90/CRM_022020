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
        "width": "600",
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

                $("#label_IPAddress").text(json.ip);
                $("#lb_Location").text(str);
                $("#txt_IPAddress").val(json.ip);
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
                str += "<a href=\"" + val.MenuUrl + "\" ><i class=\""+ val.MenuIcon +"\"></i> <span class=\"nav-label\">" + val.MenuName + "</span> " + arrow;
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
                str_sub += "<a href=\"" + val.MenuUrl + "\" onclick=\"showHeaderPage('" + parent + "','" + val.MenuName + "')\"> <i class=\"" + val.MenuIcon +"\"></i>" + val.MenuName + arrow;
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


function formatNumber(n) {
    // format number 1000000 to 1,234,567
    return n.replace(/\D/g, "").replace(/\B(?=(\d{3})+(?!\d))/g, ",")
}


function formatCurrency(input, blur) {
    // appends $ to value, validates decimal side
    // and puts cursor back in right position.

    // get input value
    var input_val = input.val();

    // don't validate empty input
    if (input_val === "") { return; }

    // original length
    var original_len = input_val.length;

    // initial caret position 
    var caret_pos = input.prop("selectionStart");

    // check for decimal
    if (input_val.indexOf(".") >= 0) {

        // get position of first decimal
        // this prevents multiple decimals from
        // being entered
        var decimal_pos = input_val.indexOf(".");

        // split number by decimal point
        var left_side = input_val.substring(0, decimal_pos);
        var right_side = input_val.substring(decimal_pos);

        // add commas to left side of number
        left_side = formatNumber(left_side);

        // validate right side
        right_side = formatNumber(right_side);

        // On blur make sure 2 numbers after decimal
        //if (blur === "blur") {
        //    right_side += "00";
        //}

        // Limit decimal to only 2 digits
        right_side = right_side.substring(0, 2);

        // join number by .
        input_val = "$ " + left_side + "." + right_side;

    } else {
        // no decimal entered
        // add commas to number
        // remove all non-digits
        input_val = formatNumber(input_val);
        input_val = "$ " + input_val;

        // final formatting
        //if (blur === "blur") {
        //    input_val += ".00";
        //}
    }

    // send updated string to input
    input.val(input_val);

    // put caret back in the right position
    var updated_len = input_val.length;
    caret_pos = updated_len - original_len + caret_pos;
    input[0].setSelectionRange(caret_pos, caret_pos);
}



// Config box
// Enable/disable fixed top navbar
$('#fixednavbar').click(function () {
    if ($('#fixednavbar').is(':checked')) {
        $(".navbar-static-top").removeClass('navbar-static-top').addClass('navbar-fixed-top');
        $("body").removeClass('boxed-layout');
        $("body").addClass('fixed-nav');
        $('#boxedlayout').prop('checked', false);

        if (localStorageSupport) {
            localStorage.setItem("boxedlayout", 'off');
        }

        if (localStorageSupport) {
            localStorage.setItem("fixednavbar", 'on');
        }
    } else {
        $(".navbar-fixed-top").removeClass('navbar-fixed-top').addClass('navbar-static-top');
        $("body").removeClass('fixed-nav');
        $("body").removeClass('fixed-nav-basic');
        $('#fixednavbar2').prop('checked', false);

        if (localStorageSupport) {
            localStorage.setItem("fixednavbar", 'off');
        }

        if (localStorageSupport) {
            localStorage.setItem("fixednavbar2", 'off');
        }
    }
});

// Enable/disable fixed top navbar
$('#fixednavbar2').click(function () {
    if ($('#fixednavbar2').is(':checked')) {
        $(".navbar-static-top").removeClass('navbar-static-top').addClass('navbar-fixed-top');
        $("body").removeClass('boxed-layout');
        $("body").addClass('fixed-nav').addClass('fixed-nav-basic');
        $('#boxedlayout').prop('checked', false);

        if (localStorageSupport) {
            localStorage.setItem("boxedlayout", 'off');
        }

        if (localStorageSupport) {
            localStorage.setItem("fixednavbar2", 'on');
        }
    } else {
        $(".navbar-fixed-top").removeClass('navbar-fixed-top').addClass('navbar-static-top');
        $("body").removeClass('fixed-nav').removeClass('fixed-nav-basic');
        $('#fixednavbar').prop('checked', false);

        if (localStorageSupport) {
            localStorage.setItem("fixednavbar2", 'off');
        }
        if (localStorageSupport) {
            localStorage.setItem("fixednavbar", 'off');
        }
    }
});

// Enable/disable fixed sidebar
$('#fixedsidebar').click(function () {
    if ($('#fixedsidebar').is(':checked')) {
        $("body").addClass('fixed-sidebar');
        $('.sidebar-collapse').slimScroll({
            height: '100%',
            railOpacity: 0.9
        });

        if (localStorageSupport) {
            localStorage.setItem("fixedsidebar", 'on');
        }
    } else {
        $('.sidebar-collapse').slimScroll({ destroy: true });
        $('.sidebar-collapse').attr('style', '');
        $("body").removeClass('fixed-sidebar');

        if (localStorageSupport) {
            localStorage.setItem("fixedsidebar", 'off');
        }
    }
});

// Enable/disable collapse menu
$('#collapsemenu').click(function () {
    if ($('#collapsemenu').is(':checked')) {
        $("body").addClass('mini-navbar');
        SmoothlyMenu();

        if (localStorageSupport) {
            localStorage.setItem("collapse_menu", 'on');
        }

    } else {
        $("body").removeClass('mini-navbar');
        SmoothlyMenu();

        if (localStorageSupport) {
            localStorage.setItem("collapse_menu", 'off');
        }
    }
});

// Enable/disable boxed layout
$('#boxedlayout').click(function () {
    if ($('#boxedlayout').is(':checked')) {
        $("body").addClass('boxed-layout');
        $('#fixednavbar').prop('checked', false);
        $('#fixednavbar2').prop('checked', false);
        $(".navbar-fixed-top").removeClass('navbar-fixed-top').addClass('navbar-static-top');
        $("body").removeClass('fixed-nav');
        $("body").removeClass('fixed-nav-basic');
        $(".footer").removeClass('fixed');
        $('#fixedfooter').prop('checked', false);

        if (localStorageSupport) {
            localStorage.setItem("fixednavbar", 'off');
        }

        if (localStorageSupport) {
            localStorage.setItem("fixednavbar2", 'off');
        }

        if (localStorageSupport) {
            localStorage.setItem("fixedfooter", 'off');
        }


        if (localStorageSupport) {
            localStorage.setItem("boxedlayout", 'on');
        }
    } else {
        $("body").removeClass('boxed-layout');

        if (localStorageSupport) {
            localStorage.setItem("boxedlayout", 'off');
        }
    }
});

// Enable/disable fixed footer
$('#fixedfooter').click(function () {
    if ($('#fixedfooter').is(':checked')) {
        $('#boxedlayout').prop('checked', false);
        $("body").removeClass('boxed-layout');
        $(".footer").addClass('fixed');

        if (localStorageSupport) {
            localStorage.setItem("boxedlayout", 'off');
        }

        if (localStorageSupport) {
            localStorage.setItem("fixedfooter", 'on');
        }
    } else {
        $(".footer").removeClass('fixed');

        if (localStorageSupport) {
            localStorage.setItem("fixedfooter", 'off');
        }
    }
});

// SKIN Select
$('.spin-icon').click(function () {
    $(".theme-config-box").toggleClass("show");
});

// Default skin
$('.s-skin-0').click(function () {
    $("body").removeClass("skin-1");
    $("body").removeClass("skin-2");
    $("body").removeClass("skin-3");
});

// Blue skin
$('.s-skin-1').click(function () {
    $("body").removeClass("skin-2");
    $("body").removeClass("skin-3");
    $("body").addClass("skin-1");
});

// Inspinia ultra skin
$('.s-skin-2').click(function () {
    $("body").removeClass("skin-1");
    $("body").removeClass("skin-3");
    $("body").addClass("skin-2");
});

// Yellow skin
$('.s-skin-3').click(function () {
    $("body").removeClass("skin-1");
    $("body").removeClass("skin-2");
    $("body").addClass("skin-3");
});

if (localStorageSupport) {
    var collapse = localStorage.getItem("collapse_menu");
    var fixedsidebar = localStorage.getItem("fixedsidebar");
    var fixednavbar = localStorage.getItem("fixednavbar");
    var fixednavbar2 = localStorage.getItem("fixednavbar2");
    var boxedlayout = localStorage.getItem("boxedlayout");
    var fixedfooter = localStorage.getItem("fixedfooter");

    if (collapse == 'on') {
        $('#collapsemenu').prop('checked', 'checked')
    }
    if (fixedsidebar == 'on') {
        $('#fixedsidebar').prop('checked', 'checked')
    }
    if (fixednavbar == 'on') {
        $('#fixednavbar').prop('checked', 'checked')
    }
    if (fixednavbar2 == 'on') {
        $('#fixednavbar2').prop('checked', 'checked')
    }
    if (boxedlayout == 'on') {
        $('#boxedlayout').prop('checked', 'checked')
    }
    if (fixedfooter == 'on') {
        $('#fixedfooter').prop('checked', 'checked')
    }
}