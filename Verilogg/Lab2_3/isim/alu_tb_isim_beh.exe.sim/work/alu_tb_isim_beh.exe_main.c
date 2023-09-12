/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001140985150_2386756495_init();
    work_m_00000000001392555555_2478695201_init();
    work_m_00000000001392555555_3930491917_init();
    work_m_00000000000879393369_0614901504_init();
    work_m_00000000001078418916_3051418895_init();
    work_m_00000000001845541525_2598182923_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001845541525_2598182923");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
