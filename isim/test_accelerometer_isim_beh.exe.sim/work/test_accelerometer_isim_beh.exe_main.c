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
    work_m_00000000001365879415_1180709591_init();
    work_m_00000000001679640218_0066700001_init();
    work_m_00000000000892839013_4176503569_init();
    work_m_00000000000360319915_2171887330_init();
    work_m_00000000002447312061_0223852801_init();
    work_m_00000000002058633775_0798413159_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002058633775_0798413159");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
