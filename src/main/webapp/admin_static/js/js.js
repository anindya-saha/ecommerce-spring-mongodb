function page() {
    if ($("body").width() < 768) {
        $(".page-container").addClass("page-sidebar-narrow");
        $(".page-navigation li ul").removeAttr("style")
    }
}

function lists() {
    $(".list").each(function () {
        var e = $(this).find(".list-controls");
        if (e.length > 0) e.each(function () {
            $(this).height($(this).parent(".list-item").height() - 10).css("line-height", $(this).parent(".list-item").height() - 10 + "px")
        })
    })
}

function gallery() {
    var e = $(".gallery").width() - 20;
    var t = $(".gallery a").width();
    var n = Math.floor(e / t);
    var r = Math.round((e - t * n) / (n * 2));
    if (e < (r * 2 + t) * n) r = r - 1;
    $(".gallery a").css("margin", r + 2)
}

function thumbs() {
    $(".gallery-list").each(function () {
        var e = 0;
        var t = 0;
        $(this).find(".gallery-item").each(function () {
            var n = $(this).find("a > img").height();
            var r = $(this).find(".text").height();
            e = e < n ? n : e;
            t = t < r ? r : t
        });
        $(this).find(".gallery-list .gallery-image").height(e);
        $(this).find(".gallery-list .gallery-content .text").height(t)
    });
    var e = $(".gallery-list").width();
    var t = $(".gallery-list .gallery-item").width() + 10;
    var n = Math.floor(e / t);
    var r = Math.floor((e - t * n) / n / 2);
    $(".gallery-list .gallery-item").css("margin", r)
}

function statusbar(e) {
    $(".statusbar").hide();
    if ($(e).is(":hidden")) $(e).fadeIn()
}

function tsp(e, t, n) {
    $("#tsp").remove();
    var r = null;
    if ($.isArray(e)) {
        r = e;
        e = e[0]
    }
    var s = '<div id="tsp"' + (n != null ? ' class="tsp-' + n + '"' : "") + '><div class="tsp-progress' + (t != null ? " tsp-" + t : "") + '" style="width:' + e + '%;"></div></div>';
    $("body").append(s);
    if (r !== null) {
        i = r[0];
        timer = setInterval(function () {
            $("#tsp .tsp-progress").css("width", i + "%");
            i++;
            if (i > r[1]) clearInterval(timer)
        }, 20)
    }
}
$(document).ready(function () {
    $(".tip").tooltip({
        placement: "top"
    });
    $(".tipb").tooltip({
        placement: "bottom"
    });
    $(".tipl").tooltip({
        placement: "left"
    });
    $(".tipr").tooltip({
        placement: "right"
    });
    if ($("#layout_scroll").length > 0) $("#layout_scroll").height($(window).height() - 80);
    if ($(".scroll").length > 0) $(".scroll").mCustomScrollbar();
    $(".modal").on("shown.bs.modal", function () {
        $(this).find(".scroll").mCustomScrollbar("update")
    });
    if ($(".scroll-mail").length > 0) {
        $(".scroll-mail").height($(window).height() - 185).mCustomScrollbar()
    }
    if ($(".accordion").length > 0) {
        $(".accordion").accordion({
            heightStyle: "content"
        });
        $(".accordion .ui-accordion-header:last").css("border-bottom", "0px")
    }
    if ($("input[type=checkbox]").length > 0 || $("input[type=radio]").length > 0) $("input[type=checkbox], input[type=radio]").not(".ibutton").uniform();
    if ($(".select2").length > 0) $(".select2").select2();
    if ($(".tags").length > 0) $(".tags").tagsInput({
        width: "100%",
        height: "auto"
    });
    if ($(".mail_tags").length > 0) $(".mail_tags").tagsInput({
        width: "100%",
        height: "auto",
        defaultText: "add email"
    });
    if ($(".datepicker").length > 0) $(".datepicker").datepicker({
        nextText: "",
        prevText: ""
    });
    if ($(".mdatepicker").length > 0) $(".mdatepicker").datepicker({
        numberOfMonths: 3,
        nextText: "",
        prevText: ""
    });
    if ($(".timepicker").length > 0) $(".timepicker").timepicker();
    if ($(".datetimepicker").length > 0) $(".datetimepicker").datetimepicker({
        nextText: "",
        prevText: ""
    });
    if ($("table.sortable_simple").length > 0) $("table.sortable_simple").dataTable({
        iDisplayLength: 5,
        bLengthChange: false,
        bFilter: false,
        bInfo: false,
        bPaginate: true
    });
    if ($("table.sortable_default").length > 0) $("table.sortable_default").dataTable({
        iDisplayLength: 5,
        sPaginationType: "full_numbers",
        bLengthChange: false,
        bFilter: false,
        bInfo: false,
        bPaginate: true,
        aoColumns: [{
                bSortable: false
            },
            null, null, null, null
        ]
    });
    if ($("table.sortable").length > 0) $("table.sortable").dataTable({
        iDisplayLength: 5,
        aLengthMenu: [5, 10, 25, 50, 100],
        sPaginationType: "full_numbers",
        aoColumns: [{
                bSortable: false
            },
            null, null, null, null
        ]
    });
    if ($(".ibutton").length > 0) $(".ibutton:radio, .ibutton:checkbox").iButton();
    if ($(".knob").length > 0) $(".knob input").knob();
    if ($(".sparkline").length > 0) $(".sparkline span").sparkline("html", {
        enableTagOptions: true
    });
    if ($(".cle").length > 0) cE = $(".cle").cleditor({
        width: "100%",
        height: 230
    });
    if ($(".scle").length > 0) cEC = $(".scle").cleditor({
        width: "100%",
        height: 230,
        controls: "bold italic underline strikethrough link unlink"
    })[0].focus();
    $("#modal_mail").on("shown.bs.modal", function () {
        cEC.refresh()
    });
    if ($("#validate").length > 0 || $("#validate_custom").length > 0) $("#validate, #validate_custom").validationEngine("attach", {
        promptPosition: "topLeft"
    });
    if ($("#wizard").length > 0) $("#wizard").stepy();
    if ($("#wizard_validate").length > 0) {
        $("#wizard_validate").validationEngine("attach", {
            promptPosition: "topLeft"
        });
        $("#wizard_validate").stepy({
            back: function (e) {},
            next: function (e) {
                if (!$("#wizard_validate").validationEngine("validate")) return false
            },
            finish: function (e) {
                if (!$("#wizard_validate").validationEngine("validate")) return false
            }
        })
    }
    if ($("input[class^='mask_']").length > 0) {
        $("input.mask_tin").mask("99-9999999");
        $("input.mask_ssn").mask("999-99-9999");
        $("input.mask_date").mask("9999-99-99");
        $("input.mask_product").mask("a*-999-a999");
        $("input.mask_phone").mask("99 (999) 999-99-99");
        $("input.mask_phone_ext").mask("99 (999) 999-9999? x99999");
        $("input.mask_credit").mask("9999-9999-9999-9999");
        $("input.mask_percent").mask("99%")
    }
    if ($("pre[class^=brush]").length > 0) {
        SyntaxHighlighter.defaults["toolbar"] = false;
        SyntaxHighlighter.all()
    }
    if ($(".fancybox").length > 0) $(".fancybox").fancybox({
        padding: 10
    });
    if ($(".carousel").length > 0) $(".carousel").carousel();
    if ($("#calendar").length > 0) {
        var e = new Date;
        var t = e.getDate();
        var n = e.getMonth();
        var r = e.getFullYear();
        $("#external-events .external-event").each(function () {
            var e = {
                title: $.trim($(this).text())
            };
            $(this).data("eventObject", e);
            $(this).draggable({
                zIndex: 999,
                revert: true,
                revertDuration: 0
            })
        });
        var i = $("#calendar").fullCalendar({
            header: {
                left: "prev,next today",
                center: "title",
                right: "month,agendaWeek,agendaDay"
            },
            editable: true,
            events: [{
                title: "All Day Event",
                start: new Date(r, n, 1)
            }, {
                title: "Long Event",
                start: new Date(r, n, t - 5),
                end: new Date(r, n, t - 2)
            }, {
                id: 999,
                title: "Repeating Event",
                start: new Date(r, n, t - 3, 16, 0),
                allDay: false
            }, {
                id: 999,
                title: "Repeating Event",
                start: new Date(r, n, t + 4, 16, 0),
                allDay: false
            }, {
                title: "Meeting",
                start: new Date(r, n, t, 10, 30),
                allDay: false
            }, {
                title: "Lunch",
                start: new Date(r, n, t, 12, 0),
                end: new Date(r, n, t, 14, 0),
                allDay: false
            }, {
                title: "Birthday Party",
                start: new Date(r, n, t + 1, 19, 0),
                end: new Date(r, n, t + 1, 22, 30),
                allDay: false
            }, {
                title: "Click for Google",
                start: new Date(r, n, 28),
                end: new Date(r, n, 29),
                url: "http://google.com/"
            }],
            droppable: true,
            selectable: true,
            selectHelper: true,
            select: function (e, t, n) {
                var r = prompt("Event Title:");
                if (r) {
                    i.fullCalendar("renderEvent", {
                        title: r,
                        start: e,
                        end: t,
                        allDay: n
                    }, true)
                }
                i.fullCalendar("unselect")
            },
            drop: function (e, t) {
                var n = $(this).data("eventObject");
                var r = $.extend({}, n);
                r.start = e;
                r.allDay = t;
                $("#calendar").fullCalendar("renderEvent", r, true);
                if ($("#drop-remove").is(":checked")) {
                    $(this).remove()
                }
            }
        })
    }
    $("[data-toggle=popover]").popover();
    $("#slider").slider({
        range: "min",
        min: 0,
        max: 100,
        value: 50
    });
    $("#slider2").slider({
        range: true,
        min: 0,
        max: 500,
        values: [150, 350]
    });
    $("#slider3").slider({
        orientation: "vertical",
        range: "min",
        min: 0,
        max: 100,
        value: 50
    });
    $("#slider4").slider({
        orientation: "vertical",
        min: 0,
        max: 500,
        range: true,
        values: [150, 350]
    });
    if ($("#price_rage").length > 0) {
        $("#price_rage").slider({
            range: true,
            min: 0,
            max: 3e3,
            values: [1e3, 2e3],
            slide: function (e, t) {
                $("#price_amount").html("$" + t.values[0] + " - $" + t.values[1])
            }
        });
        $("#price_amount").html("$" + $("#price_rage").slider("values", 0) + " - $" + $("#price_rage").slider("values", 1))
    }
    $("#spinner").spinner();
    $("#spinner2").spinner({
        step: .1
    });
    $("#spinner3").spinner({
        min: 0,
        max: 2500,
        step: 25.15,
        numberFormat: "C"
    });
    $("#fat-btn").click(function () {
        var e = $(this);
        e.button("loading");
        setTimeout(function () {
            e.button("reset")
        }, 3e3)
    })
});
$(window).resize(function () {
    if ($("#layout_scroll").length > 0) $("#layout_scroll").height($(window).height() - 80).mCustomScrollbar("update");
    if ($(".scroll-mail").length > 0) $(".scroll-mail").height($(window).height() - 205).mCustomScrollbar("update")
});
$(document).ready(function () {
    $(".tasks_view_block").click(function () {
        $(".tasks").removeClass("tasks_list")
    });
    $(".tasks_view_list").click(function () {
        $(".tasks").addClass("tasks_list")
    });
    $(".page-sidebar").hover(function () {
        if ($(".page-container").hasClass("page-sidebar-narrow")) {
            $(this).css("width", 230);
            $(".page-content").css("margin-left", 230);
            $(".page-navigation-hide").css("display", "block")
        }
    }, function () {
        if ($(".page-container").hasClass("page-sidebar-narrow")) {
            $(this).removeAttr("style");
            $(".page-content").removeAttr("style");
            $(".page-navigation-hide").removeAttr("style");
            $(".page-navigation li ul").removeAttr("style")
        }
    });
    $(".psn-control").click(function () {
        if ($(".page-container").hasClass("page-sidebar-narrow")) {
            $(".page-container").removeClass("page-sidebar-narrow");
            $(this).parent(".control").removeClass("active")
        } else {
            $(".page-container").addClass("page-sidebar-narrow");
            $(this).parent(".control").addClass("active")
        }
        return false
    });
    $(".page-navigation li a").click(function () {
        var e = $(this).parent("li").children("ul");
        if (e.length == 1) {
            if (e.is(":visible")) e.slideUp("fast");
            else e.slideDown("fast");
            return false
        }
    });
    $(".block-remove").click(function () {
        $(this).parents(".block").fadeOut("slow", function () {
            $(this).remove()
        });
        return false
    });
    $(".block-toggle").click(function () {
        var e = $(this).parents(".block").children("div").not(".header");
        if (e.is(":visible")) {
            e.slideUp();
            $(this).find("span").removeClass("icon-chevron-down").addClass("icon-chevron-up")
        } else {
            e.slideDown();
            $(this).find("span").removeClass("icon-chevron-up").addClass("icon-chevron-down")
        }
        return false
    });
    $(".file .btn,.file input:text").click(function () {
        var e = $(this).parents(".file");
        e.find("input:file").click();
        e.find("input:file").change(function () {
            e.find("input:text").val(e.find("input:file").val())
        })
    });
    $(".user-change-button").click(function () {
        $(this).parents(".block").find(".user-change").animate({
            opacity: 0
        }, 400, function () {
            $(this).find("img").attr("src", "img/user.jpg");
            $(this).animate({
                opacity: 1
            }, 400)
        });
        $(this).parents(".block").find(".user-change-row").fadeIn(800);
        $(this).remove()
    });
    $("table .checkall").click(function () {
        var e = $(this).parents("th").index();
        var t = $(this).parents("table").find("tbody");
        if ($(this).is(":checked")) t.find("tr").each(function () {
            var t = $(this).find("td:eq(" + e + ") input:checkbox");
            t.parent("span").addClass("checked");
            t.attr("checked", false)
        });
        else t.find("tr").each(function () {
            var t = $(this).find("td:eq(" + e + ") input:checkbox");
            t.parent("span").removeClass("checked");
            t.attr("checked", false)
        })
    });
    $(".stbar, .statusbar-close").click(function () {
        statusbar($(this).attr("href"));
        return false
    });
    $(".ui-spinner").find("span").html("");
    $(".icons-list .col-md-3").click(function () {
        var e = $(this).html();
        var t = /<(\w+)[^>]*>.*<\/\1>/gi;
        var n = $.trim(e.replace(t, ""));
        $("#modal_icon .modal-body .list").html('<div class="list-item"><div class="list-text"><p><i class="' + n + '"></i></p></div></div>' + '<div class="list-item"><div class="list-text"><p><span class="' + n + '"></span></p></div></div>' + '<div class="list-item"><div class="list-text"><p>.' + n + "</p></div></div>");
        $("#modal_icon .modal-body .icons-list-icon").html("").append('<span class="' + n + '"></span>');
        $("#modal_icon").modal("show")
    })
});
$(window).bind("load", function () {
    gallery();
    thumbs();
    lists();
    page()
});
$(window).resize(function () {
    $(".nav-tabs-vertical").each(function () {
        var e = $(this).find(".nav-tabs").height();
        $(this).find(".tabs").css("min-height", e)
    });
    gallery();
    thumbs();
    lists();
    page()
});
$(document).ready(function () {
    function d(e, t) {
        return "<div style='text-shadow: 1px 2px 1px rgba(0,0,0,0.2); font-size: 11px; text-align:center; padding:2px; color: #FFF; line-height: 13px;'>" + e + "<br/>" + Math.round(t.percent) + "%</div>"
    }

    function v(e, t, n) {
        $('<div class="ftooltip">' + n + "</div>").css({
            position: "absolute",
            "z-index": "10",
            display: "none",
            top: t - 20,
            left: e,
            padding: "3px",
            "background-color": "rgba(0,0,0,0.5)",
            "font-size": "11px",
            "border-radius": "3px",
            color: "#FFF"
        }).appendTo("body").fadeIn(200)
    }
    if ($("#dash_chart_1").length > 0) {
        var e = [
            [1, 25],
            [2, 28],
            [3, 22],
            [4, 18],
            [5, 30],
            [6, 18],
            [7, 14]
        ];
        var t = $.plot($("#dash_chart_1"), [{
            data: e,
            label: "Sales"
        }], {
            series: {
                lines: {
                    show: true
                },
                points: {
                    show: true
                }
            },
            grid: {
                hoverable: true,
                clickable: true,
                margin: {
                    left: 110
                }
            },
            xaxis: {
                ticks: [
                    [1, "Mon"],
                    [2, "Tue"],
                    [3, "Wed"],
                    [4, "Thu"],
                    [5, "Fri"],
                    [6, "Sat"],
                    [7, "Sun"]
                ]
            },
            legend: {
                show: false
            }
        })
    }
    if ($("#dash_chart_2").length > 0) {
        var n = [
            [1, 1023],
            [2, 1244],
            [3, 1506],
            [4, 1330],
            [5, 1065],
            [6, 890],
            [7, 650]
        ];
        var r = [
            [1, 868],
            [2, 1485],
            [3, 1355],
            [4, 1002],
            [5, 1200],
            [6, 755],
            [7, 800]
        ];
        var i = $.plot($("#dash_chart_2"), [{
            data: n,
            label: "Search Traffic"
        }, {
            data: r,
            label: "Referal Traffic"
        }], {
            series: {
                lines: {
                    show: true
                },
                points: {
                    show: true
                }
            },
            grid: {
                hoverable: true,
                clickable: true
            },
            xaxis: {
                max: 7,
                ticks: [
                    [1, "Mon"],
                    [2, "Tue"],
                    [3, "Wed"],
                    [4, "Thu"],
                    [5, "Fri"],
                    [6, "Sat"],
                    [7, "Sun"]
                ]
            }
        })
    }
    if ($("#chart_line_1").length > 0) {
        var s = [],
            o = [],
            u = [];
        for (var a = 0; a < 14; a += .3) {
            s.push([a, Math.sin(a)]);
            u.push([a, Math.sin(a - 1.57)]);
            o.push([a, Math.cos(a)])
        }
        var f = $.plot($("#chart_line_1"), [{
            data: s,
            label: "sin(x)"
        }, {
            data: o,
            label: "cos(x)"
        }, {
            data: u,
            label: "sin(y)"
        }], {
            series: {
                lines: {
                    show: true
                },
                points: {
                    show: true
                }
            },
            grid: {
                hoverable: true,
                clickable: true
            },
            yaxis: {
                min: -1.1,
                max: 1.1
            }
        })
    }
    if ($("#chart_bar_1").length > 0) {
        var n = [
            [1, 25],
            [2, 28],
            [3, 22],
            [4, 18],
            [5, 30],
            [6, 18]
        ];
        var r = [
            [1, 15],
            [2, 22],
            [3, 16],
            [4, 12],
            [5, 25],
            [6, 7]
        ];
        var l = [
            [1, 10],
            [2, 16],
            [3, 10],
            [4, 6],
            [5, 18],
            [6, 3]
        ];
        var c = $.plot($("#chart_bar_1"), [{
            data: n,
            label: "Data 1"
        }, {
            data: r,
            label: "Data 2"
        }, {
            data: l,
            label: "Data 3"
        }], {
            series: {
                stack: 0,
                bars: {
                    show: true,
                    barWidth: .8,
                    align: "center"
                }
            },
            grid: {
                hoverable: true,
                clickable: true
            }
        })
    }
    if ($("#chart_bar_2").length > 0) {
        var h = $.plot($("#chart_bar_2"), [{
            data: n,
            label: "Data 1"
        }, {
            data: r,
            label: "Data 2"
        }, {
            data: l,
            label: "Data 3"
        }], {
            series: {
                stack: 0,
                lines: {
                    show: true,
                    fill: true
                },
                bars: {
                    show: false
                }
            },
            grid: {
                hoverable: true,
                clickable: true
            }
        })
    }
    if ($("#chart_pie_1").length > 0) {
        var e = [];
        e[0] = {
            label: "Data 1",
            data: 40
        };
        e[1] = {
            label: "Data 2",
            data: 30
        };
        e[2] = {
            label: "Data 3",
            data: 30
        };
        $.plot("#chart_pie_1", e, {
            series: {
                pie: {
                    radius: 1,
                    show: true,
                    label: {
                        show: true,
                        radius: 2 / 3,
                        formatter: d,
                        threshold: .1
                    }
                }
            },
            legend: {
                show: false
            }
        })
    }
    if ($("#chart_user_1").length > 0) {
        var n = [
            [1, 45],
            [2, 35],
            [3, 57],
            [4, 75],
            [5, 80]
        ];
        var r = [
            [1, 55],
            [2, 65],
            [3, 43],
            [4, 25],
            [5, 20],
            [6, 75],
            [7, 85]
        ];
        var l = [
            [6, 25],
            [7, 15]
        ];
        var p = $.plot($("#chart_user_1"), [{
            data: n,
            label: "Leo"
        }, {
            data: r,
            label: "Taurus"
        }, {
            data: l,
            label: "Aries"
        }], {
            series: {
                lines: {
                    show: true
                },
                points: {
                    show: true
                }
            },
            grid: {
                hoverable: true,
                clickable: true
            },
            xaxis: {
                max: 7,
                ticks: [
                    [1, "Mon"],
                    [2, "Tue"],
                    [3, "Wed"],
                    [4, "Thu"],
                    [5, "Fri"],
                    [6, "Sat"],
                    [7, "Sun"]
                ]
            }
        })
    }
    var m = null;
    $("#chart_bar_1,#chart_bar_2,#chart_line_1,#dash_chart_1,#dash_chart_2,#chart_user_1").bind("plothover", function (e, t, n) {
        $("#x").text(t.x.toFixed(2));
        $("#y").text(t.y.toFixed(2));
        if (n) {
            if (m != n.dataIndex) {
                m = n.dataIndex;
                $(".ftooltip").remove();
                var r = n.datapoint[0].toFixed(2),
                    i = n.datapoint[1].toFixed(2);
                v(n.pageX, n.pageY, n.series.label + ": " + i)
            }
        } else {
            $(".ftooltip").remove();
            m = null
        }
    })
});
$(document).ready(function () {
    if ($("#google_kyiv_map").length > 0) {
        var e = new google.maps.LatLng(50.43, 30.6);
        var t = {
            zoom: 10,
            center: e,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var n = new google.maps.Map(document.getElementById("google_kyiv_map"), t);
        var r = new google.maps.LatLng(50.43, 30.6);
        var i = new google.maps.Marker({
            position: r,
            map: n,
            title: "Office title"
        })
    }
    if ($("#google_world_map").length > 0) {
        var s = new google.maps.LatLng(50, 0);
        var o = {
            zoom: 1,
            center: s,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var u = new google.maps.Map(document.getElementById("google_world_map"), o);
        var a = new google.maps.LatLng(50, 10);
        var f = {
            zoom: 3,
            center: a,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var l = new google.maps.Map(document.getElementById("google_eu_map"), f);
        var c = new google.maps.LatLng(50.43, 30.6);
        var h = {
            zoom: 8,
            center: c,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var p = new google.maps.Map(document.getElementById("google_ptm_map"), h);
        var d = new google.maps.LatLng(50.37, 30.65);
        var v = new google.maps.Marker({
            position: d,
            map: p,
            title: "Marker 1"
        });
        d = new google.maps.LatLng(50.5, 30.55);
        v = new google.maps.Marker({
            position: d,
            map: p,
            title: "Marker 2"
        });
        d = new google.maps.LatLng(50.8, 30.55);
        v = new google.maps.Marker({
            position: d,
            map: p,
            title: "Marker 3"
        });

        function m() {
            var e = new google.maps.Map(document.getElementById("google_search_map"), {
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
            var t = new google.maps.LatLngBounds(new google.maps.LatLng(-33.8902, 151.1759), new google.maps.LatLng(-33.8474, 151.2631));
            e.fitBounds(t);
            var n = document.getElementById("target");
            var r = new google.maps.places.SearchBox(n);
            var i = [];
            google.maps.event.addListener(r, "places_changed", function () {
                var t = r.getPlaces();
                for (var n = 0, s; s = i[n]; n++) {
                    s.setMap(null)
                }
                i = [];
                var o = new google.maps.LatLngBounds;
                for (var n = 0, u; u = t[n]; n++) {
                    var a = {
                        url: u.icon,
                        size: new google.maps.Size(71, 71),
                        origin: new google.maps.Point(0, 0),
                        anchor: new google.maps.Point(17, 34),
                        scaledSize: new google.maps.Size(25, 25)
                    };
                    var s = new google.maps.Marker({
                        map: e,
                        icon: a,
                        title: u.name,
                        position: u.geometry.location
                    });
                    i.push(s);
                    o.extend(u.geometry.location)
                }
                e.fitBounds(o)
            });
            google.maps.event.addListener(e, "bounds_changed", function () {
                var t = e.getBounds();
                r.setBounds(t)
            })
        }
        google.maps.event.addDomListener(window, "load", m)
    }
})