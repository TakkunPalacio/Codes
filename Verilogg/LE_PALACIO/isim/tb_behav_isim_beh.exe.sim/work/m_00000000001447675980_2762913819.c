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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/John Isa/Documents/VSCode/Verilogg/LE_PALACIO/behav.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {4U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {8U, 0U};



static void Always_35_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    int t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3328);
    *((int *)t2) = 1;
    t3 = (t0 + 3040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(54, ng0);

LAB25:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(65, ng0);

LAB40:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB28:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);

LAB9:    xsi_set_current_line(39, ng0);
    t11 = (t0 + 1688U);
    t12 = *((char **)t11);
    t11 = (t12 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (~(t13));
    t15 = *((unsigned int *)t12);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(49, ng0);

LAB24:    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB12:    goto LAB8;

LAB10:    xsi_set_current_line(40, ng0);

LAB13:    xsi_set_current_line(41, ng0);
    t18 = (t0 + 1208U);
    t19 = *((char **)t18);

LAB14:    t18 = ((char*)((ng1)));
    t20 = xsi_vlog_unsigned_case_compare(t19, 2, t18, 2);
    if (t20 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng2)));
    t20 = xsi_vlog_unsigned_case_compare(t19, 2, t2, 2);
    if (t20 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng3)));
    t20 = xsi_vlog_unsigned_case_compare(t19, 2, t2, 2);
    if (t20 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng5)));
    t20 = xsi_vlog_unsigned_case_compare(t19, 2, t2, 2);
    if (t20 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB12;

LAB15:    xsi_set_current_line(42, ng0);
    t21 = ((char*)((ng2)));
    t22 = (t0 + 2088);
    xsi_vlogvar_assign_value(t22, t21, 0, 0, 4);
    goto LAB23;

LAB17:    xsi_set_current_line(43, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB23;

LAB19:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB23;

LAB21:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB23;

LAB26:    xsi_set_current_line(56, ng0);

LAB29:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB30:    t4 = ((char*)((ng1)));
    t20 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t20 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng2)));
    t20 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t20 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng3)));
    t20 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t20 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng5)));
    t20 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t20 == 1)
        goto LAB37;

LAB38:
LAB39:    goto LAB28;

LAB31:    xsi_set_current_line(58, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 2088);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 4);
    goto LAB39;

LAB33:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB35:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB37:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

}


extern void work_m_00000000001447675980_2762913819_init()
{
	static char *pe[] = {(void *)Always_35_0};
	xsi_register_didat("work_m_00000000001447675980_2762913819", "isim/tb_behav_isim_beh.exe.sim/work/m_00000000001447675980_2762913819.didat");
	xsi_register_executes(pe);
}
