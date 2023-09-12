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
static const char *ng0 = "C:/Users/John Isa/Documents/VSCode/Verilogg/LAB_MULTIPLIER/FA_4bit.v";



static void Always_27_0(char *t0)
{
    char t4[8];
    char t7[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t8;
    char *t10;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    xsi_vlogtype_concat(t4, 5, 4, 1U, t6, 4);
    t5 = (t0 + 1208U);
    t8 = *((char **)t5);
    xsi_vlogtype_concat(t7, 5, 4, 1U, t8, 4);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 5, t4, 5, t7, 5);
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t9, 0, 0, 4);
    t10 = (t0 + 1768);
    xsi_vlogvar_assign_value(t10, t9, 4, 0, 1);
    goto LAB2;

}


extern void work_m_00000000001230558302_1266084461_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000001230558302_1266084461", "isim/tbtb_isim_beh.exe.sim/work/m_00000000001230558302_1266084461.didat");
	xsi_register_executes(pe);
}
