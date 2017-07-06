
$(document).ready(function () {

    $("#flex_3 :input([type='checkbox'],[id^=checkbox_page3_row_])").change(function () {
        if ($("#flex_3 :input([type='checkbox'],[id^=checkbox_page3_row_])").filter(':checked').length > 0) {
            if ($("#p_plate_saved").is(":hidden")) {
                $("#p_plate_saved").toggle();
            }
        } else {
            if ($("#p_plate_saved").is(":visible")) {
                $("#p_plate_saved").toggle();
            }
        }


        /*
         //alert($("#p_plate_saved").is(":hidden"));
         if ($("#p_plate_saved").is(":hidden")) {
         $("#p_plate_saved").toggle();
         }
         */
    });

    //after print
    /*
     var beforePrint = function () {
     alert("before");
     };
     var afterPrint = function () {
     alert("after");
     };
     
     var launchedFromMenu = true;
     if (window.matchMedia) {
     var mediaQueryList = window.matchMedia('print');
     mediaQueryList.addListener(function (mql) {
     if (mql.matches) {
     if (launchedFromMenu) {
     // https://bugs.chromium.org/p/chromium/issues/detail?id=571070
     alert("There is a bug in Chrome/Opera and printing via the main menu does not work properly. Please use the 'print' icon on the page.");
     }
     beforePrint();
     } else {
     afterPrint();
     }
     });
     }
     */

    //end of after print

    switch (localStorage.user_group) {
        case "WDpromsmaster":
            //alert("1111");

            /*
             $('#control_panel_popup :input').attr('readonly', false);
             $('#control_panel_popup :input[type=checkbox]').attr('readonly', false);
             $('#control_panel_open :input').attr('readonly', false);
             
             $('.page :input').attr('readonly', false);
             $('.page .select').css('pointer-events', 'auto');
             $('.page :input[type=checkbox]').attr('readonly', false);
             
             
             $(':checkbox[readonly="readonly"]').click(function () {
             return true;
             });
             */
            break;
        case "WDpromsinkroom":
            $('#control_panel_popup :input').attr('readonly', 'readonly');
            $('#control_panel_popup :input[type=checkbox]').attr('readonly', 'readonly');

            $('.page :input:not([id^=input_ink_number],[id=input_by_1],[id=input_date_1])').attr('readonly', true);
            $('.page .select:not([id^=input_ink_system])').css('pointer-events', 'none');
            $('.page :input[type=checkbox]').attr('readonly', 'readonly');
            /*
             $("#input_by_1").val(localStorage.user_name_signed_in);
             var today = new Date();
             $("#input_date_1").val(today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate());
             today = undefined;
             */

            $(':checkbox[readonly="readonly"]').click(function () {
                return false;
            });
            break;
        case "WDpromscolors":
            $('#control_panel_popup :input').attr('readonly', 'readonly');
            $('#control_panel_popup :input[type=checkbox]').attr('readonly', 'readonly');

            $('.page :input:not([id^=input_ink_number],[id=input_master_img])').attr('readonly', true);
            $('.page .select:not([id^=input_ink_system])').css('pointer-events', 'none');
            $('.page :input[type=checkbox]').attr('readonly', 'readonly');

            /*
             $("#input_by_1").val(localStorage.user_name_signed_in);
             var today = new Date();
             $("#input_date_1").val(today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate());
             today = undefined;
             */

            $(':checkbox[readonly="readonly"]').click(function () {
                return false;
            });
            break;
        case "WDpromswash":
            $('#control_panel_popup :input').attr('readonly', 'readonly');
            $('#control_panel_popup :input[type=checkbox]').attr('readonly', 'readonly');

            $('.page :input:not([id*=_page3_])').attr('readonly', true);
            $('.page .select:not([id*=_page3_])').css('pointer-events', 'none');
            $('.page :input:not([id*=_page3_],[type=checkbox])').attr('readonly', 'readonly');


            $(':checkbox[readonly="readonly"]').click(function () {
                return false;
            });
            break;
        case "NA":

            $('#control_panel_popup :input').attr('readonly', 'readonly');
            $('#control_panel_popup :input[type=checkbox]').attr('readonly', 'readonly');
            //alert("222");
            $('#control_panel_open :input').attr('readonly', 'readonly');

            $('.page :input').attr('readonly', true);
            $('.page .select').css('pointer-events', 'none');
            $('.page :input[type=checkbox]').attr('readonly', 'readonly');

            $(':checkbox[readonly="readonly"]').click(function () {
                return false;
            });

            /*
             $("#section-to-print").slideUp({duration: 1800, easing: "easeInOutQuart"});
             $("#section-to-print_2").slideUp({duration: 1800, easing: "easeInOutQuart"});
             $("#section-to-print_3").css('height', '370mm');
             */

            /*
             
             $("#section-to-print").toggle();
             $("#section-to-print_2").toggle();
             $("#section-to-print_3").css('height', '370mm');
             alert($(window).height());
             */
    }



    var new_proms_number = null;
    var proms_number = null;

    if (!localStorage.user_name_signed_in) {
        $(".btns").css("opacity", "0.38");
        $("#img_account").css("opacity", "1.0");
    } else {
        $(".btns").css("opacity", "1.0");
        $("#img_account").css("opacity", "0.38");
    }


    $("#input_item_number").change(function () {
        $("#input_page3_item").val($(this).val());
    });

    $("#input_po_number").change(function () {
        $("#input_page3_po").val($(this).val());
    });
    
    $("#input_colour_1").change(function () {
        $("#input_page3_row_1").val($(this).val());
    });
    $("#input_colour_2").change(function () {
        $("#input_page3_row_2").val($(this).val());
    });
    $("#input_colour_3").change(function () {
        $("#input_page3_row_3").val($(this).val());
    });
    $("#input_colour_4").change(function () {
        $("#input_page3_row_4").val($(this).val());
    });
    $("#input_colour_5").change(function () {
        $("#input_page3_row_5").val($(this).val());
    });
    $("#input_colour_6").change(function () {
        $("#input_page3_row_6").val($(this).val());
    });
    $("#input_colour_7").change(function () {
        $("#input_page3_row_7").val($(this).val());
    });
    $("#input_colour_8").change(function () {
        $("#input_page3_row_8").val($(this).val());
    });
    $("#input_colour_9").change(function () {
        $("#input_page3_row_9").val($(this).val());
    });
    $("#input_colour_10").change(function () {
        $("#input_page3_row_10").val($(this).val());
    });
    $("#input_colour_11").change(function () {
        $("#input_page3_row_11").val($(this).val());
    });
    $("#input_colour_12").change(function () {
        $("#input_page3_row_12").val($(this).val());
    });

    $("#img_pdf").click(function (e) {

        //alert($("#open_input_proms_pdf").find(":selected").text());
        if ($("#open_input_proms_pdf").find(":selected").text().trim() === "") {
            $("#pdf_msg").css('color', 'red');
            $("#pdf_msg").val("PROMS PDF can not be empty, select a file to proceed");
            return;
        }
        //$('#control_panel_pdf').toggle();

        //alert($("#open_input_proms_pdf").find(":selected").text());

        //return;

        //alert("GO to MES and Movex");



        /*
         insert into [AAD].[dbo].[t_mfg_document_links] (key_category,key_value,
         document_type,document_title,document_path,user_id,bu_code,virtual_directory)
         values ('ITEM','TEST1','PDF','PROMS PDF','T:\MO PDF\TEST1.PDF','GGG','WD','MoComments')
         */

        $.ajax({
            type: "GET",
            url: "upload_mo_comment",
            data: {
                //folder_name: "\\w15lan01\MO Comments\MO PDF"
                fn: $("#open_input_proms_pdf").find(":selected").text(),
                user: localStorage.user_name_signed_in
            },
            dataType: "jsonp",
            jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
            //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
            //jsonpCallback: "myjsonpcallbacknameinalllowercase",
            beforeSend: function () {
                //$("#table_file_gif").show();
            },
            error: function () {
                //alert('Can not retrieve jsonp data - PROMS PDF to Mo Comment');
                $("#pdf_msg").css('color', 'green');
                $("#pdf_msg").val("Can not retrieve jsonp data - PROMS PDF to Mo Comment");
            },
            complete: function () {
                //$("#table_file_gif").hide();
            },
            success: function (data, textStatus, jqXHR) {

                if (!$.trim(data)) {
                    //alert("No data found under this PROMS #, please try it again.");
                    $("#pdf_msg").val("Cannot sync to Mo Comment");
                } else {
                    $.each(data, function (k, v) {
                        /* */
                        if (v.j_pdf_mo_comment === "true") {
                            $("#pdf_msg").css('color', 'green');
                            $("#pdf_msg").val("Synchronized to Mo Comment");

                        } else {
                            $("#pdf_msg").css('color', 'red');
                            $("#pdf_msg").val("Cannot sync to Mo Comment");
                        }


                    });
                }
            }
        });

    });

    $('#open_input_proms_pdf').change(function () {
        $("#pdf_msg").val("");
    });

    $('#open_input_proms_pdf').blur(function () {

    });

    $('#control_panel_pdf').focus(function () {


    });

    $("#img_manufacture").click(function (e) {
        if (!localStorage.user_name_signed_in) {
            e.preventDefault();
            alert("Log in first ! ");
        } else {
            $('#open_input_proms_pdf')
                    .find('option')
                    .remove()
                    .end();


            $('#control_panel_pdf').toggle();



            if ($('#control_panel_pdf').is(":visible")) {
                //alert("111");

                $.ajax({
                    type: "GET",
                    // url: "Item_in_transit_by_jsonp",
                    //url: "http://128.1.10.116:8080/winpak/user_signin_2",
                    //url: "http://128.1.10.116:8080/winpak/get_file_list",
                    //url: window.global_ip + "get_file_list",
                    url: "get_proms_pdf",
                    data: {
                        //folder_name: "\\w15lan01\MO Comments\MO PDF"
                        //pwd: "123456"
                    },
                    dataType: "jsonp",
                    jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                    //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                    //jsonpCallback: "myjsonpcallbacknameinalllowercase",
                    beforeSend: function () {
                        //$("#table_file_gif").show();

                    },
                    error: function () {
                        alert('Can not retrieve jsonp data - PROMS PDF');
                    },
                    complete: function () {
                        $("#table_file_gif").hide();

                    },
                    success: function (data, textStatus, jqXHR) {

                        if (!$.trim(data)) {
                            //alert("No data found under this PROMS #, please try it again.");
                            $("#pdf_msg").val("No PROMS file exists");
                        } else {
                            $.each(data, function (k, v) {
                                /*
                                 new_proms_number = $("#saveas_input_proms_number").val();
                                 proms_number = new_proms_number;
                                 $("#pdf_msg").val("New sheet saved" + "    / new_proms_number : " + new_proms_number);
                                 */

                                //alert(v.file_name);
                                if (v.file_name.toString().indexOf(".pdf") !== -1) {
                                    $('#open_input_proms_pdf').append(
                                            $("<option></option>")
                                            //.attr("value", v.file_name)
                                            .text(v.file_name)
                                            );
                                }

                            });
                        }
                    }
                });
            } else {
                // alert("222");
            }
            //alert("GO to MES and Movex");

            /*
             insert into [AAD].[dbo].[t_mfg_document_links] (key_category,key_value,
             document_type,document_title,document_path,user_id,bu_code,virtual_directory)
             values ('ITEM','TEST1','PDF','PROMS PDF','T:\MO PDF\TEST1.PDF','GGG','WD','MoComments')
             */
        }
    });

    $("#img_switch").click(function (e) {
        if (!localStorage.user_name_signed_in) {
            e.preventDefault();
            alert("Log in first ! ");
        } else {
            $('#control_panel_popup').toggle();
        }
    });

    $("#img_saveas").click(function (e) {
        if (!localStorage.user_name_signed_in) {
            e.preventDefault();
            alert("Log in first ! ");
        } else {

            $("#saveas_msg").val("");

            if ($("#saveas_input_proms_number").val().trim() === '') {
                $("#saveas_input_proms_number").focus();
                $("#saveas_msg").val("Enter a PROMS Number for file name.");
            } else {
                $.ajax({
                    type: "GET",
                    url: "data_row",
                    async: false,
                    data: {
                        para_sn_val: $("#saveas_input_proms_number").val()
                    },
                    dataType: "jsonp",
                    jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                    //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                    //jsonpCallback: "myjsonpcallbacknameinalllowercase",
                    beforeSend: function () {
                        // $("#table_folder_gif").show();
                    },
                    error: function () {
                        alert('Erroe getting PROMS # data');
                    },
                    complete: function () {

                    },
                    success: function (data, textStatus, jqXHR) {
                        if (!$.trim(data)) {
                            alert("No data found under this PROMS #, please try it again.");
                        } else {
                            $.each(data, function (k, v) {
                                if (v.rs === "true") {
                                    $("#saveas_msg").val("PROMS Number already exist, try another one.");
                                    proms_number = null;
                                } else {
                                    new_proms_number = $("#saveas_input_proms_number").val();
                                    proms_number = new_proms_number;
                                    $("#saveas_msg").val("New sheet saved" + "    / new_proms_number : " + new_proms_number);
                                    $("#img_save").trigger("click");
                                }
                            });
                        }
                    }
                });

            }


        }
    });

    $("#img_newsheet").click(function (e) {
        if (!localStorage.user_name_signed_in) {
            e.preventDefault();
            alert("Log in first ! ");
        } else {

            //$("#img_save").css("opacity", "0.38");

            $("#open_msg").val("");
            //$("#control_panel_open").toggle();
            /*
             $(".page").find("input[type=text]:not(:disabled), textarea").val("");
             $(".page").find("input[type=checkbox]").removeAttr('checked');
             $(".page").find("select").find('option:eq(0)').prop('selected', true);
             $(".page").find("img[id^=pic]").css('display', 'none');
             
             if ($("#input_remark_1").val() === "") {
             $("#input_remark_1").val(" Built in guideline with 5+5 added");
             }
             */

            if ($("#open_input_proms_number").val().trim() === '') {
                $("#open_input_proms_number").focus();
                $("#open_msg").val("Enter a PROMS Number for file name.");
            } else {
                $.ajax({
                    type: "GET",
                    url: "data_row",
                    async: false,
                    data: {
                        para_sn_val: $("#open_input_proms_number").val()
                    },
                    dataType: "jsonp",
                    jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                    //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                    //jsonpCallback: "myjsonpcallbacknameinalllowercase",
                    beforeSend: function () {
                        // $("#table_folder_gif").show();
                    },
                    error: function () {
                        alert('Error getting PROMS # for new addition');
                    },
                    complete: function () {

                    },
                    success: function (data, textStatus, jqXHR) {
                        if (!$.trim(data)) {
                            alert("No data found under this PROMS #, please try it again.");
                        } else {
                            $.each(data, function (k, v) {
                                if (v.rs === "true") {
                                    $("#open_msg").val("This PROMS # already exist, try another one.");
                                    proms_number = null;
                                } else {
                                    //new_proms_number = $("#open_input_proms_number").val();
                                    //proms_number = new_proms_number;
                                    //proms_number = $("#open_input_proms_number").val();
                                    $('.p_prmos_number').text("PROMS # : " + $("#open_input_proms_number").val().trim());
                                    $("#open_msg").val("New PROMS # :       " + $("#open_input_proms_number").val().trim() + "                Created");
                                    //$("#img_save").trigger("click");

                                    $(".page").find("input[type=text]:not(:disabled), textarea").val("");
                                    $(".page").find("input[type=checkbox]").removeAttr('checked');
                                    $(".page").find("select").find('option:eq(0)').prop('selected', true);
                                    $(".page").find("img[id^=pic]").css('display', 'none');

                                    if ($("#input_remark_1").val() === "") {
                                        $("#input_remark_1").val(" Built in guideline with 5+5 added");
                                    }

                                    $("#control_panel_open").toggle();
                                    $("html, body").animate({scrollTop: 0}, "slow");
                                    return false;
                                }
                            });
                        }
                    }
                });
            }

            //$("#img_save").css("pointer-events", "none");

        }
    });

    $("#img_copy").click(function (e) {
        e.preventDefault();
        if ($(".p_prmos_number").first().text().toString().substring($(".p_prmos_number").first().text().toString().indexOf(":") + 2).trim() === "") {
            //if ($("#open_input_proms_number").val().trim() === "") {
            //alert("Enter the source PROMS #");
            if ($("#open_input_proms_number").val().trim() !== "") {
                $("#open_msg").css('color','red');
                $("#open_msg").val("Press Enter to open this file first");
            } else {
                $("#open_msg").css('color','red');
                $("#open_msg").val("Enter the source PROMS #");
            }
            $("#open_input_proms_number").focus();
        } else {
            //document.title = $(".p_prmos_number").first().text().toString().substring($(".p_prmos_number").first().text().toString().indexOf(":") + 2);
            //alert("copy");
            //$("#open_input_proms_number").val("");

            if ($("#open_input_proms_number").val().trim() === "") {
                $("#open_msg").css('color','red');
                $("#open_msg").val("Enter a new PROMS #");
                $("#open_input_proms_number").focus();
            } else {
                //alert("copy");
                //return;
                $.ajax({
                    type: "GET",
                    url: "data_copy",
                    //async: false,
                    data: {
                        para_sn_source: $(".p_prmos_number").first().text().toString().substring($(".p_prmos_number").first().text().toString().indexOf(":") + 2),
                        para_sn_new: $("#open_input_proms_number").val()
                    },
                    dataType: "jsonp",
                    jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                    //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                    //jsonpCallback: "myjsonpcallbacknameinalllowercase",
                    beforeSend: function () {
                        // $("#table_folder_gif").show();
                    },
                    error: function () {
                        alert('Error copying PROMS #');
                    },
                    complete: function () {

                    },
                    success: function (data, textStatus, jqXHR) {
                        if (!$.trim(data)) {
                            alert("No data, please try it again.");
                        } else {
                            $.each(data, function (k, v) {
                                switch (v.err) {
                                    case "none":
                                        $("#open_msg").css('color','green');
                                        $("#open_msg").val("PROMS file copied");
                                        break;
                                    case "duplicate":
                                        $("#open_msg").css('color','red');
                                        $("#open_msg").val("PROMS # already exists, try another PROMS #");
                                        break;
                                    default:
                                        $("#open_msg").css('color','red');
                                        $("#open_msg").val(v.err);
                                }
                            });
                        }
                    }
                });
            }

        }

    });

    $("#img_save").focus(function (e) {
        // alert(proms_number);
    });

    $("#img_save").click(function (e) {
        //alert(localStorage.user_name_signed_in + "  ----------  " + localStorage.user_group);
        /*  */
        if (!localStorage.user_name_signed_in || localStorage.user_group === "NA" || !localStorage.user_group) {
            e.preventDefault();
            if (localStorage.user_group !== "NA" && localStorage.user_group !== "undefined") {
                alert("Log in first ! ");
            } else {
                alert("Sorry, you are not a PROMS user");
            }

            /*
             if (!localStorage.user_name_signed_in) {
             e.preventDefault();
             
             alert("Log in first ! ");
             */
        } else {

            /*
             switch (new_proms_number) {
             case null:   // not a new sheet, save to existing sheet； img_newsheet not clicked
             if (proms_number === null) {
             alert("Invalid PROMS #, re-open with another RPOMS #");
             return;
             }
             break;
             case '0000': // img_newsheet clicked, but not a real savable proms #
             $("#control_panel_saveas").toggle();
             return;
             //break;
             default:     // img_newsheet clicked, with valid new proms #                    
             //$("#control_panel_saveas").toggle();
             proms_number = new_proms_number;
             // alert("default:" + "   PROMS # is : " + proms_number);
             
             }
             
             
             */

            /*
             alert("proms_number : " + proms_number + "   ;  new_proms_number : " + new_proms_number);
             
             
             
             if (proms_number === null && new_proms_number === null) {
             return;
             }
             
             if (new_proms_number === '0000') {
             //alert($("#img_save").css("opacity"));
             if ($("#img_save").css("opacity") === "1") {
             $("#control_panel_saveas").toggle();
             //$("#img_save").css("opacity", "0.38");
             }
             return;
             }
             */

            /*
             if ($("#img_save").css("opacity") === "0.38") {
             return false;
             }
             */

            //proms_number = $("#open_input_proms_number").val();
            //alert(proms_number);

            /*
             if ($("#control_panel_open").is(":visible")) {
             alert("Close the folder window to proceed.");
             return;
             }
             */

            proms_number = $(".p_prmos_number").first().text().toString().substring($(".p_prmos_number").first().text().toString().indexOf(":") + 2);
            //alert(proms_number);

            if (proms_number === null || proms_number.trim() === '') {
                alert("PROMS # can not be null");
                return;
            }

            //alert("run + : " + proms_number);


            //return;
            //alert("goint to save to 1001");


            /*
             * 
             * page 1
             * 
             * 
             */

            /* */
            var all_Element_page1 = $("#flex_1 input[id]:not(:disabled), #flex_1 .select[id], #flex_1 textarea[id]")         // find input with ID attribute
                    .map(function () {
                        return this.id;
                    }) // convert to set of IDs
                    .get(); // convert to instance of Array (optional)

            all_Element_page1.forEach(function (part, index, theArray) {

                switch ($("#" + theArray[index]).attr('class')) {
                    case "select":
                        theArray[index] = theArray[index].replace(theArray[index].substring(0, theArray[index].indexOf("_")), "page1") + "=" + $("#" + theArray[index] + " option:selected").text().trim();
                        break;
                    default:
                        //$("#" + theArray[index]).val($("#" + theArray[index]).val().trim().replace("'","''"));
                        theArray[index] = theArray[index].replace(theArray[index].substring(0, theArray[index].indexOf("_")), "page1") + "=" + $("#" + theArray[index]).val().trim().replace("'", "''");
                }
            });

            $.ajax({
                type: "POST",
                url: "data_set_1",
                data: {
                    //para_1: "page1_sn/1001" + all_Element_page1
                    //info:info
                    all_Element_page1: all_Element_page1,
                    para_sn: 'page1_sn',
                    para_sn_val: proms_number
                },
                dataType: "jsonp",
                jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                //jsonpCallback: "myjsonpcallbacknameinalllowercase",
                beforeSend: function () {
                    // $("#table_folder_gif").show();
                },
                error: function () {
                    alert('Can not save first page.');
                },
                complete: function () {
                    all_Element_page1 = undefined;
                },
                success: function (data, textStatus, jqXHR) {

                    if (!$.trim(data)) {
                        alert("blank data");
                    } else {
                        $.each(data, function (k, v) {
                            //alert(v.j_data_set_1 + ", Data has been successfully updated.");
                            //alert(" First page data has been successfully updated.");
                            if (v.j_data_set_1 !== "true") {
                                alert("First page can not be updated");
                            }
                        });
                    }
                }
            });



            /*
             * 
             * page 2
             * 
             * 
             */

            var all_Element_page2 = $("#flex_2 input[id]:not(:disabled), #flex_2 .select[id], #flex_2 textarea[id], #flex_2 img[id^=pic_]")         // find input with ID attribute
                    .map(function () {
                        return this.id;
                    }) // convert to set of IDs
                    .get(); // convert to instance of Array (optional)

            var all_Element_page2_addtional = [];

            all_Element_page2.forEach(function (part, index, theArray) {
                switch ($("#" + part).attr('class')) {
                    case "select":
                        theArray[index] = part.replace(part.substring(0, part.indexOf("_")), "page2") + "=" + $("#" + part + " option:selected").text().trim();
                        break;
                    default:
                        if (part.indexOf("pic_") !== -1) {
                            if (part.indexOf("-") !== -1) {  // eye spot                                                                                    
                                theArray[index] = "page2_" + part + "_display" + "=";
                                if ($("#" + part).is(':visible')) {
                                    theArray[index] = theArray[index] + "visible";
                                } else {
                                    theArray[index] = theArray[index] + "hidden";
                                }
                                theArray[index] = theArray[index].replace("-", "_");

                                /*
                                 theArray[index] = theArray[index]
                                 + "/" + "eyespot_pic_pos_"
                                 + theArray[index].split("_")[2] + "_"
                                 + theArray[index].split("_")[3] + "_"
                                 + theArray[index].split("_")[4] + "_"
                                 + "top:"
                                 + window["eyespot_pic_pos_"
                                 + theArray[index].split("_")[2] + "_"
                                 + theArray[index].split("_")[3] + "_"
                                 + theArray[index].split("_")[4] + "_"
                                 + "top"]
                                 + "/" + "eyespot_pic_pos_"
                                 + theArray[index].split("_")[2] + "_"
                                 + theArray[index].split("_")[3] + "_"
                                 + theArray[index].split("_")[4] + "_"
                                 + "left:"
                                 + window["eyespot_pic_pos_"
                                 + theArray[index].split("_")[2] + "_"
                                 + theArray[index].split("_")[3] + "_"
                                 + theArray[index].split("_")[4] + "_"
                                 + "left"];
                                 */

                                /*
                                 theArray[index] = theArray[index]
                                 + "/"
                                 + theArray[index].split("=")[0].replace("display", "top:")
                                 + window["eyespot_pic_pos_"
                                 + theArray[index].split("_")[2] + "_"
                                 + theArray[index].split("_")[3] + "_"
                                 + theArray[index].split("_")[4] + "_"
                                 + "top"]
                                 + "/"
                                 + theArray[index].split("=")[0].replace("display", "left:")
                                 + window["eyespot_pic_pos_"
                                 + theArray[index].split("_")[2] + "_"
                                 + theArray[index].split("_")[3] + "_"
                                 + theArray[index].split("_")[4] + "_"
                                 + "left"];
                                 */





                                all_Element_page2_addtional.push(theArray[index].split("=")[0].replace("display", "top=")
                                        + window["eyespot_pic_pos_"
                                                + theArray[index].split("_")[2] + "_"
                                                + theArray[index].split("_")[3] + "_"
                                                + theArray[index].split("_")[4] + "_"
                                                + "top"]);

                                all_Element_page2_addtional.push(theArray[index].split("=")[0].replace("display", "left=")
                                        + window["eyespot_pic_pos_"
                                                + theArray[index].split("_")[2] + "_"
                                                + theArray[index].split("_")[3] + "_"
                                                + theArray[index].split("_")[4] + "_"
                                                + "left"]);

                                //alert(theArray[index]);
                            } else {   // arrow
                                theArray[index] = "page2_" + part + "_display" + "=";
                                if ($("#" + part).is(':visible')) {
                                    theArray[index] = theArray[index] + "visible";
                                } else {
                                    theArray[index] = theArray[index] + "hidden";
                                }
                                //alert(theArray[index]);
                            }
                        } else {
                            theArray[index] = part.replace(part.substring(0, part.indexOf("_")), "page2") + "=" + $("#" + part).val().trim().replace("'", "''");
                        }
                }
            });

            all_Element_page2 = all_Element_page2.concat(all_Element_page2_addtional);
            all_Element_page2_addtional = undefined;

            //return;
            //alert("2 page");

            $.ajax({
                type: "POST",
                url: "data_set_2",
                data: {
                    //para_1: "page1_sn/1001" + all_Element_page1
                    //info:info
                    all_Element_page2: all_Element_page2,
                    para_sn: 'page2_sn',
                    para_sn_val: proms_number
                },
                dataType: "jsonp",
                jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                //jsonpCallback: "myjsonpcallbacknameinalllowercase",
                beforeSend: function () {
                    // $("#table_folder_gif").show();
                },
                error: function () {
                    alert('Can not save second page.');
                },
                complete: function () {
                    all_Element_page2 = undefined;
                },
                success: function (data, textStatus, jqXHR) {

                    if (!$.trim(data)) {
                        alert("blank data");
                    } else {
                        $.each(data, function (k, v) {
                            //alert(v.j_data_set_2 + ", Data has been successfully updated.");
                            //alert(" Second page data has been successfully updated.");
                            if (v.j_data_set_2 !== "true") {
                                alert("Second page can not be updated");
                            }
                        });
                    }
                }
            });

            /*
             * 
             * page 3
             * 
             * 
             */

            /* */
            var all_Element_page3 = $("#flex_3 input[id]:not(:disabled), #flex_3 .select[id], #flex_3 textarea[id]")         // find input with ID attribute
                    .map(function () {
                        return this.id;
                    }) // convert to set of IDs
                    .get(); // convert to instance of Array (optional)

            all_Element_page3.forEach(function (part, index, theArray) {

                switch ($("#" + theArray[index]).attr('class')) {
                    case "select":
                        //theArray[index] = theArray[index].replace(theArray[index].substring(0, theArray[index].indexOf("_")), "page3") + "=" + $("#" + theArray[index] + " option:selected").text().trim();
                        theArray[index] = theArray[index].substring(theArray[index].indexOf("_") + 1) + "=" + $("#" + theArray[index] + " option:selected").text().trim();
                        break;
                    default:
                        if ($("#" + theArray[index]).attr('type') === "checkbox") {
                            //alert($("#" + theArray[index]).prop('checked'));
                            //theArray[index] = theArray[index].replace(theArray[index].substring(0, theArray[index].indexOf("_")), "page3") + "=" + $("#" + theArray[index]).prop('checked');
                            theArray[index] = theArray[index].substring(theArray[index].indexOf("_") + 1) + "_tick" + "=" + $("#" + theArray[index]).prop('checked');
                        } else {
                            //theArray[index] = theArray[index].replace(theArray[index].substring(0, theArray[index].indexOf("_")), "page3") + "=" + $("#" + theArray[index]).val().trim();
                            theArray[index] = theArray[index].substring(theArray[index].indexOf("_") + 1) + "=" + $("#" + theArray[index]).val().trim().replace("'", "''");

                        }
                }
            });

            //return;
            //alert("page 3");


            $.ajax({
                type: "POST",
                url: "data_set_3",
                data: {
                    all_Element_page3: all_Element_page3,
                    para_sn: 'page3_sn',
                    para_sn_val: proms_number
                },
                dataType: "jsonp",
                jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                //jsonpCallback: "myjsonpcallbacknameinalllowercase",
                beforeSend: function () {
                    // $("#table_folder_gif").show();
                },
                error: function () {
                    alert('Can not save third page.');
                },
                complete: function () {
                    all_Element_page3 = undefined;
                },
                success: function (data, textStatus, jqXHR) {

                    if (!$.trim(data)) {
                        alert("blank data");
                    } else {
                        $.each(data, function (k, v) {
                            //alert(v.j_data_set_1 + ", Data has been successfully updated.");
                            //alert(" First page data has been successfully updated.");
                            if (v.j_data_set_3 !== "true") {
                                alert("Third page can not be updated");
                            }
                        });
                    }
                }
            });

        }
    });

    $("#img_print").click(function () {
        //window.print();
    });

    $("#img_print_guide").click(function () {
        /*
         window["beforePrint"]();
         launchedFromMenu = false;
         */

        window.print();
        /*
         window.onafterprint = function () {
         alert("Printing completed...");
         };
         */
    });

    $("#img_menu").click(function () {
        if ($('#control_panel_swtich_board').css('display') === 'none')
        {
            // $('#control_panel_swtich_board').css('display', 'block');
            // $('#img_save').css('width', '10px');
            //$('#img_save').css('height','10px');

            // $(this).width(20);
            // $(this).height(20);
        } else {
            // $('#control_panel_swtich_board').css('display', 'none');
            // $('#img_save').css('width', 60+'px');
            // $('#img_save').css('height',60+'px');
            // alert("tt");
            //  $(this).width(20);
            // $(this).height(20);
        }

        if ($('#print_guide').css('display') === 'none')
        {
            $('#print_guide').css('display', 'block');
        } else {
            $('#print_guide').css('display', 'none');
        }
    });

    $("#img_overlay").click(function (e) {
        if (!localStorage.user_name_signed_in) {
            e.preventDefault();
            alert("Log in first ! ");
        } else {
            $('#overlay').toggle();
        }
    });


    $("#img_jump").click(function (e) {

        if (!localStorage.user_name_signed_in) {
            e.preventDefault();
            alert("Log in first ! ");
        } else {
            if ($("#img_2_1").css('display') === 'block') {
                $("#img_2_1").css('display', 'none');
                $("#img_2_2").css('display', 'block');
                $("#input_print_width").css('width', 78 + 'px');
                $("#input_print_width").css('left', 303 + 'px');
                return;
            }
            if ($("#img_2_2").css('display') === 'block') {
                $("#img_2_2").css('display', 'none');
                $("#img_2_3").css('display', 'block');
                $("#input_print_width").css('width', 180 + 'px');
                $("#input_print_width").css('left', 252 + 'px');
                return;
            }
            if ($("#img_2_3").css('display') === 'block') {
                $("#img_2_3").css('display', 'none');
                $("#img_2_4").css('display', 'block');
                $("#input_print_width").css('left', 298 + 'px');
                $("#input_print_width").css('width', 280 + 'px');
                return;
            }
            if ($("#img_2_4").css('display') === 'block') {
                $("#img_2_4").css('display', 'none');
                $("#img_2_5").css('display', 'block');
                $("#input_print_width").css('display', 'none');
                return;
            }
            if ($("#img_2_5").css('display') === 'block') {
                $("#img_2_5").css('display', 'none');
                $("#img_2_1").css('display', 'block');
                $("#input_print_width").css('display', 'block');
                $("#input_print_width").css('width', 78 + 'px');
                $("#input_print_width").css('left', 212 + 'px');
                return;
            }
        }

    });

    $("#img_open").click(function (e) {
        if (!localStorage.user_name_signed_in) {
            e.preventDefault();
            alert("Log in first ! ");
        } else {
            $("#control_panel_open").toggle();
            /*
             if ($("#control_panel_open").is(":hidden")) {
             proms_number = $("#open_input_proms_number").val();
             if (proms_number.trim() === '') {
             proms_number = null;
             }
             }
             */

        }
    });



    $("#open_input_item_number").on('keyup', function (e) {
        //this.value = this.value.replace(/[^0-9,.]/g, '');
        /*
         if (e.which === 13) {
         $("#img_refresh").trigger("click");
         }
         */

        switch (e.which) {
            case 13:
                $("#img_refresh").trigger("click");
                break;
            case 27:
                $("#open_input_item_number").val("");
                $("#open_msg").val("");
                //$("#control_panel_open").toggle();
                break;
            default:

        }

    });

    $('#open_input_item_number').on('input', function (event) {
        this.value = this.value.replace(/[^0-9,.]/g, '');
        if ($("#open_msg").val().trim() !== "") {
            $("#open_msg").val("");
        }
    });

    $("#img_refresh").click(function () {
        //alert("open new one");

        $.ajax({
            type: "GET",
            url: "data_set_1",
            data: {
                para_1: $("#open_input_item_number").val()
            },
            dataType: "jsonp",
            jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
            //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
            //jsonpCallback: "myjsonpcallbacknameinalllowercase",
            beforeSend: function () {
                // $("#table_folder_gif").show();
            },
            error: function () {
                //alert('Can not retrieve jsonp data : popup');               
            },
            complete: function () {

            },
            success: function (data, textStatus, jqXHR) {
                if (!$.trim(data)) {
                    $("#open_msg").val($("<div />").html('&#9888;&nbsp;&nbsp;&nbsp;').text() + "No data under this item number...");
                } else {
                    $.each(data, function (k, v) {
                        //alert(v.input_a);
                        $("#input_a").val(v.input_a);
                    });
                }
            }
        });
    });



    $("#img_print").click(function (e) {
        if (!localStorage.user_name_signed_in) {
            e.preventDefault();
            alert("Log in first ! ");
        } else {
            /*
             if ($("#input_page3_watermark").css('opacity') === '0.8') {
             $("#input_page3_watermark").css('opacity', '0.2');
             }
             */
            //alert($(".p_prmos_number").first().text().toString().substring($(".p_prmos_number").first().text().toString().indexOf(":") + 2));
            /*
             if ($("#input_item_number").val().trim() === "") {
             document.title = 'PROMS' + $(".p_prmos_number").first().text().toString().substring($(".p_prmos_number").first().text().toString().indexOf(":") + 2);
             } else {
             document.title = $("#input_item_number").val().trim();
             }*/


            if ($(".p_prmos_number").first().text().toString().substring($(".p_prmos_number").first().text().toString().indexOf(":") + 2).trim() === "") {
                document.title = 'PROMS';
            } else {
                document.title = $(".p_prmos_number").first().text().toString().substring($(".p_prmos_number").first().text().toString().indexOf(":") + 2);
            }
            window.print();
        }
    });

    $("#img_wm").click(function (e) {
        if (!localStorage.user_name_signed_in) {
            e.preventDefault();
            alert("Log in first ! ");
        } else {
            if ($(this).css("opacity") === "1") {
                $(this).css("opacity", "0.2");
                $(".wm").removeClass("watermark-print");
            } else {
                $(this).css("opacity", "1");
                $(".wm").addClass("watermark-print");
            }
        }
    });

    $("#img_text").click(function (e) {
        if (!localStorage.user_name_signed_in) {
            e.preventDefault();
            alert("Log in first ! ");
        } else {
            $("#input_page3_watermark").toggle();
            $("#input_page3_watermark").focus();


            /*
             if ($(this).css("opacity") === "1") {
             $(this).css("opacity", "0.2");
             $("#input_page3_watermark").css("display","block");
             }else{
             $(this).css("opacity", "1");
             $("#input_page3_watermark").css("display","none");
             }
             */
        }
    });

    $("#input_page3_watermark").focus(function (e) {
        if ($("#input_page3_watermark").css('visibility', 'visible')) {
            //$("#input_page3_watermark").css('opacity', '0.8');
            $("#input_page3_watermark").css('opacity', '1.0');
        }
    });

    $("#input_page3_watermark").focusout(function (e) {
        if ($("#input_page3_watermark").css('visibility', 'visible')) {
            //$("#input_page3_watermark").css('opacity', '0.2');
            $("#input_page3_watermark").css('opacity', '1.0');
        }
    });

    $("#img_account").click(function (e) {
        if (!localStorage.user_name_signed_in) {
            $("#control_panel_account").toggle();
        }
    });

    /*
     $("#input_account_name").focusout(function (e) {
     if ($(this).val() !== "") {
     //$("#input_account_pw").focus();
     $("#account_msg").val("");
     } else {
     //$(this).css("border-color", "red");
     $("#account_msg").val($("<div />").html('&#9888;&nbsp;&nbsp;&nbsp;').text() + "User name can not be empty !");
     $(this).focus();
     }
     
     });
     */
    $("#input_account_name").on('keyup', function (e) {
        /*
         switch (e.which) {
         case 13:
         if ($(this).val() !== "") {
         $("#account_msg").val("");
         $("#input_account_pw").focus();
         } else {
         //$(this).css("border-color", "red");
         $("#account_msg").val($("<div />").html('&#9888;&nbsp;&nbsp;&nbsp;').text() + "User name can not be empty !");
         $(this).focus();
         }
         break;
         case 27:
         $(this).val("");
         $("#account_msg").val("");
         //$("#control_panel_open").toggle();
         break;
         default:
         }
         */
    });

    $("#input_account_pw").on('keyup', function (e) {

    });


    $("#img_logout").click(function (e) {
        //$(".btns").css("disabled","true");
        //alert("try to not click on img button");
        //$(".btns").toggle();

        //$(".btns").css("opacity","0.4");                
        //$("#img_switch").attr('disabled', 'disabled').css('opacity', 0.5);

        if (!localStorage.user_name_signed_in) {
            e.preventDefault();
            alert("Log in first ! ");
        } else {
            localStorage.removeItem("user_name_signed_in");
            localStorage.removeItem("user_id_signed_in");
            localStorage.removeItem("user_department_signed_in");
            localStorage.removeItem("user_group");

            $(".btns").css("opacity", "0.38");
            $("#img_account").css("opacity", "1.0");

            location.reload();
        }

    });


    /* 
     * this is to focus next input and select when type an enter 
     */

    /*  */
// register jQuery extension
    jQuery.extend(jQuery.expr[':'], {
        focusable_sheet: function (el, index, selector) {
            //return $(el).is('a, button, :input, [tabindex]');
            return $(el).is('.page :input:not([type=checkbox],[readonly],[disabled]), [tabindex]');
            //return $(el).is('#flex_1 :input:not([type=checkbox],[readonly],[disabled]), [tabindex]');

            //return $(el).is('.page :input:not([type=checkbox],[readonly],[disabled],["#tune_up_input"],["#tune_left_input"]), [tabindex]');
        }
    });
    $(document).on('keyup', 'input,select', function (e) {
        e.preventDefault();
        switch (e.which) {
            case 13:
                switch ($(e.target).attr("id").trim()) {
                    case 'open_input_esko_po_number':
                        if ($(this).val() !== "") {
                            $.ajax({
                                type: "GET",
                                url: "esko",
                                data: {
                                    para_1: $("#open_input_esko_po_number").val().trim()
                                },
                                dataType: "jsonp",
                                jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                                //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                                //jsonpCallback: "myjsonpcallbacknameinalllowercase",
                                beforeSend: function () {
                                    // $("#table_folder_gif").show();
                                },
                                error: function () {
                                    //alert('Can not retrieve jsonp data : popup');               
                                },
                                complete: function () {

                                },
                                success: function (data, textStatus, jqXHR) {

                                    if (!$.trim(data)) {
                                        //alert("No data for this PO Number");
                                        $("#open_msg").val($("<div />").html('&#9888;&nbsp;&nbsp;&nbsp;').text() + "No data found under this (ESKO) PO number");
                                    } else {
                                        if ($("#open_msg").val().trim() !== "") {
                                            $("#open_msg").val("");
                                        }
                                        var dynamic_col_name;
                                        $.each(data, function (k, v) {
                                            dynamic_col_name = v.Name;
                                            if (dynamic_col_name.indexOf("COMMON INK") !== -1) {
                                                dynamic_col_name = "input_commons_" + parseInt(dynamic_col_name.substr(dynamic_col_name.length - 2, dynamic_col_name.length));
                                            } else {
                                                dynamic_col_name = "input_colour_" + parseInt(dynamic_col_name.substr(dynamic_col_name.length - 2, dynamic_col_name.length));
                                            }


                                            //alert(dynamic_col_name + " : " + v.Name + "  " + v.Value);
                                            $("#" + dynamic_col_name).val(v.Value);
                                        });
                                    }
                                }
                            });
                        }
                        break;
                    case 'input_account_pw':
                        if ($(this).val() !== "") {
                            $("#account_msg").val("");
                            //return;

                            //$("#input_account_pw").focus();
                            //alert("going to log in");
                            $.ajax({
                                type: "GET",
                                // url: "http://128.1.10.116:8080/winpak/user_signin",
                                //url: window.global_ip + "user_signin",

                                //url: "user_signin_ad",

                                //url: "http://128.1.8.132:8080/coms/user_signin_ad",

                                url: "login",
                                data: {
                                    name: $("#input_account_name").val(),
                                    pwd: $("#input_account_pw").val()
                                },
                                dataType: "jsonp",
                                jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                                //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                                //jsonpCallback: "myjsonpcallbacknameinalllowercase",
                                beforeSend: function () {
                                    //$(".loading").html("数据加载中.");
                                },
                                error: function () {
                                    alert('Can not retrieve login data');
                                },
                                complete: function () {

                                },
                                success: function (data, textStatus, jqXHR) {
                                    if (!$.trim(data)) {
                                        $("#account_msg").val("Wrong username and/or password, please try again.");
                                    } else {
                                        $.each(data, function (k, v) {
                                            //alert("Welcome " + v.NAME);
                                            //alert("Group: " + v.GROUP);

                                            //store user info to web storage                                    
                                            localStorage.user_id_signed_in = v.ID;
                                            localStorage.user_name_signed_in = v.NAME;
                                            localStorage.user_department_signed_in = v.DEPARTMENT;
                                            localStorage.user_group = v.GROUP;

                                            $("#control_panel_account").toggle();
                                            $(".btns").css("opacity", "1.0");
                                            $("#img_account").css("opacity", "0.38");

                                            $("#input_account_pw").val("");

                                            switch (localStorage.user_group) {
                                                case "WDpromsmaster":
                                                    //alert("1111");

                                                    /*
                                                     $('#control_panel_popup :input').attr('readonly', false);
                                                     $('#control_panel_popup :input[type=checkbox]').attr('readonly', false);
                                                     $('#control_panel_open :input').attr('readonly', false);
                                                     
                                                     $('.page :input').attr('readonly', false);
                                                     $('.page .select').css('pointer-events', 'auto');
                                                     $('.page :input[type=checkbox]').attr('readonly', false);
                                                     
                                                     
                                                     $(':checkbox[readonly="readonly"]').click(function () {
                                                     return true;
                                                     });
                                                     */
                                                    break;
                                                case "WDpromsinkroom":
                                                    $('#control_panel_popup :input').attr('readonly', 'readonly');
                                                    $('#control_panel_popup :input[type=checkbox]').attr('readonly', 'readonly');

                                                    $('.page :input:not([id^=input_ink_number],[id=input_by_1],[id=input_date_1])').attr('readonly', true);
                                                    $('.page .select:not([id^=input_ink_system])').css('pointer-events', 'none');
                                                    $('.page :input[type=checkbox]').attr('readonly', 'readonly');
                                                    /*
                                                     $("#input_by_1").val(localStorage.user_name_signed_in);
                                                     var today = new Date();
                                                     $("#input_date_1").val(today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate());
                                                     today = undefined;
                                                     */
                                                    $(':checkbox[readonly="readonly"]').click(function () {
                                                        return false;
                                                    });
                                                    break;
                                                case "WDpromscolors":
                                                    $('#control_panel_popup :input').attr('readonly', 'readonly');
                                                    $('#control_panel_popup :input[type=checkbox]').attr('readonly', 'readonly');

                                                    $('.page :input:not([id^=input_ink_number],[id=input_master_img])').attr('readonly', true);
                                                    $('.page .select:not([id^=input_ink_system])').css('pointer-events', 'none');
                                                    $('.page :input[type=checkbox]').attr('readonly', 'readonly');

                                                    /*
                                                     $("#input_by_1").val(localStorage.user_name_signed_in);
                                                     var today = new Date();
                                                     $("#input_date_1").val(today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate());
                                                     today = undefined;
                                                     */

                                                    $(':checkbox[readonly="readonly"]').click(function () {
                                                        return false;
                                                    });
                                                    break;
                                                case "WDpromswash":
                                                    $('#control_panel_popup :input').attr('readonly', 'readonly');
                                                    $('#control_panel_popup :input[type=checkbox]').attr('readonly', 'readonly');

                                                    $('.page :input:not([id*=_page3_])').attr('readonly', true);
                                                    $('.page .select:not([id*=_page3_])').css('pointer-events', 'none');
                                                    $('.page :input:not([id*=_page3_],[type=checkbox])').attr('readonly', 'readonly');


                                                    $(':checkbox[readonly="readonly"]').click(function () {
                                                        return false;
                                                    });
                                                    break;
                                                case "NA":

                                                    $('#control_panel_popup :input').attr('readonly', 'readonly');
                                                    $('#control_panel_popup :input[type=checkbox]').attr('readonly', 'readonly');
                                                    //alert("222");
                                                    $('#control_panel_open :input').attr('readonly', 'readonly');

                                                    $('.page :input').attr('readonly', true);
                                                    $('.page .select').css('pointer-events', 'none');
                                                    $('.page :input[type=checkbox]').attr('readonly', 'readonly');

                                                    $(':checkbox[readonly="readonly"]').click(function () {
                                                        return false;
                                                    });

                                                    /*
                                                     $("#section-to-print").slideUp({duration: 1800, easing: "easeInOutQuart"});
                                                     $("#section-to-print_2").slideUp({duration: 1800, easing: "easeInOutQuart"});
                                                     $("#section-to-print_3").css('height', '370mm');
                                                     */

                                                    /*
                                                     
                                                     $("#section-to-print").toggle();
                                                     $("#section-to-print_2").toggle();
                                                     $("#section-to-print_3").css('height', '370mm');
                                                     alert($(window).height());
                                                     */
                                            }




                                        });
                                    }
                                }
                            });
                        } else {
                            //$(this).css("border-color", "red");
                            $("#account_msg").val($("<div />").html('&#9888;&nbsp;&nbsp;&nbsp;').text() + "Password can not be empty !");
                            $(this).focus();
                        }
                        break;
                    case 'input_account_name':
                        if ($(this).val() !== "") {
                            $("#account_msg").val("");
                            $("#input_account_pw").focus();
                        } else {
                            //$(this).css("border-color", "red");
                            $("#account_msg").val($("<div />").html('&#9888;&nbsp;&nbsp;&nbsp;').text() + "User name can not be empty !");
                            $(this).focus();
                        }
                        break;
                    case 'open_input_proms_number':
                        if ($(this).val() !== "") {
                            $.ajax({
                                type: "GET",
                                url: "data_row",
                                async: false,
                                data: {
                                    para_sn_val: $("#open_input_proms_number").val().trim()
                                },
                                dataType: "jsonp",
                                jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                                //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                                //jsonpCallback: "myjsonpcallbacknameinalllowercase",
                                beforeSend: function () {
                                    // $("#table_folder_gif").show();
                                },
                                error: function () {
                                    alert('Erroe getting PROMS # data');
                                },
                                complete: function () {

                                },
                                success: function (data, textStatus, jqXHR) {
                                    if (!$.trim(data)) {
                                        alert("No data found under this PROMS #, please try it again.");
                                    } else {
                                        $.each(data, function (k, v) {
                                            if (v.rs === "true") {
                                                proms_number = $("#open_input_proms_number").val();
                                                $('.p_prmos_number').text("PROMS # : " + proms_number);
                                            } else {
                                                proms_number = null;
                                            }
                                        });
                                    }
                                }
                            });

                            if (proms_number === null) {
                                $("#open_msg").val("No data found under this PROMS #");
                                return;
                            } else {
                                $("#open_msg").val("");
                                $("#control_panel_open").toggle();
                                $(".page").find("input[type=text]:not(:disabled), textarea").val("");
                                $(".page").find("input[type=checkbox]").removeAttr('checked');
                                $(".page").find("select").find('option:eq(0)').prop('selected', true);
                                $(".page").find("img[id^=pic]").css('display', 'none');

                                if ($("#input_remark_1").val() === "") {
                                    $("#input_remark_1").val(" Built in guideline with 5+5 added");
                                }

                                if ($("#p_plate_saved").is(":visible")) {
                                    $("#p_plate_saved").toggle();
                                }
                            }

                            //alert("page1");


                            // page 1
                            var all_Element_page1 = $("#flex_1 input[id]:not(:disabled), #flex_1 .select[id], #flex_1 textarea[id]")         // find input with ID attribute
                                    .map(function () {
                                        return this.id;
                                    }) // convert to set of IDs
                                    .get(); // convert to instance of Array (optional)

                            all_Element_page1.forEach(function (part, index, theArray) {
                                theArray[index] = theArray[index].replace(theArray[index].substring(0, theArray[index].indexOf("_")), "page1") + "=" + $("#" + theArray[index]).val().trim();
                            });

                            $.ajax({
                                type: "POST",
                                url: "data_get_1",
                                data: {
                                    //para_1: "page1_sn/1001" + all_Element_page1
                                    //info:info
                                    //all_Element_page1: all_Element_page1,
                                    //para_sn: 'page1_sn',
                                    para_sn_val: proms_number
                                },
                                dataType: "jsonp",
                                jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                                //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                                //jsonpCallback: "myjsonpcallbacknameinalllowercase",
                                beforeSend: function () {
                                    // $("#table_folder_gif").show();
                                },
                                error: function () {
                                    alert('Can not get page 1 data');
                                },
                                complete: function () {
                                    $("#input_item_number").trigger("change");
                                    $("#input_po_number").trigger("change");
                                    
                                    $("#input_colour_1").trigger("change");
                                    $("#input_colour_2").trigger("change");
                                    $("#input_colour_3").trigger("change");
                                    $("#input_colour_4").trigger("change");
                                    $("#input_colour_5").trigger("change");
                                    $("#input_colour_6").trigger("change");
                                    $("#input_colour_7").trigger("change");
                                    $("#input_colour_8").trigger("change");
                                    $("#input_colour_9").trigger("change");
                                    $("#input_colour_10").trigger("change");
                                    $("#input_colour_11").trigger("change");
                                    $("#input_colour_12").trigger("change");                                
                                                                     
                                },
                                success: function (data, textStatus, jqXHR) {

                                    if (!$.trim(data)) {
                                        //alert("page 1 is blank");
                                    } else {
                                        $.each(data, function (k, v) {
                                            //alert(v.j_data_get_1 + ", Data has been successfully obtained.");

                                            switch ($("#" + v.Name).attr('class')) {
                                                case "select":
                                                    $("#" + v.Name + " option").filter(function () {
                                                        //may want to use $.trim in here
                                                        return $(this).text().trim() === v.Value;
                                                    }).attr('selected', true);
                                                    break;
                                                default:
                                                    $("#" + v.Name).val(v.Value);
                                            }
                                        });
                                        //$("#control_panel_open").toggle();
                                    }
                                }
                            });

                            // page 2

                            var pic_display = [];

                            $.ajax({
                                type: "POST",
                                url: "data_get_2",
                                data: {
                                    //para_1: "page1_sn/1001" + all_Element_page1
                                    //info:info
                                    //all_Element_page1: all_Element_page1,
                                    //para_sn: 'page1_sn',
                                    para_sn_val: proms_number
                                },
                                dataType: "jsonp",
                                jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                                //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                                //jsonpCallback: "myjsonpcallbacknameinalllowercase",
                                beforeSend: function () {
                                    // $("#table_folder_gif").show();
                                },
                                error: function () {
                                    alert('Can not get page 2 data');
                                },
                                complete: function () {

                                    for (var i = 0; i < pic_display.length; i++) {
                                        //alert(pic_display[i]);
                                        if (pic_display[i].split("_").length === 3) {   // normal arrow
                                            if ($("#" + pic_display[i]).is(":hidden")) {
                                                $("#" + pic_display[i]).toggle();
                                            }
                                        } else {                                 // eyespot


                                            pic_display[i] = pic_display[i].substring(0, pic_display[i].lastIndexOf('_')) + '-' + pic_display[i].substring(pic_display[i].lastIndexOf('_') + 1);
                                            if ($("#" + pic_display[i]).is(":hidden")) {
                                                $("#" + pic_display[i]).toggle();


                                                //alert(pic_display[i].toString().replace("pic", "eyespot_pic_pos").replace("-","_") + "_top");
                                                //alert(window[pic_display[i].toString().replace("pic", "eyespot_pic_pos").replace("-","_") + "_top"]);

                                                $("#" + pic_display[i]).css('top', window[pic_display[i].toString().replace("pic", "eyespot_pic_pos").replace("-", "_") + "_top"] + "%");
                                                $("#" + pic_display[i]).css('left', window[pic_display[i].toString().replace("pic", "eyespot_pic_pos").replace("-", "_") + "_left"] + "%");
                                            }
                                            //alert("4");
                                        }
                                    }
                                    pic_display = undefined;
                                },
                                success: function (data, textStatus, jqXHR) {

                                    if (!$.trim(data)) {
                                        //alert("page 2 is blank");
                                    } else {
                                        $.each(data, function (k, v) {
                                            //alert(v.j_data_get_1 + ", Data has been successfully obtained.");

                                            switch ($("#" + v.Name).attr('class')) {
                                                case "select":
                                                    $("#" + v.Name + " option").filter(function () {
                                                        //may want to use $.trim in here
                                                        return $(this).text().trim() === v.Value;
                                                    }).attr('selected', true);
                                                    break;
                                                default:
                                                    if (v.Name.toString().indexOf("pic") !== -1) {
                                                        if ($.isNumeric(v.Value)) {   // isnumeric 删除非数字比如箭头的top和left，只留下eyespot的top和left 
                                                            /*
                                                             if (v.Name.indexOf("top") !== -1) {
                                                             pic_top.push(v.Name + ":" + v.Value);                                                                
                                                             } else {
                                                             pic_left.push(v.Name + ":" + v.Value);
                                                             }
                                                             */
                                                            // alert(window[v.Name.toString().replace("pic","eyespot_pic_pos")]);

                                                            window[v.Name.toString().replace("pic", "eyespot_pic_pos")] = v.Value;
                                                            //alert(window[v.Name.toString().replace("pic", "eyespot_pic_pos")]);

                                                        } else {
                                                            if (v.Value === "visible") {
                                                                pic_display.push(v.Name);
                                                            }
                                                        }
                                                        //alert(v.Name.toString());
                                                    } else {
                                                        $("#" + v.Name).val(v.Value);
                                                    }
                                            }
                                        });
                                        //$("#control_panel_open").toggle();
                                        //alert("done");
                                    }
                                }
                            });

                            // page 3

                            $.ajax({
                                type: "POST",
                                url: "data_get_3",
                                data: {
                                    para_sn_val: proms_number
                                },
                                dataType: "jsonp",
                                jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
                                //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
                                //jsonpCallback: "myjsonpcallbacknameinalllowercase",
                                beforeSend: function () {
                                    // $("#table_folder_gif").show();
                                },
                                error: function () {
                                    alert('Can not get page 3 data');
                                },
                                complete: function () {

                                },
                                success: function (data, textStatus, jqXHR) {

                                    if (!$.trim(data)) {
                                        //alert("page 3 is blank");
                                    } else {
                                        $.each(data, function (k, v) {
                                            //alert(v.j_data_get_1 + ", Data has been successfully obtained.");

                                            switch ($("#" + v.Name).attr('class')) {
                                                case "select":
                                                    $("#" + v.Name + " option").filter(function () {
                                                        //may want to use $.trim in here
                                                        return $(this).text().trim() === v.Value;
                                                    }).attr('selected', true);
                                                    break;
                                                default:
                                                    if ($("#" + v.Name).attr('type') === 'checkbox') {
                                                        if (v.Value === "true") {
                                                            $("#" + v.Name).prop('checked', true);
                                                            if ($("#p_plate_saved").is(":hidden")) {
                                                                $("#p_plate_saved").toggle();
                                                            }
                                                        } else {
                                                            $("#" + v.Name).prop('checked', false);
                                                        }

                                                    } else {
                                                        $("#" + v.Name).val(v.Value);
                                                    }
                                            }
                                        });
                                        //$("#control_panel_open").toggle();
                                    }
                                }
                            });



                            //$("#open_input_esko_po_number").focus();
                        } else {
                            proms_number = null;
                            $(this).focus();
                        }
                        break;
                    case 'tune_up_input':
                        if ($("#pic_h_6-4").css('display') === 'block' && $('#cylinder_h_cbox').is(':checked')) {
                            $("#pic_h_6-4").css('display', "none");
                            eyespot_pic_pos_h_6_4_top = $(this).val();
                            $("#pic_h_6-4").css('top', $(this).val() + "%");
                            $("#pic_h_6-4").css('display', "block");
                        }
                        if ($("#pic_g_6-4").css('display') === 'block' && $('#cylinder_g_cbox').is(':checked')) {
                            $("#pic_g_6-4").css('display', "none");
                            eyespot_pic_pos_g_6_4_top = $(this).val();
                            $("#pic_g_6-4").css('top', $(this).val() + "%");
                            $("#pic_g_6-4").css('display', "block");
                        }
                        if ($("#pic_f_6-4").css('display') === 'block' && $('#cylinder_f_cbox').is(':checked')) {
                            $("#pic_f_6-4").css('display', "none");
                            eyespot_pic_pos_f_6_4_top = $(this).val();
                            $("#pic_f_6-4").css('top', $(this).val() + "%");
                            $("#pic_f_6-4").css('display', "block");
                        }
                        if ($("#pic_e_6-4").css('display') === 'block' && $('#cylinder_e_cbox').is(':checked')) {
                            $("#pic_e_6-4").css('display', "none");
                            eyespot_pic_pos_e_6_4_top = $(this).val();
                            $("#pic_e_6-4").css('top', $(this).val() + "%");
                            $("#pic_e_6-4").css('display', "block");
                        }
                        if ($("#pic_d_6-4").css('display') === 'block' && $('#cylinder_d_cbox').is(':checked')) {
                            $("#pic_d_6-4").css('display', "none");
                            eyespot_pic_pos_d_6_4_top = $(this).val();
                            $("#pic_d_6-4").css('top', $(this).val() + "%");
                            $("#pic_d_6-4").css('display', "block");
                        }
                        if ($("#pic_c_6-4").css('display') === 'block' && $('#cylinder_c_cbox').is(':checked')) {
                            $("#pic_c_6-4").css('display', "none");
                            eyespot_pic_pos_c_6_4_top = $(this).val();
                            $("#pic_c_6-4").css('top', $(this).val() + "%");
                            $("#pic_c_6-4").css('display', "block");
                        }
                        if ($("#pic_b_6-4").css('display') === 'block' && $('#cylinder_b_cbox').is(':checked')) {
                            $("#pic_b_6-4").css('display', "none");
                            eyespot_pic_pos_b_6_4_top = $(this).val();
                            $("#pic_b_6-4").css('top', $(this).val() + "%");
                            $("#pic_b_6-4").css('display', "block");
                        }
                        if ($("#pic_a_6-4").css('display') === 'block' && $('#cylinder_a_cbox').is(':checked')) {
                            $("#pic_a_6-4").css('display', "none");
                            eyespot_pic_pos_a_6_4_top = $(this).val();
                            $("#pic_a_6-4").css('top', $(this).val() + "%");
                            $("#pic_a_6-4").css('display', "block");
                        }




                        if ($("#pic_h_6-3").css('display') === 'block' && $('#cylinder_h_cbox').is(':checked')) {
                            $("#pic_h_6-3").css('display', "none");
                            eyespot_pic_pos_h_6_3_top = $(this).val();
                            $("#pic_h_6-3").css('top', $(this).val() + "%");
                            $("#pic_h_6-3").css('display', "block");
                        }
                        if ($("#pic_g_6-3").css('display') === 'block' && $('#cylinder_g_cbox').is(':checked')) {
                            $("#pic_g_6-3").css('display', "none");
                            eyespot_pic_pos_g_6_3_top = $(this).val();
                            $("#pic_g_6-3").css('top', $(this).val() + "%");
                            $("#pic_g_6-3").css('display', "block");
                        }
                        if ($("#pic_f_6-3").css('display') === 'block' && $('#cylinder_f_cbox').is(':checked')) {
                            $("#pic_f_6-3").css('display', "none");
                            eyespot_pic_pos_f_6_3_top = $(this).val();
                            $("#pic_f_6-3").css('top', $(this).val() + "%");
                            $("#pic_f_6-3").css('display', "block");
                        }
                        if ($("#pic_e_6-3").css('display') === 'block' && $('#cylinder_e_cbox').is(':checked')) {
                            $("#pic_e_6-3").css('display', "none");
                            eyespot_pic_pos_e_6_3_top = $(this).val();
                            $("#pic_e_6-3").css('top', $(this).val() + "%");
                            $("#pic_e_6-3").css('display', "block");
                        }
                        if ($("#pic_d_6-3").css('display') === 'block' && $('#cylinder_d_cbox').is(':checked')) {
                            $("#pic_d_6-3").css('display', "none");
                            eyespot_pic_pos_d_6_3_top = $(this).val();
                            $("#pic_d_6-3").css('top', $(this).val() + "%");
                            $("#pic_d_6-3").css('display', "block");
                        }
                        if ($("#pic_c_6-3").css('display') === 'block' && $('#cylinder_c_cbox').is(':checked')) {
                            $("#pic_c_6-3").css('display', "none");
                            eyespot_pic_pos_c_6_3_top = $(this).val();
                            $("#pic_c_6-3").css('top', $(this).val() + "%");
                            $("#pic_c_6-3").css('display', "block");
                        }
                        if ($("#pic_b_6-3").css('display') === 'block' && $('#cylinder_b_cbox').is(':checked')) {
                            $("#pic_b_6-3").css('display', "none");
                            eyespot_pic_pos_b_6_3_top = $(this).val();
                            $("#pic_b_6-3").css('top', $(this).val() + "%");
                            $("#pic_b_6-3").css('display', "block");
                        }
                        if ($("#pic_a_6-3").css('display') === 'block' && $('#cylinder_a_cbox').is(':checked')) {
                            $("#pic_a_6-3").css('display', "none");
                            eyespot_pic_pos_a_6_3_top = $(this).val();
                            $("#pic_a_6-3").css('top', $(this).val() + "%");
                            $("#pic_a_6-3").css('display', "block");
                        }



                        if ($("#pic_h_6-2").css('display') === 'block' && $('#cylinder_h_cbox').is(':checked')) {
                            $("#pic_h_6-2").css('display', "none");
                            eyespot_pic_pos_h_6_2_top = $(this).val();
                            $("#pic_h_6-2").css('top', $(this).val() + "%");
                            $("#pic_h_6-2").css('display', "block");
                        }
                        if ($("#pic_g_6-2").css('display') === 'block' && $('#cylinder_g_cbox').is(':checked')) {
                            $("#pic_g_6-2").css('display', "none");
                            eyespot_pic_pos_g_6_2_top = $(this).val();
                            $("#pic_g_6-2").css('top', $(this).val() + "%");
                            $("#pic_g_6-2").css('display', "block");
                        }
                        if ($("#pic_f_6-2").css('display') === 'block' && $('#cylinder_f_cbox').is(':checked')) {
                            $("#pic_f_6-2").css('display', "none");
                            eyespot_pic_pos_f_6_2_top = $(this).val();
                            $("#pic_f_6-2").css('top', $(this).val() + "%");
                            $("#pic_f_6-2").css('display', "block");
                        }
                        if ($("#pic_e_6-2").css('display') === 'block' && $('#cylinder_e_cbox').is(':checked')) {
                            $("#pic_e_6-2").css('display', "none");
                            eyespot_pic_pos_e_6_2_top = $(this).val();
                            $("#pic_e_6-2").css('top', $(this).val() + "%");
                            $("#pic_e_6-2").css('display', "block");
                        }
                        if ($("#pic_d_6-2").css('display') === 'block' && $('#cylinder_d_cbox').is(':checked')) {
                            $("#pic_d_6-2").css('display', "none");
                            eyespot_pic_pos_d_6_2_top = $(this).val();
                            $("#pic_d_6-2").css('top', $(this).val() + "%");
                            $("#pic_d_6-2").css('display', "block");
                        }
                        if ($("#pic_c_6-2").css('display') === 'block' && $('#cylinder_c_cbox').is(':checked')) {
                            $("#pic_c_6-2").css('display', "none");
                            eyespot_pic_pos_c_6_2_top = $(this).val();
                            $("#pic_c_6-2").css('top', $(this).val() + "%");
                            $("#pic_c_6-2").css('display', "block");
                        }
                        if ($("#pic_b_6-2").css('display') === 'block' && $('#cylinder_b_cbox').is(':checked')) {
                            $("#pic_b_6-2").css('display', "none");
                            eyespot_pic_pos_b_6_2_top = $(this).val();
                            $("#pic_b_6-2").css('top', $(this).val() + "%");
                            $("#pic_b_6-2").css('display', "block");
                        }
                        if ($("#pic_a_6-2").css('display') === 'block' && $('#cylinder_a_cbox').is(':checked')) {
                            $("#pic_a_6-2").css('display', "none");
                            eyespot_pic_pos_a_6_2_top = $(this).val();
                            $("#pic_a_6-2").css('top', $(this).val() + "%");
                            $("#pic_a_6-2").css('display', "block");
                        }


                        if ($("#pic_h_6-1").css('display') === 'block' && $('#cylinder_h_cbox').is(':checked')) {
                            $("#pic_h_6-1").css('display', "none");
                            eyespot_pic_pos_h_6_1_top = $(this).val();
                            $("#pic_h_6-1").css('top', $(this).val() + "%");
                            $("#pic_h_6-1").css('display', "block");
                        }
                        if ($("#pic_g_6-1").css('display') === 'block' && $('#cylinder_g_cbox').is(':checked')) {
                            $("#pic_g_6-1").css('display', "none");
                            eyespot_pic_pos_g_6_1_top = $(this).val();
                            $("#pic_g_6-1").css('top', $(this).val() + "%");
                            $("#pic_g_6-1").css('display', "block");
                        }
                        if ($("#pic_f_6-1").css('display') === 'block' && $('#cylinder_f_cbox').is(':checked')) {
                            $("#pic_f_6-1").css('display', "none");
                            eyespot_pic_pos_f_6_1_top = $(this).val();
                            $("#pic_f_6-1").css('top', $(this).val() + "%");
                            $("#pic_f_6-1").css('display', "block");
                        }
                        if ($("#pic_e_6-1").css('display') === 'block' && $('#cylinder_e_cbox').is(':checked')) {
                            $("#pic_e_6-1").css('display', "none");
                            eyespot_pic_pos_e_6_1_top = $(this).val();
                            $("#pic_e_6-1").css('top', $(this).val() + "%");
                            $("#pic_e_6-1").css('display', "block");
                        }
                        if ($("#pic_d_6-1").css('display') === 'block' && $('#cylinder_d_cbox').is(':checked')) {
                            $("#pic_d_6-1").css('display', "none");
                            eyespot_pic_pos_d_6_1_top = $(this).val();
                            $("#pic_d_6-1").css('top', $(this).val() + "%");
                            $("#pic_d_6-1").css('display', "block");
                        }
                        if ($("#pic_c_6-1").css('display') === 'block' && $('#cylinder_c_cbox').is(':checked')) {
                            $("#pic_c_6-1").css('display', "none");
                            eyespot_pic_pos_c_6_1_top = $(this).val();
                            $("#pic_c_6-1").css('top', $(this).val() + "%");
                            $("#pic_c_6-1").css('display', "block");
                        }
                        if ($("#pic_b_6-1").css('display') === 'block' && $('#cylinder_b_cbox').is(':checked')) {
                            $("#pic_b_6-1").css('display', "none");
                            eyespot_pic_pos_b_6_1_top = $(this).val();
                            $("#pic_b_6-1").css('top', $(this).val() + "%");
                            $("#pic_b_6-1").css('display', "block");
                        }
                        if ($("#pic_a_6-1").css('display') === 'block' && $('#cylinder_a_cbox').is(':checked')) {
                            $("#pic_a_6-1").css('display', "none");
                            eyespot_pic_pos_a_6_1_top = $(this).val();
                            $("#pic_a_6-1").css('top', $(this).val() + "%");
                            $("#pic_a_6-1").css('display', "block");
                        }

                        $("#tune_left_input").focus();
                        break;
                    case 'tune_left_input':
                        if ($("#pic_h_6-4").css('display') === 'block' && $('#cylinder_h_cbox').is(':checked')) {
                            $("#pic_h_6-4").css('display', "none");
                            eyespot_pic_pos_h_6_4_left = $(this).val();
                            $("#pic_h_6-4").css('left', $(this).val() + "%");
                            $("#pic_h_6-4").css('display', "block");
                        }
                        if ($("#pic_g_6-4").css('display') === 'block' && $('#cylinder_g_cbox').is(':checked')) {
                            $("#pic_g_6-4").css('display', "none");
                            eyespot_pic_pos_g_6_4_left = $(this).val();
                            $("#pic_g_6-4").css('left', $(this).val() + "%");
                            $("#pic_g_6-4").css('display', "block");
                        }
                        if ($("#pic_f_6-4").css('display') === 'block' && $('#cylinder_f_cbox').is(':checked')) {
                            $("#pic_f_6-4").css('display', "none");
                            eyespot_pic_pos_f_6_4_left = $(this).val();
                            $("#pic_f_6-4").css('left', $(this).val() + "%");
                            $("#pic_f_6-4").css('display', "block");
                        }
                        if ($("#pic_e_6-4").css('display') === 'block' && $('#cylinder_e_cbox').is(':checked')) {
                            $("#pic_e_6-4").css('display', "none");
                            eyespot_pic_pos_e_6_4_left = $(this).val();
                            $("#pic_e_6-4").css('left', $(this).val() + "%");
                            $("#pic_e_6-4").css('display', "block");
                        }
                        if ($("#pic_d_6-4").css('display') === 'block' && $('#cylinder_d_cbox').is(':checked')) {
                            $("#pic_d_6-4").css('display', "none");
                            eyespot_pic_pos_d_6_4_left = $(this).val();
                            $("#pic_d_6-4").css('left', $(this).val() + "%");
                            $("#pic_d_6-4").css('display', "block");
                        }
                        if ($("#pic_c_6-4").css('display') === 'block' && $('#cylinder_c_cbox').is(':checked')) {
                            $("#pic_c_6-4").css('display', "none");
                            eyespot_pic_pos_c_6_4_left = $(this).val();
                            $("#pic_c_6-4").css('left', $(this).val() + "%");
                            $("#pic_c_6-4").css('display', "block");
                        }
                        if ($("#pic_b_6-4").css('display') === 'block' && $('#cylinder_b_cbox').is(':checked')) {
                            $("#pic_b_6-4").css('display', "none");
                            eyespot_pic_pos_b_6_4_left = $(this).val();
                            $("#pic_b_6-4").css('left', $(this).val() + "%");
                            $("#pic_b_6-4").css('display', "block");
                        }
                        if ($("#pic_a_6-4").css('display') === 'block' && $('#cylinder_a_cbox').is(':checked')) {
                            $("#pic_a_6-4").css('display', "none");
                            eyespot_pic_pos_a_6_4_left = $(this).val();
                            $("#pic_a_6-4").css('left', $(this).val() + "%");
                            $("#pic_a_6-4").css('display', "block");
                        }

                        if ($("#pic_h_6-3").css('display') === 'block' && $('#cylinder_h_cbox').is(':checked')) {
                            $("#pic_h_6-3").css('display', "none");
                            eyespot_pic_pos_h_6_3_left = $(this).val();
                            $("#pic_h_6-3").css('left', $(this).val() + "%");
                            $("#pic_h_6-3").css('display', "block");
                        }
                        if ($("#pic_g_6-3").css('display') === 'block' && $('#cylinder_g_cbox').is(':checked')) {
                            $("#pic_g_6-3").css('display', "none");
                            eyespot_pic_pos_g_6_3_left = $(this).val();
                            $("#pic_g_6-3").css('left', $(this).val() + "%");
                            $("#pic_g_6-3").css('display', "block");
                        }
                        if ($("#pic_f_6-3").css('display') === 'block' && $('#cylinder_f_cbox').is(':checked')) {
                            $("#pic_f_6-3").css('display', "none");
                            eyespot_pic_pos_f_6_3_left = $(this).val();
                            $("#pic_f_6-3").css('left', $(this).val() + "%");
                            $("#pic_f_6-3").css('display', "block");
                        }
                        if ($("#pic_e_6-3").css('display') === 'block' && $('#cylinder_e_cbox').is(':checked')) {
                            $("#pic_e_6-3").css('display', "none");
                            eyespot_pic_pos_e_6_3_left = $(this).val();
                            $("#pic_e_6-3").css('left', $(this).val() + "%");
                            $("#pic_e_6-3").css('display', "block");
                        }
                        if ($("#pic_d_6-3").css('display') === 'block' && $('#cylinder_d_cbox').is(':checked')) {
                            $("#pic_d_6-3").css('display', "none");
                            eyespot_pic_pos_d_6_3_left = $(this).val();
                            $("#pic_d_6-3").css('left', $(this).val() + "%");
                            $("#pic_d_6-3").css('display', "block");
                        }
                        if ($("#pic_c_6-3").css('display') === 'block' && $('#cylinder_c_cbox').is(':checked')) {
                            $("#pic_c_6-3").css('display', "none");
                            eyespot_pic_pos_c_6_3_left = $(this).val();
                            $("#pic_c_6-3").css('left', $(this).val() + "%");
                            $("#pic_c_6-3").css('display', "block");
                        }
                        if ($("#pic_b_6-3").css('display') === 'block' && $('#cylinder_b_cbox').is(':checked')) {
                            $("#pic_b_6-3").css('display', "none");
                            eyespot_pic_pos_b_6_3_left = $(this).val();
                            $("#pic_b_6-3").css('left', $(this).val() + "%");
                            $("#pic_b_6-3").css('display', "block");
                        }
                        if ($("#pic_a_6-3").css('display') === 'block' && $('#cylinder_a_cbox').is(':checked')) {
                            $("#pic_a_6-3").css('display', "none");
                            eyespot_pic_pos_a_6_3_left = $(this).val();
                            $("#pic_a_6-3").css('left', $(this).val() + "%");
                            $("#pic_a_6-3").css('display', "block");
                        }

                        if ($("#pic_h_6-2").css('display') === 'block' && $('#cylinder_h_cbox').is(':checked')) {
                            $("#pic_h_6-2").css('display', "none");
                            eyespot_pic_pos_h_6_2_left = $(this).val();
                            $("#pic_h_6-2").css('left', $(this).val() + "%");
                            $("#pic_h_6-2").css('display', "block");
                        }
                        if ($("#pic_g_6-2").css('display') === 'block' && $('#cylinder_g_cbox').is(':checked')) {
                            $("#pic_g_6-2").css('display', "none");
                            eyespot_pic_pos_g_6_2_left = $(this).val();
                            $("#pic_g_6-2").css('left', $(this).val() + "%");
                            $("#pic_g_6-2").css('display', "block");
                        }
                        if ($("#pic_f_6-2").css('display') === 'block' && $('#cylinder_f_cbox').is(':checked')) {
                            $("#pic_f_6-2").css('display', "none");
                            eyespot_pic_pos_f_6_2_left = $(this).val();
                            $("#pic_f_6-2").css('left', $(this).val() + "%");
                            $("#pic_f_6-2").css('display', "block");
                        }
                        if ($("#pic_e_6-2").css('display') === 'block' && $('#cylinder_e_cbox').is(':checked')) {
                            $("#pic_e_6-2").css('display', "none");
                            eyespot_pic_pos_e_6_2_left = $(this).val();
                            $("#pic_e_6-2").css('left', $(this).val() + "%");
                            $("#pic_e_6-2").css('display', "block");
                        }
                        if ($("#pic_d_6-2").css('display') === 'block' && $('#cylinder_d_cbox').is(':checked')) {
                            $("#pic_d_6-2").css('display', "none");
                            eyespot_pic_pos_d_6_2_left = $(this).val();
                            $("#pic_d_6-2").css('left', $(this).val() + "%");
                            $("#pic_d_6-2").css('display', "block");
                        }
                        if ($("#pic_c_6-2").css('display') === 'block' && $('#cylinder_c_cbox').is(':checked')) {
                            $("#pic_c_6-2").css('display', "none");
                            eyespot_pic_pos_c_6_2_left = $(this).val();
                            $("#pic_c_6-2").css('left', $(this).val() + "%");
                            $("#pic_c_6-2").css('display', "block");
                        }
                        if ($("#pic_b_6-2").css('display') === 'block' && $('#cylinder_b_cbox').is(':checked')) {
                            $("#pic_b_6-2").css('display', "none");
                            eyespot_pic_pos_b_6_2_left = $(this).val();
                            $("#pic_b_6-2").css('left', $(this).val() + "%");
                            $("#pic_b_6-2").css('display', "block");
                        }
                        if ($("#pic_a_6-2").css('display') === 'block' && $('#cylinder_a_cbox').is(':checked')) {
                            $("#pic_a_6-2").css('display', "none");
                            eyespot_pic_pos_a_6_2_left = $(this).val();
                            $("#pic_a_6-2").css('left', $(this).val() + "%");
                            $("#pic_a_6-2").css('display', "block");
                        }


                        if ($("#pic_h_6-1").css('display') === 'block' && $('#cylinder_h_cbox').is(':checked')) {
                            $("#pic_h_6-1").css('display', "none");
                            eyespot_pic_pos_h_6_1_left = $(this).val();
                            $("#pic_h_6-1").css('left', $(this).val() + "%");
                            $("#pic_h_6-1").css('display', "block");
                        }
                        if ($("#pic_g_6-1").css('display') === 'block' && $('#cylinder_g_cbox').is(':checked')) {
                            $("#pic_g_6-1").css('display', "none");
                            eyespot_pic_pos_g_6_1_left = $(this).val();
                            $("#pic_g_6-1").css('left', $(this).val() + "%");
                            $("#pic_g_6-1").css('display', "block");
                        }
                        if ($("#pic_f_6-1").css('display') === 'block' && $('#cylinder_f_cbox').is(':checked')) {
                            $("#pic_f_6-1").css('display', "none");
                            eyespot_pic_pos_f_6_1_left = $(this).val();
                            $("#pic_f_6-1").css('left', $(this).val() + "%");
                            $("#pic_f_6-1").css('display', "block");
                        }
                        if ($("#pic_e_6-1").css('display') === 'block' && $('#cylinder_e_cbox').is(':checked')) {
                            $("#pic_e_6-1").css('display', "none");
                            eyespot_pic_pos_e_6_1_left = $(this).val();
                            $("#pic_e_6-1").css('left', $(this).val() + "%");
                            $("#pic_e_6-1").css('display', "block");
                        }
                        if ($("#pic_d_6-1").css('display') === 'block' && $('#cylinder_d_cbox').is(':checked')) {
                            $("#pic_d_6-1").css('display', "none");
                            eyespot_pic_pos_d_6_1_left = $(this).val();
                            $("#pic_d_6-1").css('left', $(this).val() + "%");
                            $("#pic_d_6-1").css('display', "block");
                        }
                        if ($("#pic_c_6-1").css('display') === 'block' && $('#cylinder_c_cbox').is(':checked')) {
                            $("#pic_c_6-1").css('display', "none");
                            eyespot_pic_pos_c_6_1_left = $(this).val();
                            $("#pic_c_6-1").css('left', $(this).val() + "%");
                            $("#pic_c_6-1").css('display', "block");
                        }
                        if ($("#pic_b_6-1").css('display') === 'block' && $('#cylinder_b_cbox').is(':checked')) {
                            $("#pic_b_6-1").css('display', "none");
                            eyespot_pic_pos_b_6_1_left = $(this).val();
                            $("#pic_b_6-1").css('left', $(this).val() + "%");
                            $("#pic_b_6-1").css('display', "block");
                        }
                        if ($("#pic_a_6-1").css('display') === 'block' && $('#cylinder_a_cbox').is(':checked')) {
                            $("#pic_a_6-1").css('display', "none");
                            eyespot_pic_pos_a_6_1_left = $(this).val();
                            $("#pic_a_6-1").css('left', $(this).val() + "%");
                            $("#pic_a_6-1").css('display', "block");
                        }
                        $("#tune_up_input").focus();
                        break;
                    case 'saveas_input_proms_number':
                        $("#img_saveas").trigger("click");
                        break;
                    default:
                        //alert("go to next element");
                        // Get all focusable elements on the page
                        var $canfocus = $(':focusable_sheet');
                        var index = $canfocus.index(this) + 1;
                        if (index >= $canfocus.length)
                            index = 0;
                        $canfocus.eq(index).focus();
                }
                break;
            case 27:
                $(this).val("");
                break;
            default:
        }



        /* 
         if (e.which === 13) {
         e.preventDefault();
         //go to esko
         //if ($(e.target).attr("id").trim() === 'input_po_number') {
         if ($(e.target).attr("id").trim() === 'open_input_esko_po_number') {
         switch (e.which) {
         case 13:
         if ($(this).val() !== "") {
         $.ajax({
         type: "GET",
         url: "esko",
         data: {
         para_1: $("#open_input_esko_po_number").val().trim()
         },
         dataType: "jsonp",
         jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
         //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
         //jsonpCallback: "myjsonpcallbacknameinalllowercase",
         beforeSend: function () {
         // $("#table_folder_gif").show();
         },
         error: function () {
         //alert('Can not retrieve jsonp data : popup');               
         },
         complete: function () {
         
         },
         success: function (data, textStatus, jqXHR) {
         
         if (!$.trim(data)) {
         //alert("No data for this PO Number");
         $("#open_msg").val($("<div />").html('&#9888;&nbsp;&nbsp;&nbsp;').text() + "No data found under this (ESKO) PO number");
         } else {
         if ($("#open_msg").val().trim() !== "") {
         $("#open_msg").val("");
         }
         var dynamic_col_name;
         $.each(data, function (k, v) {
         dynamic_col_name = v.Name;
         if (dynamic_col_name.indexOf("COMMON INK") !== -1) {
         dynamic_col_name = "input_commons_" + parseInt(dynamic_col_name.substr(dynamic_col_name.length - 2, dynamic_col_name.length));
         } else {
         dynamic_col_name = "input_colour_" + parseInt(dynamic_col_name.substr(dynamic_col_name.length - 2, dynamic_col_name.length));
         }
         
         
         //alert(dynamic_col_name + " : " + v.Name + "  " + v.Value);
         $("#" + dynamic_col_name).val(v.Value);
         });
         }
         }
         });
         }
         break;
         case 27:
         $(this).val("");
         break;
         default:
         }
         return;
         }
         //end of go to esko
         
         if ($(e.target).attr("id").trim() === 'input_account_pw') {
         switch (e.which) {
         case 13:
         if ($(this).val() !== "") {
         $("#account_msg").val("");
         //return;
         
         //$("#input_account_pw").focus();
         //alert("going to log in");
         $.ajax({
         type: "GET",
         // url: "http://128.1.10.116:8080/winpak/user_signin",
         //url: window.global_ip + "user_signin",
         
         //url: "user_signin_ad",
         
         //url: "http://128.1.8.132:8080/coms/user_signin_ad",
         
         url: "login",
         data: {
         name: $("#input_account_name").val(),
         pwd: $("#input_account_pw").val()
         },
         dataType: "jsonp",
         jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
         //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
         //jsonpCallback: "myjsonpcallbacknameinalllowercase",
         beforeSend: function () {
         //$(".loading").html("数据加载中.");
         },
         error: function () {
         alert('Can not retrieve login data');
         },
         complete: function () {
         
         },
         success: function (data, textStatus, jqXHR) {
         if (!$.trim(data)) {
         $("#account_msg").val("Wrong username and/or password, please try again.");
         } else {
         $.each(data, function (k, v) {
         //alert("Welcome " + v.NAME);
         //alert("Group: " + v.GROUP);
         
         //store user info to web storage                                    
         localStorage.user_id_signed_in = v.ID;
         localStorage.user_name_signed_in = v.NAME;
         localStorage.user_department_signed_in = v.DEPARTMENT;
         localStorage.user_group = v.GROUP;
         
         $("#control_panel_account").toggle();
         $(".btns").css("opacity", "1.0");
         $("#img_account").css("opacity", "0.38");
         
         $("#input_account_pw").val("");
         
         });
         }
         }
         });
         } else {
         //$(this).css("border-color", "red");
         $("#account_msg").val($("<div />").html('&#9888;&nbsp;&nbsp;&nbsp;').text() + "Password can not be empty !");
         $(this).focus();
         }
         break;
         case 27:
         $(this).val("");
         $("#account_msg").val("");
         //$("#control_panel_open").toggle();
         break;
         default:
         }
         return;
         }
         
         if ($(e.target).attr("id").trim() === 'input_account_name') {
         switch (e.which) {
         case 13:
         if ($(this).val() !== "") {
         $("#account_msg").val("");
         $("#input_account_pw").focus();
         } else {
         //$(this).css("border-color", "red");
         $("#account_msg").val($("<div />").html('&#9888;&nbsp;&nbsp;&nbsp;').text() + "User name can not be empty !");
         $(this).focus();
         }
         break;
         case 27:
         $(this).val("");
         $("#account_msg").val("");
         //$("#control_panel_open").toggle();
         break;
         default:
         }
         return;
         }
         
         if ($(e.target).attr("id").trim() === 'open_input_proms_number') {
         switch (e.which) {
         case 13:
         if ($(this).val() !== "") {
         var all_Element_page1 = $("#flex_1 input[id]:not(:disabled), #flex_1 .select[id], #flex_1 textarea[id]")         // find input with ID attribute
         .map(function () {
         return this.id;
         }) // convert to set of IDs
         .get(); // convert to instance of Array (optional)
         
         all_Element_page1.forEach(function (part, index, theArray) {
         theArray[index] = theArray[index].replace(theArray[index].substring(0, theArray[index].indexOf("_")), "page1") + "=" + $("#" + theArray[index]).val().trim();
         });
         
         $.ajax({
         type: "POST",
         url: "data_set_1",
         data: {
         //para_1: "page1_sn/1001" + all_Element_page1
         //info:info
         all_Element_page1: all_Element_page1,
         para_sn: 'page1_sn',
         para_sn_val: '1006'
         },
         dataType: "jsonp",
         jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
         //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
         //jsonpCallback: "myjsonpcallbacknameinalllowercase",
         beforeSend: function () {
         // $("#table_folder_gif").show();
         },
         error: function () {
         //alert('Can not retrieve jsonp data : popup');               
         },
         complete: function () {
         
         },
         success: function (data, textStatus, jqXHR) {
         
         if (!$.trim(data)) {
         alert("blank data");
         } else {
         $.each(data, function (k, v) {
         alert(v.j_data_set_1 + ", Data has been successfully updated.");
         });
         }
         }
         });
         //$("#open_input_esko_po_number").focus();
         } else {
         $(this).focus();
         }
         break;
         case 27:
         $(this).val("");
         break;
         default:
         }
         return;
         }
         
         //alert("after login here");
         
         
         // Get all focusable elements on the page
         var $canfocus = $(':focusable_sheet');
         var index = $canfocus.index(this) + 1;
         if (index >= $canfocus.length)
         index = 0;
         $canfocus.eq(index).focus();
         }
         
         */

    });


    /* 
     * end of: this is to focus next input and select when type an enter 
     */

    /* 
     * this is to focus next input and select when type an enter 
     */
    /*  
     // register jQuery extension
     jQuery.extend(jQuery.expr[':'], {
     focusable_account: function (el, index, selector) {
     //return $(el).is('a, button, :input, [tabindex]');
     return $(el).is('#control_panel_account :input:not([type=checkbox],[readonly]), [tabindex]');
     }
     });
     $(document).on('keypress', 'input', function (e) {
     if (e.which === 13) {
     e.preventDefault();
     // Get all focusable elements on the page
     var $canfocus = $(':focusable_account');
     var index = $canfocus.index(this) + 1;
     if (index >= $canfocus.length)
     index = 0;
     $canfocus.eq(index).focus();
     }
     });
     */


    /* 
     * end of: this is to focus next input and select when type an enter 
     */



    $("#open_input_esko_po_number").on('keyup', function (e) {
        /*
         switch (e.which) {
         case 13:
         if ($(this).val() !== "") {
         $.ajax({
         type: "GET",
         url: "esko",
         data: {
         para_1: $(this).val().trim()
         },
         dataType: "jsonp",
         jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
         //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
         //jsonpCallback: "myjsonpcallbacknameinalllowercase",
         beforeSend: function () {
         // $("#table_folder_gif").show();
         },
         error: function () {
         //alert('Can not retrieve jsonp data : popup');               
         },
         complete: function () {
         
         },
         success: function (data, textStatus, jqXHR) {
         
         if (!$.trim(data)) {
         alert("No data for this PO Number");
         } else {
         var dynamic_col_name;
         $.each(data, function (k, v) {
         dynamic_col_name = v.Name;
         if (dynamic_col_name.indexOf("COMMON INK") !== -1) {
         dynamic_col_name = "input_commons_" + parseInt(dynamic_col_name.substr(dynamic_col_name.length - 2, dynamic_col_name.length));
         } else {
         dynamic_col_name = "input_colour_" + parseInt(dynamic_col_name.substr(dynamic_col_name.length - 2, dynamic_col_name.length));
         }
         
         
         //alert(dynamic_col_name + " : " + v.Name + "  " + v.Value);
         $("#" + dynamic_col_name).val(v.Value);
         });
         }
         }
         });
         }
         break;
         case 27:
         $(this).val("");
         break;
         default:
         }
         */
    });


    $("#box_mounting_title").click(function (e) {


        $.ajax({
            type: "GET",
            url: "data_set_2",
            data: {
                para_1: '1001'
            },
            dataType: "jsonp",
            jsonp: "jsonp_test", //传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
            //jsonpCallback: "?", //自定义的jsonp回调函数名称，默认为jQuery自动生成的随机函数名，也可以写"?"，jQuery会自动为你处理数据
            //jsonpCallback: "myjsonpcallbacknameinalllowercase",
            beforeSend: function () {
                // $("#table_folder_gif").show();
            },
            error: function () {
                //alert('Can not retrieve jsonp data : popup');               
            },
            complete: function () {

            },
            success: function (data, textStatus, jqXHR) {

                if (!$.trim(data)) {
                    alert("No data for this PO Number");
                } else {
                    var dynamic_col_name;
                    var split_col_name;
                    $.each(data, function (k, v) {

                        alert(k + ' is ' + v);
                        return;
                        dynamic_col_name = k;
                        split_col_name = dynamic_col_name.split("_");
                        alert(split_col_name);

                        // alert(v.page2_pic_a_3_display);
                        //pic_a_3

                        /*
                         dynamic_col_name = v.Name;
                         if (dynamic_col_name.indexOf("COMMON INK") !== -1) {
                         dynamic_col_name = "input_commons_" + parseInt(dynamic_col_name.substr(dynamic_col_name.length - 2, dynamic_col_name.length));
                         } else {
                         dynamic_col_name = "input_colour_" + parseInt(dynamic_col_name.substr(dynamic_col_name.length - 2, dynamic_col_name.length));
                         }
                         
                         
                         //alert(dynamic_col_name + " : " + v.Name + "  " + v.Value);
                         $("#" + dynamic_col_name).val(v.Value);
                         */
                    });
                }
            }
        });



    });
});



/*
 
 $(document).ready(function () {
 $("#open_input_proms_number").keyup(function (event) {
 if (event.keyCode === 13) {
 event.preventDefault();
 //return false;
 //alert("form");
 }
 });
 $("#input_account_name").keyup(function (event) {
 if (event.keyCode === 13) {
 event.preventDefault();
 //return false;
 alert("form");
 }
 });
 });
 
 
 
 */

/* 
 * 
 * //escape from FORM submit -- "Enter" Key
 *   
 */
$(document).ready(function () {
    $(window).keydown(function (event) {
        if (event.keyCode === 13) {
            event.preventDefault();
            //return false;
        }
    });
});



