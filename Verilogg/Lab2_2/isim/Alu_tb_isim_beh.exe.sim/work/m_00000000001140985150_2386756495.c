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
static const char *ng0 = "C:/Users/John Isa/Documents/VSCode/Verilogg/Lab2_2/alu_4bit.v";
static unsigned int ng1[] = {0U, 0U};



static void Always_48_0(char *t0)
{
    char t4[8];
    char t7[8];
    char t10[8];
    char t11[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t12;
    char *t13;
    char *t15;
    char *t16;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 3168);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(48, ng0);

LAB5:    xsi_set_current_line(49, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    t5 = ((char*)((ng1)));
    xsi_vlogtype_concat(t4, 5, 5, 2U, t5, 1, t6, 4);
    t8 = (t0 + 1208U);
    t9 = *((char **)t8);
    t8 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 5, 5, 2U, t8, 1, t9, 4);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 5, t4, 5, t7, 5);
    t12 = (t0 + 1368U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng1)));
    xsi_vlogtype_concat(t11, 5, 5, 2U, t12, 4, t13, 1);
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 5, t10, 5, t11, 5);
    t15 = (t0 + 1768);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 4);
    t16 = (t0 + 1928);
    xsi_vlogvar_assign_value(t16, t14, 4, 0, 1);
    goto LAB2;

}


extern void work_m_00000000001140985150_2386756495_init()
{
	static char *pe[] = {(void *)Always_48_0};
	xsi_register_didat("work_m_00000000001140985150_2386756495", "isim/Alu_tb_isim_beh.exe.sim/work/m_00000000001140985150_2386756495.didat");
	xsi_register_executes(pe);
}
