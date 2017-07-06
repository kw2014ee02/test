
$(document).ready(function () {
    
    $('#tune_up_input').on('input', function (event) {
        this.value = this.value.replace(/[^0-9.]/g, '');        
    });
    $('#tune_left_input').on('input', function (event) {
        this.value = this.value.replace(/[^0-9.]/g, '');        
    });


    $('#tune_up_input').on('keypress', function (e) {

        if (e.which === 13) {

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


        }
    });

    $('#tune_left_input').on('keypress', function (e) {
        if (e.which === 13) {

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



        }
    });


});


