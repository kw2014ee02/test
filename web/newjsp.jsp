<%-- 
    Document   : newjsp
    Created on : 10-Nov-2016, 2:20:53 PM
    Author     : w15rdknl


<script src="js/toolip.js"></script>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>P.R.O.M.S.</title>
        <link rel="icon"  type="image/png"  href="pic/favicon.ico">

        <script src="js/winpak_2.1.1.min.js" type="text/javascript"></script>
        <script src="js/winpak_ui.js"></script>

        <script src="js/bluesheet_btn.js"></script>
        <script src="js/bluesheet_checkbox.js"></script>
        <script src="js/bluesheet_global.js"></script>
        <script src="js/bluesheet_tune.js"></script>
        <script src="js/bluesheet_textarea.js"></script>
        <script src="js/toolip.js"></script>


        <link rel="stylesheet" href="css/selectionbox.css">
        <link rel="stylesheet" href="css/checkbox.css">
        <link rel="stylesheet" href="css/toolip.css">


        <script>
            $(document).ready(function () {
                $("#control_panel_swtich_board").css("transform", "translate(-152mm, 0)");
                $("#print_guide").css("transform", "translate(132mm, 0)");
                $("#control_panel_popup").draggable();
                $("#control_panel_open").draggable();
                $("#control_panel_account").draggable();
                $("#control_panel_pdf").draggable();
                $(".page label,img,p").disableSelection();

                $("#control_panel_swtich_board_2").css("transform", "translate(152mm, 0)");
            });
        </script>


        <style>

            body {
                width: 100%;
                height: 100%;
                margin: 0;
                padding: 0;
                <%--
                background-color: rgba(82,86,89,1);
                --%>
                background-color: rgba(46, 168, 242, 0.3);
                font: 100pt "Tahoma";
            }
            * {
                box-sizing: border-box;
                -moz-box-sizing: border-box;
            }

            .page {
                /* width: 410mm; */
                /*
                width: 210mm;
                height: 277.5mm;
                */

                /* */
                width: 260mm;
                height: 377mm;


                padding: 0mm;                
                margin: 0mm auto;

                border: 1px white solid;
                border-radius: 0px;
                background-color:  white;
                box-shadow: 0 0 58px rgba(0, 0, 0, 0.8);
                margin-top: 2px;

                position:relative;

            }


            @media print {
                .no-print, .no-print *
                {
                    display: none !important;
                }
                .ui-tooltip { 
                    visibility: hidden !important;                    
                }

                .ui-helper-hidden-accessible{                    
                    display: none !important;
                }

                body{
                    background-color: white;



                    page-break-after:avoid;
                    page-break-before: auto;




                }

                html, body { height: 20%; } 



            }


            @media print {
                .watermark-print
                {
                    display: block !important;
                }
            }

        </style>

        <style>



        </style>

        <style> 
            input[type=text]:disabled {
                background: transparent;
            }
        </style>


        <script>
            function bigImg(x) {
                if (x.style.height === "60px" && x.style.width === "60px") {
                    x.style.height = "64px";
                    x.style.width = "64px";
                } else {
                    x.style.height = "34px";
                    x.style.width = "34px";
                }
            }
            function normalImg(x) {
                if (x.style.height === "64px" && x.style.width === "64px") {
                    x.style.height = "60px";
                    x.style.width = "60px";
                } else {
                    x.style.height = "30px";
                    x.style.width = "30px";
                }

            }
        </script>

    </head>
    <body>





        <div id="section-to-print" class="page" style="border:0px red solid;">

            <div id="div_logo_1" class="no-print" style="border-bottom: 1px #00A250 solid;
                 width: 100%;
                 height:60px;
                 position: absolute;
                 left: 0%;
                 top:1%;">

                <img src="pic/logo3.jpg" alt="HTML5 Icon" 
                     style="display: block;position:absolute;
                     top:22%;left:0.6%;
                     opacity: 0.6;
                     display:block;                     
                     ">

                <p class="p_prmos_number" style="position:absolute;font-size:10pt;
                   top:18%;left:380px;display:block;color: #660066;">PROMS # : </p>

                <p style="position:absolute;font-size:12pt;font-weight:bold;
                   top:18%;float:right;right:20px;display:block;color:rgba(159,204,190,0.9);">Graphics Department - 2017</p>

            </div>

            <div id="div_footer_1" class="no-print" style="border-top: 2px #cccccc solid;width: 100%;height:60px;position: absolute;left: 0%;top:96%;display:none;">
                <p style="position:absolute;font-size:12pt;font-weight:bold;
                   top:0%;float:right;right:46%;display:block;color: #999999;">Page 1 of 2</p>

            </div>

            <div id="flex_1" style="border:0px red solid;position: absolute;top:6%;left:0%;width:100%;height: 90%;">

                <div class="wm watermark-print" style="
                     <%-- 
                     background:url(https://www.google.co.in/images/srpr/logo11w.png) 
                     center center no-repeat;
                     --%>
                     border:0px red solid;
                     border-radius:10px;
                     background:url(pic/winpak.jpg)
                     center center;
                     opacity: 0.18;
                     position: absolute;
                     width: 100%;
                     height: 25%;
                     top:28%;
                     left:0%;
                     display:none;
                     z-index:1;

                     -ms-transform: rotate(-38deg); /* IE 9 */
                     -webkit-transform: rotate(-38deg); /* Safari */
                     transform: rotate(-38deg); /* Standard syntax */
                     ">
                </div>



                <input type="text" id="input_customer_name" autocomplete="off" style="width:99%;height:60px;float:right;right:2px;top:1px;position:absolute;
                       text-align:right;border:0px black solid;font-size:38pt;"/>


                <label id="label_item_number" for="input_item_number" style="font-size:11pt;float:right;right:310px;top:66px;position:absolute;"> ITEM NUMBER </label>
                <input type="text" id="input_item_number" autocomplete="off" style="width:30%;height:30px;float:right;right:2px;top:60px;position:absolute;
                       text-align:center;font-size:18pt;border:1px black solid; border-bottom: 1px #cccccc solid;" maxlength="50"/>

                <label id="label_po_number" for="input_po_number" style="font-size:11pt;float:right;right:310px;top:95px;position:absolute;"> PO NUMBER </label>
                <input type="text" id="input_po_number" autocomplete="off" style="width:30%;height:30px;float:right;right:2px;top:90px;position:absolute;
                       text-align:center;font-size:18pt;border:1px black solid; border-top: 1px #cccccc solid;" maxlength="50"/>

                <div id="box" style="position: absolute;left:2px;top:88px;background-color:black; width:380px;height:80px; 
                     border: 1px #999999 solid;vertical-align: middle;text-align: center;">
                    <p style="position: absolute;font-size:18pt;color:white;left:16%;font-weight:bolder;">GRAPHICS SPEC SHEET</p>
                </div>

                <p id="p_plate_saved" style="position:absolute;font-size:16pt;top:86px;left:400px;display:none;color:black;">Saved Plate</p>

                <div id="box" style="position: absolute;left:80px;top:186px;background-color:transparent; width:200px;height:50px; 
                     border: 2px red solid;vertical-align: middle;text-align: center;line-height: 1px;">
                    <p style="position: absolute;font-size:16pt;color:red;left:16%;font-weight:bolder">CONTROLLED</p>
                </div>
                <p class="watermark-print" style="position: absolute;font-size:10pt;color:red;left:46px;top:226px;display:none;">Printed copy of this form may not be current.<br>Must reference online form for latest version.</p>

                <label id="label_size" for="input_size" style="font-size:11pt;float:right;right:510px;top:155px;position:absolute;"> SIZE </label>
                <input type="text" id="input_size" autocomplete="off" style="width:20%;height:30px;float:right;right:300px;top:150px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>

                <label id="label_material" for="input_material" style="font-size:11pt;float:right;right:210px;top:155px;position:absolute;"> MATERIAL </label>
                <input type="text" id="input_material" autocomplete="off" style="width:20%;height:30px;float:right;right:2px;top:150px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>

                <label id="label_usda" for="input_usda" style="font-size:11pt;float:right;right:210px;top:202px;position:absolute;"> USDA / EST# </label>
                <input type="text" id="input_usda" autocomplete="off" style="width:20%;height:30px;float:right;right:2px;top:198px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>

                <label id="label_a" for="input_a" style="font-size:11pt;float:right;right:950px;top:310px;position:absolute;"> A. </label>
                <input type="text" id="input_a" autocomplete="off" style="width:66%;height:30px;float:right;right:295px;top:299px;position:absolute;
                       text-align:left;border:none;border-bottom:1px black solid;"/>           
                <label id="label_b" for="input_b" style="font-size:11pt;float:right;right:950px;top:340px;position:absolute;"> B. </label>
                <input type="text" id="input_b" autocomplete="off" style="width:66%;height:30px;float:right;right:295px;top:330.5px;position:absolute;
                       text-align:left;border:none;border-bottom:1px black solid;"/>
                <label id="label_c" for="input_c" style="font-size:11pt;float:right;right:950px;top:371px;position:absolute;"> C. </label>
                <input type="text" id="input_c" autocomplete="off" style="width:66%;height:30px;float:right;right:295px;top:361.5px;position:absolute;
                       text-align:left;border:none;border-bottom:1px black solid;"/>

                <label id="label_upc" for="input_upc_a" style="font-size:11pt;float:right;right:122px;top:276px;position:absolute;"> UPC# </label>
                <input type="text" id="input_upc_a" autocomplete="off" style="width:30%;height:30px;float:right;right:2px;top:299px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>            
                <input type="text" id="input_upc_b" autocomplete="off" style="width:30%;height:30px;float:right;right:2px;top:330.5px;position:absolute;
                       text-align:center;border:1px black solid; border-top: none;" maxlength="50"/>
                <input type="text" id="input_upc_c" autocomplete="off" style="width:30%;height:30px;float:right;right:2px;top:361.5px;position:absolute;
                       text-align:center;border:1px black solid; border-top: none;" maxlength="50"/>

                <input type="text" id="input_tolerance_top" autocomplete="off" style="width:18.8%;height:26px;float:right;right:680px;top:399px;position:absolute;
                       text-align:center;border:0px black solid;"/> 
                <label id="label_tolerance" for="input_tolerance_1" style="font-size:11pt;float:right;right:880px;top:430px;position:absolute;"> TOLERANCE </label>
                <input type="text" id="input_tolerance_1" autocomplete="off" style="width:8%;height:30px;float:right;right:786px;top:425px;position:absolute;
                       text-align:center;border:1px black solid;border-right: none" maxlength="50"/> 
                <input type="text" id="input_tolerance_2" autocomplete="off" value="&#9644;" style="width:3%;height:30px;float:right;right:756px;top:425px;position:absolute;
                       text-align:center;border:none;border-top:1px black solid;border-bottom:1px black solid;" disabled/> 
                <input type="text" id="input_tolerance_3" autocomplete="off" style="width:8%;height:30px;float:right;right:680px;top:425px;position:absolute;
                       text-align:center;border:1px black solid;border-left: none" maxlength="50"/> 

                <label id="label_over" for="input_over" style="font-size:11pt;float:right;right:540px;top:430px;position:absolute;"> OVER </label>
                <input type="text" id="input_over" autocomplete="off" style="width:16%;height:30px;float:right;right:360px;top:425px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/> 

                <label id="label_repeat" for="input_repeat" style="font-size:11pt;float:right;right:180px;top:430px;position:absolute;"> PRINT REPEATS OF </label>
                <input type="text" id="input_repeat" autocomplete="off" style="width:16%;height:30px;float:right;right:2px;top:425px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>

                <label id="label_colour_as" style="font-size:11pt;float:right;right:166px;top:500px;position:absolute;"> COLOUR AS </label>
                <div id="select_colour_as" class="select" style="float:right;right:2px;top:490px; width: 16%;position:absolute;">
                    <select style="color:black;height:30px;">
                        <option value="" selected></option>
                        <option>COLOUR STANDARD</option>
                        <option>CONTRACT PROOF</option>
                        <option>PANTONE BOOK</option>
                        <option>DRAWDOWN</option>
                        <option>X-RITE</option>
                        <option>SUPPLIED SAMPLE</option>
                    </select>
                    <div class="select_common"></div>
                </div>

                <label id="label_txt_img_as" style="font-size:11pt;float:right;right:398px;top:500px;position:absolute;"> TEXT/IMAGE AS </label>
                <div id="select_txt_img_as" class="select" style="float:right;right:270px;top:490px; width: 12%;position:absolute;">
                    <select style="color:black;height:30px;">
                        <option value="" selected></option>
                        <option>PROOF</option>
                        <option>SAMPLE</option>
                        <option>SOLID INK</option>
                    </select>
                    <div class="select_common"></div>
                </div>

                <label id="label_job_type" style="font-size:11pt;float:right;right:798px;top:500px;position:absolute; color:black;"> JOB TYPE </label>
                <div id="select_job_type" class="select" style="float:right;right:580px;top:490px; width: 20%;position:absolute; ">
                    <select style="color:black;height:30px;">
                        <option value="" selected></option>
                        <option>STRAIGHT REPEAT</option>
                        <option>NEW ITEM</option>
                        <option>REPEAT WITH CHANGE TO</option>
                    </select>
                    <div class="select_common"></div>
                </div>


                <div id="select_no_name_1" class="select" style="float:right;right:580px;top:522px; width: 20%;position:absolute; ">
                    <select style="color:black;height:30px;border:none;">
                        <option value="" selected></option>
                        <option>TEXT</option>
                        <option>COLOUR</option>
                        <option>TEXT & COLOUR</option>
                        <option>SIZE</option>
                        <option>POSITION</option>
                        <option>MATERIAL</option>
                        <option>CUSTOMER NAME & ITEM NUMBER</option>
                        <option>OTHER:</option>
                    </select>
                    <div class="select_common"></div>
                </div>

                <input type="text" id="input_no_name_2" autocomplete="off" style="width:59%;height:30px;float:right;right:2px;top:522px;position:absolute;
                       text-align:left;border:0px black solid;" maxlength="50"/> 

                <div id="select_no_name_3" class="select" style="float:right;right:353px;top:618px; width: 50%;position:absolute; ">
                    <select style="color:black;height:30px;border:none;">
                        <option value="" selected></option>
                        <option>DSP – 2400 PPI</option>
                        <option>ESP – 2400 PPI</option>
                        <option>ESP – 4000 PPI</option> 
                        <option>ESP – 4000 PPI *PIXEL PLUS*</option> 
                        <option>SOLID INK</option> 
                    </select>
                    <div class="select_common"></div>
                </div>





                <label id="label_platemaking" style="font-size:11pt;float:right;right:786px;top:618px;position:absolute;
                       width:20%;height:38px;border: 0px black solid;text-align: left;padding-top:6px;padding-left:6px;"> PLATEMAKING: </label>

                <label id="label_note" for="textarea_note" style="font-size:11pt;float:right;right:829.5px;top:801px;position:absolute;
                       width:15.5%;height:38px;border: 1px black solid;border-left:none;border-top:2px black solid;text-align: center;padding-top:6px;
                       /*
                       -webkit-transform: rotate(270deg);
                       -webkit-transform-origin: left top;
                       -moz-transform: rotate(90deg);
                       -moz-transform-origin: left top;
                       -ms-transform: rotate(90deg);
                       -ms-transform-origin: left top;
                       -o-transform: rotate(90deg);
                       -o-transform-origin: left top;
                       */
                       transform: rotate(270deg);
                       transform-origin: 0% 0%;"> NOTES </label>

                <%--
         <textarea id="textarea_note" autocomplete="off" rows="10" cols="50" style="
                   position: absolute;
                   border: solid 1px black; 
                   border-bottom: none;
                   border-left: none;
                   width: 60%;                      
                   padding: 0;
                   float:right;
                   right:353px;
                   top:649px;
                   resize: none;
                   text-align:center;
                   display:inline-block;
                   vertical-align:middle;
                   ">

                </textarea>
                --%>

                <%--  --%>
                <textarea id="textarea_note" autocomplete="off" style="
                          position: absolute;
                          border: solid 1px black; 
                          border-bottom: none;
                          border-left: none;
                          width: 60%;  
                          height: 150px;
                          float:right;
                          right:353px;
                          top:649px;
                          resize: none;
                          font-size: 16pt;
                          text-align: center;
                          box-sizing: border-box;
                          ">
                </textarea>




                <input type="text" id="input_above_cylinder" autocomplete="off" style="width:20%;height:30px;float:right;right:2px;top:580px;position:absolute;
                       text-align:center;border:0px black solid;"/>
                <label id="label_cylinder" for="input_cylinder" style="font-size:11pt;float:right;right:253px;top:615px;position:absolute;"> CYLINDER </label>
                <input type="text" id="input_cylinder" autocomplete="off" style="width:20%;height:30px;float:right;right:2px;top:610px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>


                <label id="label_web_1" for="input_web_1" style="font-size:8pt;float:right;right:120px;top:665px;position:absolute;
                       width:6%;height:20px;border: 0px black solid;text-align:center;font-weight:bold;"> PRINT </label>
                <label id="label_web_2" for="input_web_2" style="font-size:8pt;float:right;right:20px;top:665px;position:absolute;
                       width:6%;height:20px;border: 0px black solid;text-align:center;font-weight:bold;"> PLAIN </label>

                <label id="label_web" for="input_web_1" style="font-size:11pt;float:right;right:238px;top:685px;position:absolute;"> WEB WIDTH </label>
                <input type="text" id="input_web_1" autocomplete="off" style="width:10%;height:30px;float:right;right:100px;top:680px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>
                <input type="text" id="input_web_2" autocomplete="off" style="width:10%;height:30px;float:right;right:2px;top:680px;position:absolute;
                       text-align:center;border:1px black solid;border-left:none;" maxlength="50"/>


                <label id="label_art" for="input_art" style="font-size:11pt;float:right;right:218px;top:750px;position:absolute;"> ART LOCATION </label>
                <input type="text" id="input_art" autocomplete="off" style="width:22%;height:60px;float:right;right:2px;top:730px;position:absolute;
                       text-align:center;border:1px black solid;font-size:28pt;border:none;" maxlength="50"/>






                <div id="group_txt_input" style="float:right;right:0px;top:800px;position:absolute; width: 12%;border: 0px #cccccc solid;height:480px;width: 100%;">

                    <label id="label_commons" for="input_commons_underneath" style="font-size:10pt;float:right;right:785px;top:0px;position:absolute;
                           width:20%;height:38px;border-top:2px black solid;border-left:2px black solid;border-bottom:1px black solid;border-right:2px black solid;
                           text-align:center;font-weight:bold;padding-top:0px;"> COMMON TO PO# </label>
                    <input type="text" id="input_commons_underneath" autocomplete="off" style="width:19.5%;height:20px;float:right;right:787px;top:17px;position:absolute;
                           text-align:center;border:0px black solid;border-bottom:none;border-left:none;border-right:none;" maxlength="50"/>

                    <input type="text" id="input_commons_1" autocomplete="off" style="width:19.9%;height:30px;float:right;right:786px;top:40px;position:absolute;
                           text-align:center;border-top:1px black solid;border-bottom:1px black solid;border-left:2px black solid;border-right:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_commons_2" autocomplete="off" style="width:19.9%;height:30px;float:right;right:786px;top:72px;position:absolute;
                           text-align:center;border-top:1px black solid;border-bottom:1px black solid;border-left:2px black solid;border-right:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_commons_3" autocomplete="off" style="width:19.9%;height:30px;float:right;right:786px;top:104px;position:absolute;
                           text-align:center;border-top:1px black solid;border-bottom:1px black solid;border-left:2px black solid;border-right:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_commons_4" autocomplete="off" style="width:19.9%;height:30px;float:right;right:786px;top:136px;position:absolute;
                           text-align:center;border-top:1px black solid;border-bottom:1px black solid;border-left:2px black solid;border-right:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_commons_5" autocomplete="off" style="width:19.9%;height:30px;float:right;right:786px;top:168px;position:absolute;
                           text-align:center;border-top:1px black solid;border-bottom:1px black solid;border-left:2px black solid;border-right:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_commons_6" autocomplete="off" style="width:19.9%;height:30px;float:right;right:786px;top:200px;position:absolute;
                           text-align:center;border-top:1px black solid;border-bottom:1px black solid;border-left:2px black solid;border-right:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_commons_7" autocomplete="off" style="width:19.9%;height:30px;float:right;right:786px;top:232px;position:absolute;
                           text-align:center;border-top:1px black solid;border-bottom:1px black solid;border-left:2px black solid;border-right:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_commons_8" autocomplete="off" style="width:19.9%;height:30px;float:right;right:786px;top:264px;position:absolute;
                           text-align:center;border-top:1px black solid;border-bottom:1px black solid;border-left:2px black solid;border-right:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_commons_9" autocomplete="off" style="width:19.9%;height:30px;float:right;right:786px;top:296px;position:absolute;
                           text-align:center;border-top:1px black solid;border-bottom:1px black solid;border-left:2px black solid;border-right:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_commons_10" autocomplete="off" style="width:19.9%;height:30px;float:right;right:786px;top:328px;position:absolute;
                           text-align:center;border-top:1px black solid;border-bottom:1px black solid;border-left:2px black solid;border-right:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_commons_11" autocomplete="off" style="width:19.9%;height:30px;float:right;right:786px;top:360px;position:absolute;
                           text-align:center;border-top:1px black solid;border-bottom:1px black solid;border-left:2px black solid;border-right:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_commons_12" autocomplete="off" style="width:19.9%;height:30px;float:right;right:786px;top:392px;position:absolute;
                           text-align:center;border-top:1px black solid;border-bottom:1px black solid;border-left:2px black solid;border-right:1px black solid;" maxlength="50"/>



                    <label id="label_colour" for="input_colour_1" style="font-size:11pt;float:right;right:597px;top:0px;position:absolute;
                           width:19%;height:38px;border-top:2px black solid;border-left:0px black solid;border-bottom:1px black solid;border-right:2px black solid;
                           text-align: center;font-weight:bold;padding-top:6px;"> COLOURS </label>
                    <input type="text" id="input_colour_1" autocomplete="off" style="width:18.8%;height:30px;float:right;right:599px;top:40px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_colour_2" autocomplete="off" style="width:18.8%;height:30px;float:right;right:599px;top:72px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_colour_3" autocomplete="off" style="width:18.8%;height:30px;float:right;right:599px;top:104px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_colour_4" autocomplete="off" style="width:18.8%;height:30px;float:right;right:599px;top:136px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_colour_5" autocomplete="off" style="width:18.8%;height:30px;float:right;right:599px;top:168px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_colour_6" autocomplete="off" style="width:18.8%;height:30px;float:right;right:599px;top:200px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_colour_7" autocomplete="off" style="width:18.8%;height:30px;float:right;right:599px;top:232px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_colour_8" autocomplete="off" style="width:18.8%;height:30px;float:right;right:599px;top:264px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_colour_9" autocomplete="off" style="width:18.8%;height:30px;float:right;right:599px;top:296px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_colour_10" autocomplete="off" style="width:18.8%;height:30px;float:right;right:599px;top:328px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_colour_11" autocomplete="off" style="width:18.8%;height:30px;float:right;right:599px;top:360px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_colour_12" autocomplete="off" style="width:18.8%;height:30px;float:right;right:599px;top:392px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>




                    <label id="label_print_type" for="input_print_type_1" style="font-size:11pt;float:right;right:357px;top:0px;position:absolute;
                           width:24.3%;height:38px;border-top:2px black solid;border-left:0px black solid;border-bottom:1px black solid;border-right:2px black solid;
                           text-align: center;font-weight:bold;padding-top:6px;"> PLATE / INK / TYPE </label>
                    <%--  
                    <input type="text" id="input_print_type_1" autocomplete="off" style="width:21.6%;height:30px;float:right;right:384px;top:40px;position:absolute;
                           text-align:center;border:1px black solid;"/>
                    --%>

                    <div id="input_print_type_1" class="select" style="width:24.3%;float:right;right:358.5px;top:40px;position:absolute;">
                        <select style="height:30px;">
                            <option value="" selected></option>
                            <option>REVERSE / TRAPPED / LINE</option>
                            <option>REVERSE / TRAPPED / SCREEN</option>
                            <option>REVERSE / TRAPPED / COMBO</option>
                            <option>REVERSE / TRAPPED / PROCESS</option>                      
                            <option>SOLID / TRAPPED / LINE</option>
                            <option>SOLID / SURFACE / LINE</option>
                            <option>CUSTOM / TRAPPED / LINE</option>
                            <option>CUSTOM / TRAPPED / COMBO</option>
                            <option>CUSTOM / TRAPPED / PROCESS</option>
                            <option>CUSTOM / SURFACE / LINE</option>                     
                            <option>CUSTOM / SURFACE / COMBO </option>
                            <option>CUSTOM / SURFACE / PROCESS</option>
                            <option>SURFACE / TRAPPED / LINE</option>
                            <option>SURFACE / TRAPPED / COMBO</option>
                            <option>SURFACE / TRAPPED / PROCESS</option>
                            <option>SURFACE / SURFACE / LINE</option>
                            <option>SURFACE / SURFACE / COMBO</option>
                            <option>SURFACE / SURFACE / PROCESS</option>
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_print_type_2" class="select" style="width:24.3%;float:right;right:358.5px;top:72px;position:absolute;">
                        <select style="height:30px;">
                            <option value="" selected></option>
                            <option>REVERSE / TRAPPED / LINE</option>
                            <option>REVERSE / TRAPPED / SCREEN</option>
                            <option>REVERSE / TRAPPED / COMBO</option>
                            <option>REVERSE / TRAPPED / PROCESS</option>                      
                            <option>SOLID / TRAPPED / LINE</option>
                            <option>SOLID / SURFACE / LINE</option>
                            <option>CUSTOM / TRAPPED / LINE</option>
                            <option>CUSTOM / TRAPPED / COMBO</option>
                            <option>CUSTOM / TRAPPED / PROCESS</option>
                            <option>CUSTOM / SURFACE / LINE</option>                     
                            <option>CUSTOM / SURFACE / COMBO </option>
                            <option>CUSTOM / SURFACE / PROCESS</option>
                            <option>SURFACE / TRAPPED / LINE</option>
                            <option>SURFACE / TRAPPED / COMBO</option>
                            <option>SURFACE / TRAPPED / PROCESS</option>
                            <option>SURFACE / SURFACE / LINE</option>
                            <option>SURFACE / SURFACE / COMBO</option>
                            <option>SURFACE / SURFACE / PROCESS</option>
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_print_type_3" class="select" style="width:24.3%;float:right;right:358.5px;top:104px;position:absolute;">
                        <select style="height:30px;">
                            <option value="" selected></option>
                            <option>REVERSE / TRAPPED / LINE</option>
                            <option>REVERSE / TRAPPED / SCREEN</option>
                            <option>REVERSE / TRAPPED / COMBO</option>
                            <option>REVERSE / TRAPPED / PROCESS</option>                      
                            <option>SOLID / TRAPPED / LINE</option>
                            <option>SOLID / SURFACE / LINE</option>
                            <option>CUSTOM / TRAPPED / LINE</option>
                            <option>CUSTOM / TRAPPED / COMBO</option>
                            <option>CUSTOM / TRAPPED / PROCESS</option>
                            <option>CUSTOM / SURFACE / LINE</option>                     
                            <option>CUSTOM / SURFACE / COMBO </option>
                            <option>CUSTOM / SURFACE / PROCESS</option>
                            <option>SURFACE / TRAPPED / LINE</option>
                            <option>SURFACE / TRAPPED / COMBO</option>
                            <option>SURFACE / TRAPPED / PROCESS</option>
                            <option>SURFACE / SURFACE / LINE</option>
                            <option>SURFACE / SURFACE / COMBO</option>
                            <option>SURFACE / SURFACE / PROCESS</option>
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_print_type_4" class="select" style="width:24.3%;float:right;right:358.5px;top:136px;position:absolute;">
                        <select style="height:30px;">
                            <option value="" selected></option>
                            <option>REVERSE / TRAPPED / LINE</option>
                            <option>REVERSE / TRAPPED / SCREEN</option>
                            <option>REVERSE / TRAPPED / COMBO</option>
                            <option>REVERSE / TRAPPED / PROCESS</option>                      
                            <option>SOLID / TRAPPED / LINE</option>
                            <option>SOLID / SURFACE / LINE</option>
                            <option>CUSTOM / TRAPPED / LINE</option>
                            <option>CUSTOM / TRAPPED / COMBO</option>
                            <option>CUSTOM / TRAPPED / PROCESS</option>
                            <option>CUSTOM / SURFACE / LINE</option>                     
                            <option>CUSTOM / SURFACE / COMBO </option>
                            <option>CUSTOM / SURFACE / PROCESS</option>
                            <option>SURFACE / TRAPPED / LINE</option>
                            <option>SURFACE / TRAPPED / COMBO</option>
                            <option>SURFACE / TRAPPED / PROCESS</option>
                            <option>SURFACE / SURFACE / LINE</option>
                            <option>SURFACE / SURFACE / COMBO</option>
                            <option>SURFACE / SURFACE / PROCESS</option>
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_print_type_5" class="select" style="width:24.3%;float:right;right:358.5px;top:168px;position:absolute;">
                        <select style="height:30px;">
                            <option value="" selected></option>
                            <option>REVERSE / TRAPPED / LINE</option>
                            <option>REVERSE / TRAPPED / SCREEN</option>
                            <option>REVERSE / TRAPPED / COMBO</option>
                            <option>REVERSE / TRAPPED / PROCESS</option>                      
                            <option>SOLID / TRAPPED / LINE</option>
                            <option>SOLID / SURFACE / LINE</option>
                            <option>CUSTOM / TRAPPED / LINE</option>
                            <option>CUSTOM / TRAPPED / COMBO</option>
                            <option>CUSTOM / TRAPPED / PROCESS</option>
                            <option>CUSTOM / SURFACE / LINE</option>                     
                            <option>CUSTOM / SURFACE / COMBO </option>
                            <option>CUSTOM / SURFACE / PROCESS</option>
                            <option>SURFACE / TRAPPED / LINE</option>
                            <option>SURFACE / TRAPPED / COMBO</option>
                            <option>SURFACE / TRAPPED / PROCESS</option>
                            <option>SURFACE / SURFACE / LINE</option>
                            <option>SURFACE / SURFACE / COMBO</option>
                            <option>SURFACE / SURFACE / PROCESS</option>
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_print_type_6" class="select" style="width:24.3%;float:right;right:358.5px;top:200px;position:absolute;">
                        <select style="height:30px;">
                            <option value="" selected></option>
                            <option>REVERSE / TRAPPED / LINE</option>
                            <option>REVERSE / TRAPPED / SCREEN</option>
                            <option>REVERSE / TRAPPED / COMBO</option>
                            <option>REVERSE / TRAPPED / PROCESS</option>                      
                            <option>SOLID / TRAPPED / LINE</option>
                            <option>SOLID / SURFACE / LINE</option>
                            <option>CUSTOM / TRAPPED / LINE</option>
                            <option>CUSTOM / TRAPPED / COMBO</option>
                            <option>CUSTOM / TRAPPED / PROCESS</option>
                            <option>CUSTOM / SURFACE / LINE</option>                     
                            <option>CUSTOM / SURFACE / COMBO </option>
                            <option>CUSTOM / SURFACE / PROCESS</option>
                            <option>SURFACE / TRAPPED / LINE</option>
                            <option>SURFACE / TRAPPED / COMBO</option>
                            <option>SURFACE / TRAPPED / PROCESS</option>
                            <option>SURFACE / SURFACE / LINE</option>
                            <option>SURFACE / SURFACE / COMBO</option>
                            <option>SURFACE / SURFACE / PROCESS</option>
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_print_type_7" class="select" style="width:24.3%;float:right;right:358.5px;top:232px;position:absolute;">
                        <select style="height:30px;">
                            <option value="" selected></option>
                            <option>REVERSE / TRAPPED / LINE</option>
                            <option>REVERSE / TRAPPED / SCREEN</option>
                            <option>REVERSE / TRAPPED / COMBO</option>
                            <option>REVERSE / TRAPPED / PROCESS</option>                      
                            <option>SOLID / TRAPPED / LINE</option>
                            <option>SOLID / SURFACE / LINE</option>
                            <option>CUSTOM / TRAPPED / LINE</option>
                            <option>CUSTOM / TRAPPED / COMBO</option>
                            <option>CUSTOM / TRAPPED / PROCESS</option>
                            <option>CUSTOM / SURFACE / LINE</option>                     
                            <option>CUSTOM / SURFACE / COMBO </option>
                            <option>CUSTOM / SURFACE / PROCESS</option>
                            <option>SURFACE / TRAPPED / LINE</option>
                            <option>SURFACE / TRAPPED / COMBO</option>
                            <option>SURFACE / TRAPPED / PROCESS</option>
                            <option>SURFACE / SURFACE / LINE</option>
                            <option>SURFACE / SURFACE / COMBO</option>
                            <option>SURFACE / SURFACE / PROCESS</option>
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_print_type_8" class="select" style="width:24.3%;float:right;right:358.5px;top:264px;position:absolute;">
                        <select style="height:30px;">
                            <option value="" selected></option>
                            <option>REVERSE / TRAPPED / LINE</option>
                            <option>REVERSE / TRAPPED / SCREEN</option>
                            <option>REVERSE / TRAPPED / COMBO</option>
                            <option>REVERSE / TRAPPED / PROCESS</option>                      
                            <option>SOLID / TRAPPED / LINE</option>
                            <option>SOLID / SURFACE / LINE</option>
                            <option>CUSTOM / TRAPPED / LINE</option>
                            <option>CUSTOM / TRAPPED / COMBO</option>
                            <option>CUSTOM / TRAPPED / PROCESS</option>
                            <option>CUSTOM / SURFACE / LINE</option>                     
                            <option>CUSTOM / SURFACE / COMBO </option>
                            <option>CUSTOM / SURFACE / PROCESS</option>
                            <option>SURFACE / TRAPPED / LINE</option>
                            <option>SURFACE / TRAPPED / COMBO</option>
                            <option>SURFACE / TRAPPED / PROCESS</option>
                            <option>SURFACE / SURFACE / LINE</option>
                            <option>SURFACE / SURFACE / COMBO</option>
                            <option>SURFACE / SURFACE / PROCESS</option>
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_print_type_9" class="select" style="width:24.3%;float:right;right:358.5px;top:296px;position:absolute;">
                        <select style="height:30px;">
                            <option value="" selected></option>
                            <option>REVERSE / TRAPPED / LINE</option>
                            <option>REVERSE / TRAPPED / SCREEN</option>
                            <option>REVERSE / TRAPPED / COMBO</option>
                            <option>REVERSE / TRAPPED / PROCESS</option>                      
                            <option>SOLID / TRAPPED / LINE</option>
                            <option>SOLID / SURFACE / LINE</option>
                            <option>CUSTOM / TRAPPED / LINE</option>
                            <option>CUSTOM / TRAPPED / COMBO</option>
                            <option>CUSTOM / TRAPPED / PROCESS</option>
                            <option>CUSTOM / SURFACE / LINE</option>                     
                            <option>CUSTOM / SURFACE / COMBO </option>
                            <option>CUSTOM / SURFACE / PROCESS</option>
                            <option>SURFACE / TRAPPED / LINE</option>
                            <option>SURFACE / TRAPPED / COMBO</option>
                            <option>SURFACE / TRAPPED / PROCESS</option>
                            <option>SURFACE / SURFACE / LINE</option>
                            <option>SURFACE / SURFACE / COMBO</option>
                            <option>SURFACE / SURFACE / PROCESS</option>
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_print_type_10" class="select" style="width:24.3%;float:right;right:358.5px;top:328px;position:absolute;">
                        <select style="height:30px;">
                            <option value="" selected></option>
                            <option>REVERSE / TRAPPED / LINE</option>
                            <option>REVERSE / TRAPPED / SCREEN</option>
                            <option>REVERSE / TRAPPED / COMBO</option>
                            <option>REVERSE / TRAPPED / PROCESS</option>                      
                            <option>SOLID / TRAPPED / LINE</option>
                            <option>SOLID / SURFACE / LINE</option>
                            <option>CUSTOM / TRAPPED / LINE</option>
                            <option>CUSTOM / TRAPPED / COMBO</option>
                            <option>CUSTOM / TRAPPED / PROCESS</option>
                            <option>CUSTOM / SURFACE / LINE</option>                     
                            <option>CUSTOM / SURFACE / COMBO </option>
                            <option>CUSTOM / SURFACE / PROCESS</option>
                            <option>SURFACE / TRAPPED / LINE</option>
                            <option>SURFACE / TRAPPED / COMBO</option>
                            <option>SURFACE / TRAPPED / PROCESS</option>
                            <option>SURFACE / SURFACE / LINE</option>
                            <option>SURFACE / SURFACE / COMBO</option>
                            <option>SURFACE / SURFACE / PROCESS</option>
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_print_type_11" class="select" style="width:24.3%;float:right;right:358.5px;top:360px;position:absolute;">
                        <select style="height:30px;">
                            <option value="" selected></option>
                            <option>REVERSE / TRAPPED / LINE</option>
                            <option>REVERSE / TRAPPED / SCREEN</option>
                            <option>REVERSE / TRAPPED / COMBO</option>
                            <option>REVERSE / TRAPPED / PROCESS</option>                      
                            <option>SOLID / TRAPPED / LINE</option>
                            <option>SOLID / SURFACE / LINE</option>
                            <option>CUSTOM / TRAPPED / LINE</option>
                            <option>CUSTOM / TRAPPED / COMBO</option>
                            <option>CUSTOM / TRAPPED / PROCESS</option>
                            <option>CUSTOM / SURFACE / LINE</option>                     
                            <option>CUSTOM / SURFACE / COMBO </option>
                            <option>CUSTOM / SURFACE / PROCESS</option>
                            <option>SURFACE / TRAPPED / LINE</option>
                            <option>SURFACE / TRAPPED / COMBO</option>
                            <option>SURFACE / TRAPPED / PROCESS</option>
                            <option>SURFACE / SURFACE / LINE</option>
                            <option>SURFACE / SURFACE / COMBO</option>
                            <option>SURFACE / SURFACE / PROCESS</option>
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_print_type_12" class="select" style="width:24.3%;float:right;right:358.5px;top:392px;position:absolute;">
                        <select style="height:30px;">
                            <option value="" selected></option>
                            <option>REVERSE / TRAPPED / LINE</option>
                            <option>REVERSE / TRAPPED / SCREEN</option>
                            <option>REVERSE / TRAPPED / COMBO</option>
                            <option>REVERSE / TRAPPED / PROCESS</option>                      
                            <option>SOLID / TRAPPED / LINE</option>
                            <option>SOLID / SURFACE / LINE</option>
                            <option>CUSTOM / TRAPPED / LINE</option>
                            <option>CUSTOM / TRAPPED / COMBO</option>
                            <option>CUSTOM / TRAPPED / PROCESS</option>
                            <option>CUSTOM / SURFACE / LINE</option>                     
                            <option>CUSTOM / SURFACE / COMBO </option>
                            <option>CUSTOM / SURFACE / PROCESS</option>
                            <option>SURFACE / TRAPPED / LINE</option>
                            <option>SURFACE / TRAPPED / COMBO</option>
                            <option>SURFACE / TRAPPED / PROCESS</option>
                            <option>SURFACE / SURFACE / LINE</option>
                            <option>SURFACE / SURFACE / COMBO</option>
                            <option>SURFACE / SURFACE / PROCESS</option>
                        </select>
                        <div class="select_common"></div>
                    </div>

                    <label id="label_ink_number" for="input_ink_number_1" style="font-size:11pt;float:right;right:159px;top:0px;position:absolute;
                           width:20%;height:38px;border-top:2px black solid;border-left:0px black solid;border-bottom:1px black solid;border-right:2px black solid;
                           text-align: center;font-weight:bold;padding-top:6px;"> INK NUMBER </label>
                    <input type="text" id="input_ink_number_1" autocomplete="off" style="width:20%;height:30px;float:right;right:160px;top:40px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_ink_number_2" autocomplete="off" style="width:20%;height:30px;float:right;right:160px;top:72px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_ink_number_3" autocomplete="off" style="width:20%;height:30px;float:right;right:160px;top:104px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_ink_number_4" autocomplete="off" style="width:20%;height:30px;float:right;right:160px;top:136px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_ink_number_5" autocomplete="off" style="width:20%;height:30px;float:right;right:160px;top:168px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_ink_number_6" autocomplete="off" style="width:20%;height:30px;float:right;right:160px;top:200px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_ink_number_7" autocomplete="off" style="width:20%;height:30px;float:right;right:160px;top:232px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_ink_number_8" autocomplete="off" style="width:20%;height:30px;float:right;right:160px;top:264px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_ink_number_9" autocomplete="off" style="width:20%;height:30px;float:right;right:160px;top:296px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_ink_number_10" autocomplete="off" style="width:20%;height:30px;float:right;right:160px;top:328px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_ink_number_11" autocomplete="off" style="width:20%;height:30px;float:right;right:160px;top:360px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>
                    <input type="text" id="input_ink_number_12" autocomplete="off" style="width:20%;height:30px;float:right;right:160px;top:392px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="50"/>


                    <label id="label_ink_system" for="input_ink_system_1" style="font-size:11pt;float:right;right:1px;top:0px;position:absolute;
                           width:16%;height:38px;border-top:2px black solid;border-left:0px black solid;border-bottom:1px black solid;border-right:2px black solid;
                           text-align: center;font-weight:bold;padding-top:6px;"> INK SYSTEM </label>
                    <%--
                    <input type="text" id="input_ink_system_1" autocomplete="off" style="width:16%;height:30px;float:right;right:0px;top:40px;position:absolute;
                           text-align:center;border-top:1px black solid;border-bottom:1px black solid;border-left:1px black solid;border-right:2px black solid;"/>
                    --%>
                    <div id="input_ink_system_1" class="select" style="width:16%;float:right;right:1px;top:40px;position:absolute;">
                        <select style="height:30px;border-right:2px black solid;">
                            <option value="" selected></option>
                            <option>SL-700</option>
                            <option>SL-800</option>
                            <option>SL-810</option>
                            <option>SL-900</option>                      
                            <option>COLORTHERM</option>
                            <option>DEEP DRAW</option>
                            <option>INFERNO</option>
                            <option>FLINT</option>
                            <option>SEALTECH</option>                     
                        </select>
                        <div class="select_common"></div>
                    </div>                    
                    <div id="input_ink_system_2" class="select" style="width:16%;float:right;right:1px;top:72px;position:absolute;">
                        <select style="height:30px;border-right:2px black solid;">
                            <option value="" selected></option>
                            <option>SL-700</option>
                            <option>SL-800</option>
                            <option>SL-810</option>
                            <option>SL-900</option>                      
                            <option>COLORTHERM</option>
                            <option>DEEP DRAW</option>
                            <option>INFERNO</option>
                            <option>FLINT</option>
                            <option>SEALTECH</option>                     
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_ink_system_3" class="select" style="width:16%;float:right;right:1px;top:104px;position:absolute;">
                        <select style="height:30px;border-right:2px black solid;">
                            <option value="" selected></option>
                            <option>SL-700</option>
                            <option>SL-800</option>
                            <option>SL-810</option>
                            <option>SL-900</option>                      
                            <option>COLORTHERM</option>
                            <option>DEEP DRAW</option>
                            <option>INFERNO</option>
                            <option>FLINT</option>
                            <option>SEALTECH</option>                     
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_ink_system_4" class="select" style="width:16%;float:right;right:1px;top:136px;position:absolute;">
                        <select style="height:30px;border-right:2px black solid;">
                            <option value="" selected></option>
                            <option>SL-700</option>
                            <option>SL-800</option>
                            <option>SL-810</option>
                            <option>SL-900</option>                      
                            <option>COLORTHERM</option>
                            <option>DEEP DRAW</option>
                            <option>INFERNO</option>
                            <option>FLINT</option>
                            <option>SEALTECH</option>                     
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_ink_system_5" class="select" style="width:16%;float:right;right:1px;top:168px;position:absolute;">
                        <select style="height:30px;border-right:2px black solid;">
                            <option value="" selected></option>
                            <option>SL-700</option>
                            <option>SL-800</option>
                            <option>SL-810</option>
                            <option>SL-900</option>                      
                            <option>COLORTHERM</option>
                            <option>DEEP DRAW</option>
                            <option>INFERNO</option>
                            <option>FLINT</option>
                            <option>SEALTECH</option>                     
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_ink_system_6" class="select" style="width:16%;float:right;right:1px;top:200px;position:absolute;">
                        <select style="height:30px;border-right:2px black solid;">
                            <option value="" selected></option>
                            <option>SL-700</option>
                            <option>SL-800</option>
                            <option>SL-810</option>
                            <option>SL-900</option>                      
                            <option>COLORTHERM</option>
                            <option>DEEP DRAW</option>
                            <option>INFERNO</option>
                            <option>FLINT</option>
                            <option>SEALTECH</option>                     
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_ink_system_7" class="select" style="width:16%;float:right;right:1px;top:232px;position:absolute;">
                        <select style="height:30px;border-right:2px black solid;">
                            <option value="" selected></option>
                            <option>SL-700</option>
                            <option>SL-800</option>
                            <option>SL-810</option>
                            <option>SL-900</option>                      
                            <option>COLORTHERM</option>
                            <option>DEEP DRAW</option>
                            <option>INFERNO</option>
                            <option>FLINT</option>
                            <option>SEALTECH</option>                     
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_ink_system_8" class="select" style="width:16%;float:right;right:1px;top:264px;position:absolute;">
                        <select style="height:30px;border-right:2px black solid;">
                            <option value="" selected></option>
                            <option>SL-700</option>
                            <option>SL-800</option>
                            <option>SL-810</option>
                            <option>SL-900</option>                      
                            <option>COLORTHERM</option>
                            <option>DEEP DRAW</option>
                            <option>INFERNO</option>
                            <option>FLINT</option>
                            <option>SEALTECH</option>                     
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_ink_system_9" class="select" style="width:16%;float:right;right:1px;top:296px;position:absolute;">
                        <select style="height:30px;border-right:2px black solid;">
                            <option value="" selected></option>
                            <option>SL-700</option>
                            <option>SL-800</option>
                            <option>SL-810</option>
                            <option>SL-900</option>                      
                            <option>COLORTHERM</option>
                            <option>DEEP DRAW</option>
                            <option>INFERNO</option>
                            <option>FLINT</option>
                            <option>SEALTECH</option>                     
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_ink_system_10" class="select" style="width:16%;float:right;right:1px;top:328px;position:absolute;">
                        <select style="height:30px;border-right:2px black solid;">
                            <option value="" selected></option>
                            <option>SL-700</option>
                            <option>SL-800</option>
                            <option>SL-810</option>
                            <option>SL-900</option>                      
                            <option>COLORTHERM</option>
                            <option>DEEP DRAW</option>
                            <option>INFERNO</option>
                            <option>FLINT</option>
                            <option>SEALTECH</option>                     
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_ink_system_11" class="select" style="width:16%;float:right;right:1px;top:360px;position:absolute;">
                        <select style="height:30px;border-right:2px black solid;">
                            <option value="" selected></option>
                            <option>SL-700</option>
                            <option>SL-800</option>
                            <option>SL-810</option>
                            <option>SL-900</option>                      
                            <option>COLORTHERM</option>
                            <option>DEEP DRAW</option>
                            <option>INFERNO</option>
                            <option>FLINT</option>
                            <option>SEALTECH</option>                     
                        </select>
                        <div class="select_common"></div>
                    </div>
                    <div id="input_ink_system_12" class="select" style="width:16%;float:right;right:1px;top:392px;position:absolute;">
                        <select style="height:30px;border-right:2px black solid;">
                            <option value="" selected></option>
                            <option>SL-700</option>
                            <option>SL-800</option>
                            <option>SL-810</option>
                            <option>SL-900</option>                      
                            <option>COLORTHERM</option>
                            <option>DEEP DRAW</option>
                            <option>INFERNO</option>
                            <option>FLINT</option>
                            <option>SEALTECH</option>                     
                        </select>
                        <div class="select_common"></div>
                    </div>



                    <label id="label_by_1" for="input_by_1" style="font-size:11pt;float:right;right:863px;top:424px;position:absolute;
                           width:12%;height:38px;border: 2px black solid;border-right:none;text-align:left;font-weight:bold;
                           padding-top:6px;padding-left:5px;"> CHECKED BY: </label>
                    <input type="text" id="input_by_1" autocomplete="off" style="width:20%;height:38px;float:right;right:668px;top:424px;position:absolute;
                           text-align:center;border:2px black solid;border-left:none; " maxlength="50"/>

                    <label id="label_date_1" for="input_date_1" style="font-size:11pt;float:right;right:609px;top:424px;position:absolute;
                           width:6%;height:38px;border: 2px black solid;border-left:none;border-right:none;text-align:left;font-weight:bold;
                           padding-top:6px;padding-left:5px;"> DATE: </label>
                    <input type="text" id="input_date_1" autocomplete="off" style="width:12%;height:38px;float:right;right:491px;top:424px;position:absolute;
                           text-align:center;border:2px black solid;border-left:none; " maxlength="50"/>

                    <label id="label_master_img" for="input_master_img" style="font-size:11pt;float:right;right:354px;top:424px;position:absolute;
                           width:14%;height:38px;border: 2px black solid;border-left:none;border-right:none;text-align:left;font-weight:bold;
                           padding-top:6px;padding-left:5px;"> MASTER IMAGE # </label>
                    <input type="text" id="input_master_img" autocomplete="off" style="width:25%;height:38px;float:right;right:109px;top:424px;position:absolute;
                           text-align:center;border:2px black solid;border-left:none; " maxlength="50"/>

                    <%--           
                   <label id="label_logo"style="font-size:11pt;float:right;right:0px;top:424px;position:absolute;
                          width:11.2%;height:38px;border: 2px black solid;border-left:none;text-align:center;font-weight:bold;
                          padding-top:6px;padding-left:5px;"> WINPAK </label>
                    
                    --%>

                    <input type="text" id="input_logo" autocomplete="off" value="WINPAK" style="width:11%;height:38px;float:right;right:1px;top:424px;position:absolute;
                           text-align:center;border:2px black solid;border-left:none;font-weight:700;padding-top:0px;padding-left:0px;font-size:11pt;vertical-align:middle; " maxlength="50"/>

                </div>


                <%--
                --%>

            </div>


        </div>


        <div id="section-to-print_2" class="page" style="margin-top: 1%; border: 0px red solid;">

            <div id="div_logo_2" class="no-print" style="border-bottom: 1px #00A250 solid;
                 width: 100%;
                 height:60px;
                 position: absolute;
                 left: 0%;
                 top:1%;">

                <img src="pic/logo3.jpg" alt="HTML5 Icon" 
                     style="display: block;position:absolute;
                     top:22%;left:0.6%;
                     opacity: 0.6;
                     display:block;                     
                     ">

                <p class="p_prmos_number" style="position:absolute;font-size:10pt;
                   top:18%;left:380px;display:block;color: #660066;">PROMS # : </p>

                <p style="position:absolute;font-size:12pt;font-weight:bold;
                   top:18%;float:right;right:20px;display:block;color:rgba(159,204,190,0.9);">Graphics Department - 2017</p>

            </div>

            <div id="div_footer_2" class="no-print" style="border-top: 2px #cccccc solid;width: 100%;height:60px;position: absolute;left: 0%;top:96%;display:none;">
                <p style="position:absolute;font-size:12pt;font-weight:bold;
                   top:0%;float:right;right:46%;display:block;color: #999999;">Page 2 of 2</p>

            </div>

            <div id="flex_2" style="border:0px red solid;position: absolute;top:6%;left:0%;width:100%;height: 90%;">

                <div class="wm watermark-print" style="
                     <%-- 
                     background:url(https://www.google.co.in/images/srpr/logo11w.png) 
                     center center no-repeat;
                     --%>
                     border:0px red solid;
                     border-radius:10px;
                     background:url(pic/winpak.jpg)
                     center center;
                     opacity: 0.18;
                     position: absolute;
                     width: 100%;
                     height: 25%;
                     top:28%;
                     left:0%;
                     display:none;
                     z-index:1;

                     -ms-transform: rotate(-38deg); /* IE 9 */
                     -webkit-transform: rotate(-38deg); /* Safari */
                     transform: rotate(-38deg); /* Standard syntax */
                     ">
                </div>


                <%--                        
                <p style="font-size:8pt;position: relative;margin-top: 1%;"> Page 2/2</p>
                <p style="font-size:8pt;position:absolute;top: 98%;"> Page 02/2</p>
                --%> 





                <div id="box_mounting_title" style="position: absolute;right:6px;top:1px;background-color:transparent; width:560px;height:50px; 
                     border: 2px black solid;vertical-align:middle;text-align: center;line-height:1px;">
                    <p style="position:absolute;font-size:18pt;color:black;left:16%;top:0%;font-weight:bolder;">PLATE MOUNTING INFORMATION</p>
                </div>
                <p class="watermark-print" style="position: absolute;font-size:10pt;color:red;left:46px;top:1px;display:none;">Printed copy of this form may not be current.<br>Must reference online form for latest version.</p>



                <img src="pic/bluesheet1.png" alt="HTML5 Icon" style="width:100%;height:580px;display: block;position:absolute;top:5%;" id="img_1" >
                <%--
                <img src="pic/bluesheet2.png" alt="HTML5 Icon" style="width:160px;;height:70px;display: block;position:absolute;top:5%;left:26%;" id="img_2" >
                
                <img src="pic/bluesheet2-4.png" alt="HTML5 Icon" style="display: block;position:absolute;top:5%;left:14%;" id="img_2_4" >
                <img src="pic/bluesheet2-3.png" alt="HTML5 Icon" style="display: block;position:absolute;top:5%;left:14.5%;" id="img_2_3" >
                
                <img src="pic/bluesheet2-1.png" alt="HTML5 Icon" style="display: block;position:absolute;top:5%;left:15%;" id="img_2_1" >
                --%> 

                <img src="pic/bluesheet2-1.png" alt="HTML5 Icon" style="display: none;position:absolute;top:5%;left:15.1%;" id="img_2_1" >
                <img src="pic/bluesheet2-2.png" alt="HTML5 Icon" style="display: block;position:absolute;top:5%;left:24%;" id="img_2_2" >
                <img src="pic/bluesheet2-3.png" alt="HTML5 Icon" style="display: none;position:absolute;top:5%;left:14.5%;" id="img_2_3" >
                <img src="pic/bluesheet2-4.png" alt="HTML5 Icon" style="display: none;position:absolute;top:5%;left:13.9%;" id="img_2_4" >
                <img src="pic/bluesheet2-5.png" alt="HTML5 Icon" style="display: none;position:absolute;top:5%;left:14%;" id="img_2_5" >



                <img src="pic/bluesheet3.png" alt="HTML5 Icon" style="width:100%;height:160px;display: block;position:absolute;top:50%;left:0%;" id="img_3" >

                <label id="label_eyespot_size" for="input_eyespot_size_1" style="font-size:11pt;float:right;right:810px;top:856px;position:absolute;"> EYESPOT SIZE </label>
                <input type="text" id="input_eyespot_size_1" autocomplete="off" style="width:8%;height:30px;float:right;right:720px;top:850px;position:absolute;
                       text-align:center;border:1px black solid;border-right:none;" maxlength="50"/>
                <input type="text" id="input_eyespot_size_2" autocomplete="off" value="X" style="width:3%;height:30px;float:right;right:690px;top:850px;position:absolute;
                       text-align:center;border:none;border-top:1px black solid;border-bottom:1px black solid;font-weight:bolder;font-size:18pt;" disabled/> 
                <input type="text" id="input_eyespot_size_3" autocomplete="off" style="width:8%;height:30px;float:right;right:611px;top:850px;position:absolute;
                       text-align:center;border:1px black solid;border-left:none;" maxlength="50"/>

                <label id="label_eyespot_color" for="input_eyespot_color" style="font-size:11pt;float:right;right:238px;top:830px;position:absolute;"> EYESPOT COLOUR </label>
                <input type="text" id="input_eyespot_color" autocomplete="off" style="width:20%;height:30px;float:right;right:28px;top:824px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>

                <label id="label_guideline_color" for="input_guideline_color" style="font-size:11pt;float:right;right:238px;top:861px;position:absolute;"> GUIDELINE COLOUR </label>
                <input type="text" id="input_guideline_color" autocomplete="off" style="width:20%;height:30px;float:right;right:28px;top:855px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>

                <label id="label_eye_across" for="input_eye_across" style="font-size:11pt;float:right;right:810px;top:920px;position:absolute;"> EYE ACROSS = </label>
                <input type="text" id="input_eye_across" autocomplete="off" style="width:8%;height:30px;float:right;right:720px;top:916px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>
                <label id="label_each_web" for="input_eye_across" style="font-size:11pt;float:right;right:638px;top:920px;position:absolute;"> EACH WEB </label>

                <label id="label_eye_around" for="input_eye_around" style="font-size:11pt;float:right;right:270px;top:920px;position:absolute;"> EYE AROUND - EVERY </label>
                <input type="text" id="input_eye_around" autocomplete="off" style="width:8%;height:30px;float:right;right:180px;top:916px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>
                <label id="label_each_web" for="input_eye_around" style="font-size:11pt;float:right;right:60px;top:920px;position:absolute;"> PRINT REPEAT </label>




                <label id="label_remarks" for="input_remark_2" style="font-size:11pt;float:right;right:786px;top:958px;position:absolute;
                       width:20%;height:38px;border: 0px black solid;text-align: left;padding-top:6px;padding-left:6px;"> REMARKS: </label>

                <input type="text" id="input_remark_1" autocomplete="off" value=" Built in guideline with 5+5 added"
                       style="width:99.5%;height:30px;float:right;right:3px;top:988px;position:absolute;
                       font-weight: bolder;font-size:16pt;
                       text-align:left;border:1px black solid;" maxlength="150"/>

                <input type="text" id="input_remark_2" autocomplete="off" style="width:99.5%;height:30px;float:right;right:3px;top:1019px;position:absolute;
                       text-align:left;border:1px black solid;border-top:none;" maxlength="150"/>
                <input type="text" id="input_remark_3" autocomplete="off" style="width:99.5%;height:30px;float:right;right:3px;top:1050px;position:absolute;
                       text-align:left;border:1px black solid;border-top:none;" maxlength="150"/>
                <input type="text" id="input_remark_4" autocomplete="off" style="width:99.5%;height:30px;float:right;right:3px;top:1081px;position:absolute;
                       text-align:left;border:1px black solid;border-top:none;" maxlength="150"/>
                <input type="text" id="input_remark_5" autocomplete="off" style="width:99.5%;height:30px;float:right;right:3px;top:1112px;position:absolute;
                       text-align:left;border:1px black solid;border-top:none;" maxlength="150"/>
                <input type="text" id="input_remark_6" autocomplete="off" style="width:99.5%;height:30px;float:right;right:3px;top:1143px;position:absolute;
                       text-align:left;border:1px black solid;border-top:none;" maxlength="150"/>
                <input type="text" id="input_remark_7" autocomplete="off" style="width:99.5%;height:30px;float:right;right:3px;top:1174px;position:absolute;
                       text-align:left;border:1px black solid;border-top:none;" maxlength="150"/>
                <input type="text" id="input_remark_8" autocomplete="off" style="width:99.5%;height:30px;float:right;right:3px;top:1205px;position:absolute;
                       text-align:left;border:1px black solid;border-top:none;" maxlength="150"/>

                <p style="position: absolute;font-size:12pt;color:black;left:1px;top:1245px;position:absolute;">Approved by Jim Macklin June 2, 2017</p>

                <label id="label_by_2" for="input_by_2" style="font-size:11pt;float:right;right:408px;top:1259px;position:absolute;"> CHECKED BY: </label>
                <input type="text" id="input_by_2" autocomplete="off" style="width:16%;height:30px;float:right;right:238px;top:1255px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>

                <label id="label_date_2" for="input_date_2" style="font-size:11pt;float:right;right:171px;top:1259px;position:absolute;"> DATE: </label>
                <input type="text" id="input_date_2" autocomplete="off" style="width:16%;height:30px;float:right;right:3px;top:1255px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>

                <%-- 侧面和最上面的输入框 --%>

                <input type="text" id="input_print_repeat" autocomplete="off" style="position:absolute;
                       top:336px;
                       left:75px;
                       -webkit-transform: rotate(-90deg); 
                       -moz-transform: rotate(-90deg);
                       -ms-transform: rotate(-90deg);
                       width: 68px;
                       border:1px black solid;
                       height: 30px;
                       text-align:center;" maxlength="50"/>

                <input type="text" id="input_print_width" autocomplete="off" style="position:absolute;
                       top:100px;
                       left:303px;
                       width: 78px;
                       border:1px black solid;
                       height: 30px;
                       text-align:center;" maxlength="50"/>

                <input type="text" id="input_print_default_5_value" autocomplete="off" value="5" style="position:absolute;
                       top:518px;
                       left:70px;
                       width: 38px;
                       border:0px black solid;
                       height: 30px;
                       font-weight:bold;
                       font-size:12pt;
                       text-align:center;" maxlength="50"/>

                <%-- 箭头和eyespot --%>

                <img src="pic/b1.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:23%;position: absolute;display: none" id="pic_a_1" >
                <img src="pic/b2.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:23%;position: absolute;display: none" id="pic_a_2" > 
                <img src="pic/b3.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:23%;position: absolute;display: none" id="pic_a_3" >
                <img src="pic/b4.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:23%;position: absolute;display: none" id="pic_a_4" >
                <img src="pic/b5.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:22%;position: absolute;display: none" id="pic_a_5" >
                <img src="pic/b6.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:23%;position: absolute;display: none" id="pic_a_6" >
                <img src="pic/b7.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:23%;position: absolute;display: none" id="pic_a_7" >
                <img src="pic/b8.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:23%;position: absolute;display: none" id="pic_a_8" >
                <img src="pic/6-1.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_a_6-1" >
                <img src="pic/6-2.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_a_6-2" >                
                <img src="pic/6-3.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_a_6-3" >
                <img src="pic/6-4.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_a_6-4" >      


                <img src="pic/b1.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:41.8%;position: absolute;display: none" id="pic_b_1" > 
                <img src="pic/b2.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:41.8%;position: absolute;display: none" id="pic_b_2" > 
                <img src="pic/b3.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:41.8%;position: absolute;display: none" id="pic_b_3" >
                <img src="pic/b4.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:41.8%;position: absolute;display: none" id="pic_b_4" >
                <img src="pic/b5.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:41%;position: absolute;display: none" id="pic_b_5" >
                <img src="pic/b6.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:42%;position: absolute;display: none" id="pic_b_6" >
                <img src="pic/b7.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:42%;position: absolute;display: none" id="pic_b_7" >
                <img src="pic/b8.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:42%;position: absolute;display: none" id="pic_b_8" >
                <img src="pic/6-1.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_b_6-1" >
                <img src="pic/6-2.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_b_6-2" >                
                <img src="pic/6-3.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_b_6-3" >
                <img src="pic/6-4.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_b_6-4" >

                <img src="pic/b1.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:60.6%;position: absolute;display: none" id="pic_c_1" > 
                <img src="pic/b2.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:60.6%;position: absolute;display: none" id="pic_c_2" > 
                <img src="pic/b3.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:60.6%;position: absolute;display: none" id="pic_c_3" >
                <img src="pic/b4.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:60.6%;position: absolute;display: none" id="pic_c_4" >
                <img src="pic/b5.png" alt="HTML5 Icon" style="width:5%;height:46px;top:19%;left:60%;position: absolute;display: none" id="pic_c_5" >
                <img src="pic/b6.png" alt="HTML5 Icon" style="width:5%;height:46px;top:19%;left:61%;position: absolute;display: none" id="pic_c_6" >
                <img src="pic/b7.png" alt="HTML5 Icon" style="width:5%;height:46px;top:19%;left:61%;position: absolute;display: none" id="pic_c_7" >
                <img src="pic/b8.png" alt="HTML5 Icon" style="width:5%;height:46px;top:19%;left:61%;position: absolute;display: none" id="pic_c_8" >
                <img src="pic/6-1.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_c_6-1" >
                <img src="pic/6-2.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_c_6-2" >                
                <img src="pic/6-3.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_c_6-3" >
                <img src="pic/6-4.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_c_6-4" >

                <img src="pic/b1.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:79.4%;position: absolute;display: none" id="pic_d_1" > 
                <img src="pic/b2.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:79.4%;position: absolute;display: none" id="pic_d_2" > 
                <img src="pic/b3.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:79.4%;position: absolute;display: none" id="pic_d_3" >
                <img src="pic/b4.png" alt="HTML5 Icon" style="width:5%;height:43px;top:19%;left:79.4%;position: absolute;display: none" id="pic_d_4" >
                <img src="pic/b5.png" alt="HTML5 Icon" style="width:5%;height:46px;top:19%;left:79%;position: absolute;display: none" id="pic_d_5" >
                <img src="pic/b6.png" alt="HTML5 Icon" style="width:5%;height:46px;top:18.5%;left:80%;position: absolute;display: none" id="pic_d_6" >
                <img src="pic/b7.png" alt="HTML5 Icon" style="width:5%;height:46px;top:19%;left:80%;position: absolute;display: none" id="pic_d_7" >
                <img src="pic/b8.png" alt="HTML5 Icon" style="width:5%;height:46px;top:19%;left:80%;position: absolute;display: none" id="pic_d_8" >
                <img src="pic/6-1.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_d_6-1" >
                <img src="pic/6-2.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_d_6-2" >                
                <img src="pic/6-3.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_d_6-3" >
                <img src="pic/6-4.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_d_6-4" >


                <img src="pic/b1.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:23%;position: absolute;display: none" id="pic_e_1" > 
                <img src="pic/b2.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:23%;position: absolute;display: none" id="pic_e_2" > 
                <img src="pic/b3.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:23%;position: absolute;display: none" id="pic_e_3" >
                <img src="pic/b4.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:23%;position: absolute;display: none" id="pic_e_4" >
                <img src="pic/b5.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:22%;position: absolute;display: none" id="pic_e_5" >
                <img src="pic/b6.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:23%;position: absolute;display: none" id="pic_e_6" >
                <img src="pic/b7.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:23%;position: absolute;display: none" id="pic_e_7" >
                <img src="pic/b8.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:23%;position: absolute;display: none" id="pic_e_8" >
                <img src="pic/6-1.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_e_6-1" >
                <img src="pic/6-2.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_e_6-2" >                
                <img src="pic/6-3.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_e_6-3" >
                <img src="pic/6-4.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_e_6-4" >                


                <img src="pic/b1.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:41.8%;position: absolute;display: none" id="pic_f_1" > 
                <img src="pic/b2.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:41.8%;position: absolute;display: none" id="pic_f_2" > 
                <img src="pic/b3.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:41.8%;position: absolute;display: none" id="pic_f_3" >
                <img src="pic/b4.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:41.8%;position: absolute;display: none" id="pic_f_4" >
                <img src="pic/b5.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:41%;position: absolute;display: none" id="pic_f_5" >
                <img src="pic/b6.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:42%;position: absolute;display: none" id="pic_f_6" >
                <img src="pic/b7.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:42%;position: absolute;display: none" id="pic_f_7" >
                <img src="pic/b8.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:42%;position: absolute;display: none" id="pic_f_8" >
                <img src="pic/6-1.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_f_6-1" >
                <img src="pic/6-2.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_f_6-2" >                
                <img src="pic/6-3.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_f_6-3" >
                <img src="pic/6-4.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_f_6-4" >

                <img src="pic/b1.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:60.6%;position: absolute;display: none" id="pic_g_1" > 
                <img src="pic/b2.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:60.6%;position: absolute;display: none" id="pic_g_2" > 
                <img src="pic/b3.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:60.6%;position: absolute;display: none" id="pic_g_3" >
                <img src="pic/b4.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:60.6%;position: absolute;display: none" id="pic_g_4" >
                <img src="pic/b5.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:60%;position: absolute;display: none" id="pic_g_5" >
                <img src="pic/b6.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:61%;position: absolute;display: none" id="pic_g_6" >
                <img src="pic/b7.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:61%;position: absolute;display: none" id="pic_g_7" >
                <img src="pic/b8.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:61%;position: absolute;display: none" id="pic_g_8" >
                <img src="pic/6-1.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_g_6-1" >
                <img src="pic/6-2.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_g_6-2" >                
                <img src="pic/6-3.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_g_6-3" >
                <img src="pic/6-4.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_g_6-4" >

                <img src="pic/b1.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:79.4%;position: absolute;display: none" id="pic_h_1" > 
                <img src="pic/b2.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:79.4%;position: absolute;display: none" id="pic_h_2" > 
                <img src="pic/b3.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:79.4%;position: absolute;display: none" id="pic_h_3" >
                <img src="pic/b4.png" alt="HTML5 Icon" style="width:5%;height:43px;top:32.5%;left:79.4%;position: absolute;display: none" id="pic_h_4" >
                <img src="pic/b5.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:79%;position: absolute;display: none" id="pic_h_5" >
                <img src="pic/b6.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:80%;position: absolute;display: none" id="pic_h_6" >
                <img src="pic/b7.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:80%;position: absolute;display: none" id="pic_h_7" >
                <img src="pic/b8.png" alt="HTML5 Icon" style="width:5%;height:46px;top:32.5%;left:80%;position: absolute;display: none" id="pic_h_8" >
                <img src="pic/6-1.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_h_6-1" >
                <img src="pic/6-2.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_h_6-2" >                
                <img src="pic/6-3.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_h_6-3" >
                <img src="pic/6-4.png" alt="HTML5 Icon" style="width:3.8%;height:22px;position: absolute;display: none" id="pic_h_6-4" >

                <%-- 大方框外面的输入框 --%>

                <input type="text" id="input_mount_top_bottom_a" autocomplete="off" style="position:absolute;top:148px;left:200px;width: 100px;border:0px black solid;height: 30px;text-align:center;"/>
                <input type="text" id="input_mount_top_bottom_b" autocomplete="off" style="position:absolute;top:148px;left:384px;width: 100px;border:0px black solid;height: 30px;text-align:center;"/>
                <input type="text" id="input_mount_top_bottom_c" autocomplete="off" style="position:absolute;top:148px;left:572px;width: 100px;border:0px black solid;height: 30px;text-align:center;"/>
                <input type="text" id="input_mount_top_bottom_d" autocomplete="off" style="position:absolute;top:148px;left:754px;width: 100px;border:0px black solid;height: 30px;text-align:center;"/>

                <input type="text" id="input_mount_top_bottom_e" autocomplete="off" style="position:absolute;top:544px;left:200px;width: 100px;border:0px black solid;height: 30px;text-align:center;"/>
                <input type="text" id="input_mount_top_bottom_f" autocomplete="off" style="position:absolute;top:544px;left:384px;width: 100px;border:0px black solid;height: 30px;text-align:center;"/>
                <input type="text" id="input_mount_top_bottom_g" autocomplete="off" style="position:absolute;top:544px;left:572px;width: 100px;border:0px black solid;height: 30px;text-align:center;"/>
                <input type="text" id="input_mount_top_bottom_h" autocomplete="off" style="position:absolute;top:544px;left:756px;width: 100px;border:0px black solid;height: 30px;text-align:center;"/>



                <%-- 大方框下面的下拉框 --%>

                <div id="select_mount_across_a" class="select" style="width:70px;float:right;right:698px;top:332px;position:absolute;">
                    <select style="height:20px;padding:0px;border:none;font-weight:bolder; ">
                        <option value="" selected> </option>
                        <option>Front</option>
                        <option>Back</option>
                        <option>Gusset</option>
                    </select>
                    <div class="select__cylinder"></div>
                </div>

                <div id="select_mount_across_b" class="select" style="width:70px;float:right;right:512px;top:332px;position:absolute;">
                    <select style="height:20px;padding:0px;border:none;font-weight:bolder; ">
                        <option value="" selected> </option>
                        <option>Front</option>
                        <option>Back</option>
                        <option>Gusset</option>
                    </select>
                    <div class="select__cylinder"></div>
                </div>

                <div id="select_mount_across_c" class="select" style="width:70px;float:right;right:326px;top:332px;position:absolute;">
                    <select style="height:20px;padding:0px;border:none;font-weight:bolder; ">
                        <option value="" selected> </option>
                        <option>Front</option>
                        <option>Back</option>
                        <option>Gusset</option>
                    </select>
                    <div class="select__cylinder"></div>
                </div>

                <div id="select_mount_across_d" class="select" style="width:70px;float:right;right:140.5px;top:332px;position:absolute;">
                    <select style="height:20px;padding:0px;border:none;font-weight:bolder; ">
                        <option value="" selected> </option>
                        <option>Front</option>
                        <option>Back</option>
                        <option>Gusset</option>
                    </select>
                    <div class="select__cylinder"></div>
                </div>

                <div id="select_mount_across_e" class="select" style="width:70px;float:right;right:698px;top:511px;position:absolute;">
                    <select style="height:20px;padding:0px;border:none;font-weight:bolder; ">
                        <option value="" selected> </option>
                        <option>Front</option>
                        <option>Back</option>
                        <option>Gusset</option>
                    </select>
                    <div class="select__cylinder"></div>
                </div>

                <div id="select_mount_across_f" class="select" style="width:70px;float:right;right:512px;top:511px;position:absolute;">
                    <select style="height:20px;padding:0px;border:none;font-weight:bolder;">
                        <option value="" selected> </option>
                        <option>Front</option>
                        <option>Back</option>
                        <option>Gusset</option>
                    </select>
                    <div class="select__cylinder"></div>
                </div>

                <div id="select_mount_across_g" class="select" style="width:70px;float:right;right:326px;top:511px;position:absolute;">
                    <select style="height:20px;padding:0px;border:none;font-weight:bolder; ">
                        <option value="" selected> </option>
                        <option>Front</option>
                        <option>Back</option>
                        <option>Gusset</option>
                    </select>
                    <div class="select__cylinder"></div>
                </div>

                <div id="select_mount_across_h" class="select" style="width:70px;float:right;right:140.5px;top:511px;position:absolute;">
                    <select style="height:20px;padding:0px;border:none;font-weight:bolder; ">
                        <option value="" selected> </option>
                        <option>Front</option>
                        <option>Back</option>
                        <option>Gusset</option>
                    </select>
                    <div class="select__cylinder"></div>
                </div>


                <%-- 四个方框上面的输入框 --%>
                <input type="text" id="input_mount_across_top_a" autocomplete="off" style="position:absolute;top:653px;left:38px;
                       border:0px black solid;width:68px;height:30px;text-align:center;" maxlength="10" />
                <input type="text" id="input_mount_across_top_b" autocomplete="off" style="position:absolute;top:653px;left:158px;
                       border:0px black solid;width:68px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_top_c" autocomplete="off" style="position:absolute;top:653px;left:277px;
                       border:0px black solid;width:68px;height:30px;text-align:center;" maxlength="10" />
                <input type="text" id="input_mount_across_top_d" autocomplete="off" style="position:absolute;top:653px;left:397px;
                       border:0px black solid;width:68px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_top_e" autocomplete="off" style="position:absolute;top:653px;left:516px;
                       border:0px black solid;width:68px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_top_f" autocomplete="off" style="position:absolute;top:653px;left:636px;
                       border:0px black solid;width:68px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_top_g" autocomplete="off" style="position:absolute;top:653px;left:756px;
                       border:0px black solid;width:68px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_top_h" autocomplete="off" style="position:absolute;top:653px;left:876px;
                       border:0px black solid;width:68px;height:30px;text-align:center;" maxlength="10"/>

                <%-- 四个方框里的输入框 --%>
                <input type="text" id="input_mount_across_a_1" autocomplete="off" style="position:absolute;top:691px;left:26px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_a_2" autocomplete="off" style="position:absolute;top:691px;left:74px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_a_3" autocomplete="off" style="position:absolute;top:733px;left:26px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_a_4" autocomplete="off" style="position:absolute;top:733px;left:74px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>

                <input type="text" id="input_mount_across_b_1" autocomplete="off" style="position:absolute;top:691px;left:146px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_b_2" autocomplete="off" style="position:absolute;top:691px;left:194px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_b_3" autocomplete="off" style="position:absolute;top:733px;left:146px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_b_4" autocomplete="off" style="position:absolute;top:733px;left:194px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>

                <input type="text" id="input_mount_across_c_1" autocomplete="off" style="position:absolute;top:691px;left:265px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_c_2" autocomplete="off" style="position:absolute;top:691px;left:313px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_c_3" autocomplete="off" style="position:absolute;top:733px;left:265px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_c_4" autocomplete="off" style="position:absolute;top:733px;left:313px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>

                <input type="text" id="input_mount_across_d_1" autocomplete="off" style="position:absolute;top:691px;left:385px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_d_2" autocomplete="off" style="position:absolute;top:691px;left:433px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_d_3" autocomplete="off" style="position:absolute;top:733px;left:385px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_d_4" autocomplete="off" style="position:absolute;top:733px;left:433px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>

                <input type="text" id="input_mount_across_e_1" autocomplete="off" style="position:absolute;top:691px;left:505px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_e_2" autocomplete="off" style="position:absolute;top:691px;left:553px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_e_3" autocomplete="off" style="position:absolute;top:733px;left:505px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_e_4" autocomplete="off" style="position:absolute;top:733px;left:553px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>

                <input type="text" id="input_mount_across_f_1" autocomplete="off" style="position:absolute;top:691px;left:625px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_f_2" autocomplete="off" style="position:absolute;top:691px;left:673px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_f_3" autocomplete="off" style="position:absolute;top:733px;left:625px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_f_4" autocomplete="off" style="position:absolute;top:733px;left:673px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>

                <input type="text" id="input_mount_across_g_1" autocomplete="off" style="position:absolute;top:691px;left:745px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_g_2" autocomplete="off" style="position:absolute;top:691px;left:792px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_g_3" autocomplete="off" style="position:absolute;top:733px;left:745px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_g_4" autocomplete="off" style="position:absolute;top:733px;left:793px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>

                <input type="text" id="input_mount_across_h_1" autocomplete="off" style="position:absolute;top:691px;left:864px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_h_2" autocomplete="off" style="position:absolute;top:691px;left:912px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_h_3" autocomplete="off" style="position:absolute;top:733px;left:864px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>
                <input type="text" id="input_mount_across_h_4" autocomplete="off" style="position:absolute;top:733px;left:913px;
                       border:0px red solid;width:45px;height:30px;text-align:center;" maxlength="10"/>






            </div>
        </div>

        <div id="section-to-print_3" class="page" style="margin-top: 1%; border: 0px red solid;">

            <div id="div_logo_3" class="no-print" style="border-bottom: 1px #00A250 solid;
                 width: 100%;
                 height:60px;
                 position: absolute;
                 left: 0%;
                 top:1%;">

                <img src="pic/logo3.jpg" alt="HTML5 Icon" 
                     style="display: block;position:absolute;
                     top:22%;left:0.6%;
                     opacity: 0.6;
                     display:block;                     
                     ">

                <p class="p_prmos_number" style="position:absolute;font-size:10pt;
                   top:18%;left:380px;display:block;color: #660066;">PROMS # : </p>

                <p style="position:absolute;font-size:12pt;font-weight:bold;
                   top:18%;float:right;right:20px;display:block;color:rgba(159,204,190,0.9);">Graphics Department - 2017</p>

            </div>

            <div id="div_footer_3" class="no-print" style="border-top: 2px #cccccc solid;width: 100%;height:60px;position: absolute;left: 0%;top:96%;display:none;">
                <p style="position:absolute;font-size:12pt;font-weight:bold;
                   top:0%;float:right;right:46%;display:block;color: #999999;">Page 2 of 2</p>

            </div>

            <div id="flex_3" style="border:0px red solid;position: absolute;top:6%;left:0%;width:100%;height: 90%;">

                <textarea id="input_page3_watermark" class="wm watermark-print" autocomplete="off" style="width:58%;height:150px;float:right;right:320px;top:200px;
                          position:absolute;
                          text-align:center;border:0px black solid;
                          font-size: 28pt;  
                          display: none;  
                          /*
                          opacity: 0.2;
                          */
                          z-index:1;
                          color:#808080;
                          background-color: transparent;
                          -ms-transform: rotate(-38deg); /* IE 9 */
                          -webkit-transform: rotate(-38deg); /* Safari */
                          transform: rotate(-38deg); /* Standard syntax */"
                          /></textarea>



                <div class="wm watermark-print" style="
                     <%-- 
                     background:url(https://www.google.co.in/images/srpr/logo11w.png) 
                     center center no-repeat;
                     --%>
                     border:0px red solid;
                     border-radius:10px;
                     background:url(pic/winpak.jpg)
                     center center;
                     opacity: 0.18;
                     position: absolute;
                     width: 100%;
                     height: 25%;
                     top:28%;
                     left:0%;
                     display:none;
                     z-index:1;

                     -ms-transform: rotate(-38deg); /* IE 9 */
                     -webkit-transform: rotate(-38deg); /* Safari */
                     transform: rotate(-38deg); /* Standard syntax */                                    
                     ">
                </div>

                <div id="box_mounting_title" style="position: absolute;right:6px;top:1px;background-color:transparent; width:560px;height:50px; 
                     border: 2px black solid;vertical-align:middle;text-align: center;line-height:1px;">
                    <p style="position:absolute;font-size:18pt;color:black;left:12%;top:0%;font-weight:bolder;">DIGITAL PLATE STORAGE SHEET</p>
                </div>

                <p class="watermark-print" style="position: absolute;font-size:10pt;color:red;left:46px;top:1px;display:none;">Printed copy of this form may not be current.<br>Must reference online form for latest version.</p>


                <label id="label_page3_date" for="input_page3_date" style="font-size:11pt;float:right;right:900px;top:96px;position:absolute;"> DATE: </label>
                <input type="text" id="input_page3_date" autocomplete="off" style="width:20%;height:30px;float:right;right:680px;top:90px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>                
                <label id="label_page3_location" for="input_page3_location" style="font-size:11pt;float:right;right:440px;top:96px;position:absolute;"> LOCATION: </label>
                <input type="text" id="input_page3_location" autocomplete="off" style="width:20%;height:30px;float:right;right:220px;top:90px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/>
                <label id="label_page3_item" for="input_page3_item" style="font-size:11pt;float:right;right:900px;top:156px;position:absolute;"> ITEM #: </label>
                <input type="text" id="input_page3_item" autocomplete="off" style="width:20%;height:30px;float:right;right:680px;top:150px;position:absolute;
                       text-align:center;border:1px black solid;" readonly="true"/>                
                <label id="label_page3_po" for="input_page3_po" style="font-size:11pt;float:right;right:440px;top:156px;position:absolute;"> PO #: </label>
                <input type="text" id="input_page3_po" autocomplete="off" style="width:20%;height:30px;float:right;right:220px;top:150px;position:absolute;
                       text-align:center;border:1px black solid;" readonly="true"/>

                <div style="position: absolute;right:0px;top:238px;background-color:transparent; width:100%;height:600px; 
                     border: 0px black solid;vertical-align:middle;text-align: center;line-height:1px;">

                    <input type="text" id="input_page3_row_1" autocomplete="off" style="width:58%;height:30px;float:right;right:410px;top:1px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="150" readonly="true"/>
                    <input id="checkbox_page3_row_1" type="checkbox">
                    <label id="label_page3_row_1" class="checkbox" for="checkbox_page3_row_1" style="font-size:11pt;position:absolute;float:right;right:300px;top:1px;">&nbsp;&nbsp;SAVED </label>

                    <input type="text" id="input_page3_row_2" autocomplete="off" style="width:58%;height:30px;float:right;right:410px;top:32px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="150" readonly="true"/>
                    <input id="checkbox_page3_row_2" type="checkbox">
                    <label id="label_page3_row_2" class="checkbox" for="checkbox_page3_row_2" style="font-size:11pt;position:absolute;float:right;right:300px;top:32px;">&nbsp;&nbsp;SAVED </label>

                    <input type="text" id="input_page3_row_3" autocomplete="off" style="width:58%;height:30px;float:right;right:410px;top:63px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="150" readonly="true"/>
                    <input id="checkbox_page3_row_3" type="checkbox">
                    <label id="label_page3_row_3" class="checkbox" for="checkbox_page3_row_3" style="font-size:11pt;position:absolute;float:right;right:300px;top:63px;">&nbsp;&nbsp;SAVED </label>

                    <input type="text" id="input_page3_row_4" autocomplete="off" style="width:58%;height:30px;float:right;right:410px;top:94px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="150" readonly="true"/>
                    <input id="checkbox_page3_row_4" type="checkbox">
                    <label id="label_page3_row_4" class="checkbox" for="checkbox_page3_row_4" style="font-size:11pt;position:absolute;float:right;right:300px;top:94px;">&nbsp;&nbsp;SAVED </label>

                    <input type="text" id="input_page3_row_5" autocomplete="off" style="width:58%;height:30px;float:right;right:410px;top:125px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="150" readonly="true"/>
                    <input id="checkbox_page3_row_5" type="checkbox">
                    <label id="label_page3_row_5" class="checkbox" for="checkbox_page3_row_5" style="font-size:11pt;position:absolute;float:right;right:300px;top:125px;">&nbsp;&nbsp;SAVED </label>

                    <input type="text" id="input_page3_row_6" autocomplete="off" style="width:58%;height:30px;float:right;right:410px;top:156px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="150" readonly="true"/>
                    <input id="checkbox_page3_row_6" type="checkbox">
                    <label id="label_page3_row_6" class="checkbox" for="checkbox_page3_row_6" style="font-size:11pt;position:absolute;float:right;right:300px;top:156px;">&nbsp;&nbsp;SAVED </label>

                    <input type="text" id="input_page3_row_7" autocomplete="off" style="width:58%;height:30px;float:right;right:410px;top:187px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="150" readonly="true"/>
                    <input id="checkbox_page3_row_7" type="checkbox">
                    <label id="label_page3_row_7" class="checkbox" for="checkbox_page3_row_7" style="font-size:11pt;position:absolute;float:right;right:300px;top:187px;">&nbsp;&nbsp;SAVED </label>

                    <input type="text" id="input_page3_row_8" autocomplete="off" style="width:58%;height:30px;float:right;right:410px;top:218px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="150" readonly="true"/>
                    <input id="checkbox_page3_row_8" type="checkbox">
                    <label id="label_page3_row_8" class="checkbox" for="checkbox_page3_row_8" style="font-size:11pt;position:absolute;float:right;right:300px;top:218px;">&nbsp;&nbsp;SAVED </label>

                    <input type="text" id="input_page3_row_9" autocomplete="off" style="width:58%;height:30px;float:right;right:410px;top:249px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="150" readonly="true"/>
                    <input id="checkbox_page3_row_9" type="checkbox">
                    <label id="label_page3_row_9" class="checkbox" for="checkbox_page3_row_9" style="font-size:11pt;position:absolute;float:right;right:300px;top:249px;">&nbsp;&nbsp;SAVED </label>

                    <input type="text" id="input_page3_row_10" autocomplete="off" style="width:58%;height:30px;float:right;right:410px;top:280px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="150" readonly="true"/>
                    <input id="checkbox_page3_row_10" type="checkbox">
                    <label id="label_page3_row_10" class="checkbox" for="checkbox_page3_row_10" style="font-size:11pt;position:absolute;float:right;right:300px;top:280px;">&nbsp;&nbsp;SAVED </label>

                    <input type="text" id="input_page3_row_11" autocomplete="off" style="width:58%;height:30px;float:right;right:410px;top:311px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="150" readonly="true"/>
                    <input id="checkbox_page3_row_11" type="checkbox">
                    <label id="label_page3_row_11" class="checkbox" for="checkbox_page3_row_11" style="font-size:11pt;position:absolute;float:right;right:300px;top:311px;">&nbsp;&nbsp;SAVED </label>

                    <input type="text" id="input_page3_row_12" autocomplete="off" style="width:58%;height:30px;float:right;right:410px;top:342px;position:absolute;
                           text-align:center;border:1px black solid;" maxlength="150" readonly="true"/>
                    <input id="checkbox_page3_row_12" type="checkbox">
                    <label id="label_page3_row_12" class="checkbox" for="checkbox_page3_row_12" style="font-size:11pt;position:absolute;float:right;right:300px;top:342px;">&nbsp;&nbsp;SAVED </label>


                </div>

                <label id="label_page3_ta" for="textarea_page3_ta" style="font-size:11pt;float:right;right:786px;top:650px;position:absolute;
                       width:20%;height:38px;border: 0px black solid;text-align: left;padding-top:6px;padding-left:6px;"> PLATE SIZE / COMMENTS: </label>

                <textarea id="textarea_page3_ta" autocomplete="off" style="
                          position: absolute;
                          border: solid 1px black;                           
                          width: 99%;  
                          height: 150px;
                          float:right;
                          right:5px;
                          top:680px;
                          resize: none;
                          font-size: 16pt;
                          text-align: center;
                          box-sizing: border-box;
                          ">
                </textarea>

                <label id="label_page3_washed" for="input_page3_washed" style="font-size:11pt;float:right;right:400px;top:865px;position:absolute;"> WASHED BY: </label>
                <input type="text" id="input_page3_washed" autocomplete="off" style="width:20%;height:30px;float:right;right:180px;top:860px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/> 
                <label id="label_page3_filed" for="input_page3_filed" style="font-size:11pt;float:right;right:400px;top:905px;position:absolute;"> FILED BY: </label>
                <input type="text" id="input_page3_filed" autocomplete="off" style="width:20%;height:30px;float:right;right:180px;top:900px;position:absolute;
                       text-align:center;border:1px black solid;" maxlength="50"/> 









            </div>
        </div>



        <%-- 额外的布局div --%>


        <%-- 
        <div id="control_panel_swtich_board" class="no-print" style="position:fixed; 
             top:28%; background-color:rgba(255,255,255,0);
             border: 0px solid red;
             width: 80px;
             height:380px;
             left: 26px;">
        
        --%>

        <div id="control_panel_swtich_board_2" class="no-print" style="position:fixed; 
             top:8%; background-color:rgba(255,255,255,0);
             border: 0px solid red;
             height:800px;
             right: 50%;
             transform: translate(50%, 0);
             width: 80px;">

            <img src="pic/assembly-machine-robot-robotics-engineering-512.png" alt="HTML5 Icon" title="Link PDF to MES/Movex" 
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:326px;left:8px;"
                 id="img_manufacture" class="btns" 
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">
        </div>

        <div id="control_panel_swtich_board" class="no-print" style="position:fixed; 
             top:8%; background-color:rgba(255,255,255,0);
             border: 0px solid red;
             height:800px;
             left: 50%;
             transform: translate(-50%, 0);
             width: 80px;">

            <img src="pic/adjustment_tuning-512.png" alt="HTML5 Icon" title="Layout Controls"
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:6px;left:8px;"                  
                 id="img_switch" class="btns" 
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">

            <img src="pic/download.png" alt="HTML5 Icon" title="Save Data" 
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:86px;left:8px;"
                 id="img_save" class="btns"
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">
            <%--
                        <img src="pic/square-of-menu-with-horizontal-lines_318-28663.jpg" alt="HTML5 Icon" 
                             style="width:60px;
                             height:60px;display: block;position:absolute;
                             top:166px;left:8px;"
                             id="img_menu" 
                             onmouseover="bigImg(this)"
                             onmouseout="normalImg(this)">
            --%>

            <img src="pic/Icons8-Windows-8-Finance-Safe.ico" alt="HTML5 Icon" title="Lock Data" 
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:166px;left:8px;"
                 id="img_overlay" class="btns"
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">
            <%--
            <img src="pic/smallformat-printing_icon.png" alt="HTML5 Icon" 
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:166px;left:8px;"
                 id="img_print" 
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">
            
            <img src="pic/clear-icon-29.png" alt="HTML5 Icon" 
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:166px;left:8px;"
                 id="img_switch" 
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">
            --%>

            <img src="pic/Network-Switch-icon.png" alt="HTML5 Icon" title="Print Width (Point to Point)"
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:246px;left:8px;"
                 id="img_jump" class="btns"
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">

            <img src="pic/Folder-Open-icon.png" alt="HTML5 Icon" title="Open File / Create New File"
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:326px;left:8px;"
                 id="img_open" class="btns"
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">

            <img src="pic/print-512.png" alt="HTML5 Icon" title="Save as PDF / Print"
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:406px;left:8px;"
                 id="img_print" class="btns"
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">

            <img src="pic/copyright1600.png" alt="HTML5 Icon" title="Watermark for Printing"
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:486px;left:8px;"
                 id="img_wm" class="btns"
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">

            <img src="pic/input-field-search-field-outline-512.png" alt="HTML5 Icon" title="Editable Watermark (Plate Storage Sheet)"
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:566px;left:8px;"
                 id="img_text" class="btns"
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">

            <img src="pic/275225-200.png" alt="HTML5 Icon" title="Login"
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:646px;left:8px;"
                 id="img_account" class="btns"
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">


            <img src="pic/mono-kshutdown.png" alt="HTML5 Icon" title="Logout"
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:726px;left:8px;"
                 id="img_logout" class="btns"
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">



        </div>

        <div id="print_guide" class="no-print" style="border: 1px #cccccc solid;
             height:380px;
             position: fixed;                          
             top:28%;
             display: none;
             background-color: white;
             left: 50%;
             transform: translate(-50%, 0);
             width: 180px;">

            <img src="pic/print_settings-256.png" alt="HTML5 Icon" 
                 style="width:60px;
                 height:60px;display: block;position:absolute;
                 top:16px;left:8px;"
                 id="img_print_guide" 
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">
            <p style="position:absolute;font-size:9pt;font-weight:bold;top:16px;left:76px;display:none;">Chrome Printer</p>

            <p style="position:absolute;font-size:10pt;top:88px;left:8px;">Paper size:   A4</p>
            <p style="position:absolute;font-size:10pt;top:128px;left:8px;">PDF compatible</p>
            <p style="position:absolute;font-size:10pt;top:168px;left:8px;">Zoom: 100%</p>
            <p style="position:absolute;font-size:10pt;top:208px;left:8px;">Browser: Chrome</p>
            <p style="position:absolute;font-size:10pt;top:238px;left:8px;color:#999999;">--------Optional--------</p>
            <p style="position:absolute;font-size:10pt;top:268px;left:8px;color:#999999;">Uncheck:</p>
            <p style="position:absolute;font-size:10pt;top:288px;left:8px;color:#999999;">&nbsp;&nbsp;Headers and footers</p>
            <p style="position:absolute;font-size:10pt;top:318px;left:8px;color:#999999;">Check:</p>
            <p style="position:absolute;font-size:10pt;top:338px;left:8px;color:#999999;">&nbsp;&nbsp;Background graphics</p>

        </div>

        <div id="bb" class="no-print" style="border: 0px solid red;
             width: 10%;
             height:60px;
             position: absolute;
             left: 1%;
             top:2600px;">

        </div>



        <div id="control_panel_popup" class="no-print" style="height:200px; background-color:rgba(255,255,255,1.0);
             display:none; z-index: 2;
             border:1px #999999 solid; box-shadow: 0 0 18px rgba(0, 0, 0, 0.8);
             position:fixed;
             width:600px;
             top: 10%;          
             left:26%;
             ">

            <div id="panel_sub_1" class="no-print" style="height:38%; background-color:rgba(255,255,255,0.0);    
                 display:block;
                 border:1px #999999 solid; 
                 position:absolute;
                 width:90%;
                 left:5%;
                 top:5%;
                 ">
                <label id="panel_cylinder"  style="font-size:11pt;float:right;right:86%;top:10%;position:absolute;"> Cylinders: </label>
                <input id="cylinder_a_cbox" type="checkbox">
                <label id="cylinder_a_lable" class="checkbox" for="cylinder_a_cbox" style="position:absolute;left:5%;top:44%;"> A </label>
                <input id="cylinder_b_cbox" type="checkbox">
                <label id="cylinder_b_lable" class="checkbox" for="cylinder_b_cbox" style="position: absolute;left:15%;top:44%;"> B </label>
                <input id="cylinder_c_cbox" type="checkbox">
                <label id="cylinder_c_lable" class="checkbox" for="cylinder_c_cbox" style="position: absolute;left:25%;top:44%;"> C </label>
                <input id="cylinder_d_cbox" type="checkbox">
                <label id="cylinder_d_lable" class="checkbox" for="cylinder_d_cbox" style="position: absolute;left:35%;top:44%;"> D </label>
                <input id="cylinder_e_cbox" type="checkbox">
                <label id="cylinder_e_lable" class="checkbox" for="cylinder_e_cbox" style="position: absolute;left:45%;top:44%;"> E </label>
                <input id="cylinder_f_cbox" type="checkbox">
                <label id="cylinder_f_lable" class="checkbox" for="cylinder_f_cbox" style="position: absolute;left:55%;top:44%;"> F </label>
                <input id="cylinder_g_cbox" type="checkbox">
                <label id="cylinder_g_lable" class="checkbox" for="cylinder_g_cbox" style="position: absolute;left:65%;top:44%;"> G </label>
                <input id="cylinder_h_cbox" type="checkbox">
                <label id="cylinder_h_lable" class="checkbox" for="cylinder_h_cbox" style="position: absolute;left:75%;top:44%;"> H </label>
            </div>

            <div id="panel_sub_2" class="no-print" style="height:50%; background-color:rgba(255,255,255,0.0);    
                 display:block;
                 border:1px #999999 solid; 
                 position:absolute;
                 width:38%;
                 left:5%;
                 top:46%;
                 ">
                <label id="panel_direction"  style="font-size:11pt;float:right;right:68%;top:10%;position:absolute;"> Direction: </label>

                <input id="type_up_cbox" type="checkbox">
                <label id="type_up_lable" class="checkbox" for="type_up_cbox" style="position: absolute;left:5%;top:35%;"> &#8593 </label>
                <input id="type_down_cbox" type="checkbox">
                <label id="type_down_lable" class="checkbox" for="type_down_cbox" style="position: absolute;left:28%;top:35%;"> &#8595 </label>
                <input id="type_left_cbox" type="checkbox">
                <label id="type_left_lable" class="checkbox" for="type_left_cbox" style="position: absolute;left:51%;top:35%;"> &#8594 </label>
                <input id="type_right_cbox" type="checkbox">
                <label id="type_right_lable" class="checkbox" for="type_right_cbox" style="position: absolute;left:74%;top:35%;"> &#8592 </label>

                <input id="type_nw_cbox" type="checkbox">
                <label id="type_nw_lable" class="checkbox" for="type_nw_cbox" style="position: absolute;left:5%;top:68%;"> &#8598 </label>
                <input id="type_ne_cbox" type="checkbox">
                <label id="type_ne_lable" class="checkbox" for="type_ne_cbox" style="position: absolute;left:28%;top:68%;"> &#8599 </label>
                <input id="type_sw_cbox" type="checkbox">
                <label id="type_sw_lable" class="checkbox" for="type_sw_cbox" style="position: absolute;left:51%;top:68%;"> &#8601 </label>
                <input id="type_se_cbox" type="checkbox">
                <label id="type_se_lable" class="checkbox" for="type_se_cbox" style="position: absolute;left:74%;top:68%;"> &#8600 </label>


            </div>

            <div id="panel_sub_3" class="no-print" style="height:38%; background-color:rgba(255,255,255,0.0);    
                 display:block;
                 border:1px #999999 solid; 
                 position:absolute;
                 width:38%;
                 left:50%;
                 top:46%;
                 ">
                <label id="panel_direction"  style="font-size:11pt;float:right;right:68%;top:10%;position:absolute;"> Eyespot: </label>
                <input id="eyespot_nw_cbox" type="checkbox">
                <label id="eyespot_nw_lable" class="checkbox" for="eyespot_nw_cbox" style="position: absolute;float:right;right:68%;top:50%;"> &#8598; </label>
                <input id="eyespot_ne_cbox" type="checkbox">
                <label id="eyespot_ne_lable" class="checkbox" for="eyespot_ne_cbox" style="position: absolute;float:right;right:46%;top:50%;"> &#8599; </label>
                <input id="eyespot_sw_cbox" type="checkbox">
                <label id="eyespot_sw_lable" class="checkbox" for="eyespot_sw_cbox" style="position: absolute;float:right;right:24%;top:50%;"> &#8601; </label>
                <input id="eyespot_se_cbox" type="checkbox">
                <label id="eyespot_se_lable" class="checkbox" for="eyespot_se_cbox" style="position: absolute;float:right;right:2%;top:50%;"> &#8600; </label>

                <input type="text" id="tune_up_input"  style="display:block;height:20px;text-align: center;
                       position: absolute;width:16%;top:10%;left:38%;
                       border:1px black solid;" placeholder="&#8593 &#8595" autocomplete="off" /> 
                <input type="text" id="tune_left_input" style="display:block;height:20px;text-align: center;
                       position: absolute;width:16%;top:10%;left:60%;
                       border:1px black solid;" placeholder="&#8592 &#8594" autocomplete="off" /> 

            </div>
        </div>

        <div id="overlay" class="no-print" style="border: 0px red solid;
             position:fixed;background-color:rgba(255,255,255,0.1);
             z-index: 3;
             width: 260mm;
             height: 387.5mm;
             top: 50%;
             left: 50%;
             margin-top: -105mm; /* Negative half of height. */
             margin-left: -130mm; /* Negative half of width. */
             display:none;

             ">



            <img src="pic/Award-PNG-Photos.png" alt="HTML5 Icon" 
                 style="width:160px;
                 height:138px;display: block;position:absolute;
                 top:22%;left:18%;
                 opacity: 0.9;
                 display:none;
                 -ms-transform: rotate(-38deg); /* IE 9 */
                 -webkit-transform: rotate(-38deg); /* Safari */
                 transform: rotate(-66deg); /* Standard syntax */
                 ">
            <p style="position:absolute;font-size:16pt;font-weight:bold;
               top:68px;left:160px;display:none;color:rgba(159,204,190,0.9);">Graphics designed</p>

            <div style="
                 <%-- 
                 background:url(https://www.google.co.in/images/srpr/logo11w.png) 
                 center center no-repeat;
                 --%>
                 border:0px red solid;
                 border-radius:1000px;
                 background:url(pic/winpak.jpg)
                 center center;
                 opacity: 0.38;
                 position: absolute;
                 width: 50%;
                 height: 25%;
                 top:18%;
                 left:26%;

                 -ms-transform: rotate(-38deg); /* IE 9 */
                 -webkit-transform: rotate(-38deg); /* Safari */
                 transform: rotate(-38deg); /* Standard syntax */
                 ">
            </div>



        </div>


        <div id="control_panel_open" class="no-print" style="height:200px; background-color:rgba(255,255,255,1.0);
             display:none; z-index: 2;
             border:1px #999999 solid; box-shadow: 0 0 18px rgba(0, 0, 0, 0.8);
             position:fixed;
             width:600px;
             top: 40%;          
             left:26%;
             ">

            <img src="pic/5651-200.png" alt="HTML5 Icon" 
                 style="width:30px;
                 height:30px;display:none;position:absolute;
                 top:20%;float:right;right:8%;"
                 id="img_refresh" 
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">

            <label id="open_label_proms_number" for="open_input_proms_number" style="font-size:11pt;float:right;right:80%;top:22%;position:absolute;"> PROMS # : </label>
            <form autocomplete="on"> 
                <input type="text" id="open_input_proms_number" autocomplete="on" autofocus style="position:absolute;top:20%;float:right;right:16%;
                       border:1px black solid;width:60%;height:30px;text-align:center;"/>
            </form>


            <img src="pic/add_file-512.png" alt="HTML5 Icon" 
                 style="width:30px;
                 height:30px;position:absolute;
                 top:20%;float:right;right:8%;"
                 id="img_newsheet" 
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">
            
            <img src="pic/Iconsmind-Outline-File-Copy-2.ico" alt="HTML5 Icon" 
                 style="width:30px;
                 height:30px;position:absolute;
                 top:20%;float:right;right:1%;"
                 id="img_copy" 
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">

            <label id="open_label_esko_po_number" for="open_input_esko_po_number" style="font-size:11pt;float:right;right:80%;top:50%;position:absolute;"> ESKO OID : </label>
            <form autocomplete="on">
                <input type="text" id="open_input_esko_po_number" autocomplete="on" autofocus style="position:absolute;top:48%;float:right;right:16%;
                       border:1px black solid;width:60%;height:30px;text-align:center;"/>
            </form>

            <img src="pic/loader.gif" alt="HTML5 Icon" 
                 style="width:30px;
                 height:30px;display: block;position:absolute;
                 top:1%;float:right;right:95%;">

            <input type="text" id="open_msg" autocomplete="off" readonly style="position:absolute;top:85%;float:right;right:0%;
                   border:0px black solid;width:90%;height:30px;text-align:left;color:red;font-size:16pt;"/>

        </div>

        <div id="control_panel_saveas" class="no-print" style="height:200px; background-color:rgba(255,255,255,1.0);
             display:none; z-index: 2;
             border:1px #999999 solid; box-shadow: 0 0 18px rgba(0, 0, 0, 0.8);
             position:fixed;
             width:600px;
             top: 16%;          
             left:26%;
             ">

            <label id="saveas_label_proms_number" for="saveas_input_proms_number" style="font-size:11pt;float:right;right:80%;top:22%;position:absolute;"> PROMS # : </label>
            <input type="text" id="saveas_input_proms_number" autocomplete="on" autofocus style="position:absolute;top:20%;float:right;right:16%;
                   border:1px black solid;width:60%;height:30px;text-align:center;"/>

            <img src="pic/icon2.png" alt="HTML5 Icon" 
                 style="width:30px;
                 height:30px;position:absolute;
                 top:20%;float:right;right:8%;"
                 id="img_saveas" 
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">         

            <img src="pic/loader.gif" alt="HTML5 Icon" 
                 style="width:30px;
                 height:30px;display: block;position:absolute;
                 top:1%;float:right;right:95%;">

            <input type="text" id="saveas_msg" autocomplete="off" readonly style="position:absolute;top:85%;float:right;right:0%;
                   border:0px black solid;width:90%;height:30px;text-align:left;color:red;font-size:16pt;"/>

        </div>


        <div id="control_panel_account" class="no-print" style="height:200px; background-color:rgba(255,255,255,0.8);
             display:none; z-index: 2;
             border:1px #999999 solid; box-shadow: 0 0 18px rgba(0, 0, 0, 0.8);
             position:fixed;
             width:400px;
             top: 38%;          
             left:38%;
             ">


            <label id="label_account_name" for="input_account_name" style="font-size:11pt;float:right;right:76%;top:20%;position:absolute;font-weight:600;"> User # : </label>
            <form autocomplete="on">
                <input type="text" id="input_account_name" autocomplete="on" autofocus style="position:absolute;top:17%;float:right;right:12%;
                       border:1px black solid;width:60%;height:30px;text-align:center;"/>
            </form>

            <label id="label_account_pw" for="input_account_pw" style="font-size:11pt;float:right;right:76%;top:48%;position:absolute;font-weight:600;"> Password : </label>
            <input type="password" id="input_account_pw" autocomplete="on" name="firstName" style="position:absolute;top:45%;float:right;right:12%;
                   border:1px black solid;width:60%;height:30px;text-align:center;"/>






            <input type="text" id="account_msg" autocomplete="off" readonly style="position:absolute;top:80%;float:right;right:0%;
                   border:0px black solid;width:100%;height:30px;text-align:center;color:red;"/>



        </div>

        <div id="control_panel_pdf" class="no-print" style="height:200px; background-color:rgba(255,255,255,1.0);
             display:none; z-index: 2;
             border:1px #999999 solid; box-shadow: 0 0 18px rgba(0, 0, 0, 0.8);
             position:fixed;
             width:600px;
             top: 40%;          
             right:26%;
             ">



            <label id="open_label_proms_pdf" for="open_input_proms_pdf" style="font-size:11pt;float:right;right:80%;top:22%;position:absolute;"> PROMS PDF : </label>

            <%--
            <input type="text" id="open_input_proms_pdf" autocomplete="on" autofocus style="position:absolute;top:20%;float:right;right:16%;
                   border:1px black solid;width:60%;height:30px;text-align:center;"/>"
            --%>

            <select id="open_input_proms_pdf" autocomplete="on" autofocus style="position:absolute;top:20%;float:right;right:16%;
                    border:1px black solid;width:60%;height:30px;text-align:center;">
                <%--
                <option value="volvo">Volvo</option>
                <option value="saab">Saab</option>
                <option value="mercedes">Mercedes</option>
                <option value="audi">Audi</option>
                --%>
            </select>

            <img src="pic/action-upload-alt-512.png" alt="HTML5 Icon" 
                 style="width:30px;
                 height:30px;position:absolute;
                 top:20%;float:right;right:8%;"
                 id="img_pdf" 
                 onmouseover="bigImg(this)"
                 onmouseout="normalImg(this)">



            <img src="pic/loader.gif" alt="HTML5 Icon" 
                 style="width:30px;
                 height:30px;display: block;position:absolute;
                 top:1%;float:right;right:95%;">

            <input type="text" id="pdf_msg" autocomplete="off" readonly style="position:absolute;top:85%;float:right;right:0%;
                   border:0px black solid;width:90%;height:30px;text-align:left;color:red;font-size:16pt;"/>

        </div>






    </body>
</html>
