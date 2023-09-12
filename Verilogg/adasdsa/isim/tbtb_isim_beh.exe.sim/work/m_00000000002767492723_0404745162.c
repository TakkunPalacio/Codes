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
static const char *ng0 = "C:/Users/John Isa/Documents/VSCode/Verilogg/adasdsa/asdasd.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};



static void Always_28_0(char *t0)
{
    char t6[8];
    char t8[8];
    char t11[8];
    char t56[8];
    char t64[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    char *t102;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 3488);
    *((int *)t2) = 1;
    t3 = (t0 + 3200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:
LAB8:    t2 = ((char*)((ng2)));
    t14 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t14 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t14 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t14 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t14 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t14 == 1)
        goto LAB13;

LAB14:
LAB7:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 1048U);
    t7 = *((char **)t4);
    t4 = ((char*)((ng1)));
    xsi_vlogtype_concat(t6, 17, 17, 2U, t4, 1, t7, 16);
    t9 = (t0 + 1208U);
    t10 = *((char **)t9);
    t9 = ((char*)((ng1)));
    xsi_vlogtype_concat(t8, 17, 17, 2U, t9, 1, t10, 16);
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 17, t6, 17, t8, 17);
    t12 = (t0 + 1768);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 16);
    t13 = (t0 + 1928);
    xsi_vlogvar_assign_value(t13, t11, 16, 0, 1);

LAB15:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t9 = (t4 + 4);
    t10 = (t7 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t7);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 ^ t19);
    t21 = (t17 | t20);
    t22 = *((unsigned int *)t9);
    t23 = *((unsigned int *)t10);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t21 & t25);
    if (t26 != 0)
        goto LAB17;

LAB16:    if (t24 != 0)
        goto LAB18;

LAB19:    t13 = (t6 + 4);
    t27 = *((unsigned int *)t13);
    t28 = (~(t27));
    t29 = *((unsigned int *)t6);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB20;

LAB21:
LAB22:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t9 = (t4 + 4);
    t10 = (t7 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t7);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 ^ t19);
    t21 = (t17 | t20);
    t22 = *((unsigned int *)t9);
    t23 = *((unsigned int *)t10);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t21 & t25);
    if (t26 != 0)
        goto LAB27;

LAB24:    if (t24 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t6) = 1;

LAB27:    memset(t8, 0, 8);
    t13 = (t6 + 4);
    t27 = *((unsigned int *)t13);
    t28 = (~(t27));
    t29 = *((unsigned int *)t6);
    t30 = (t29 & t28);
    t31 = (t30 & 1U);
    if (t31 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t13) != 0)
        goto LAB30;

LAB31:    t33 = (t8 + 4);
    t34 = *((unsigned int *)t8);
    t35 = *((unsigned int *)t33);
    t36 = (t34 || t35);
    if (t36 > 0)
        goto LAB32;

LAB33:    memcpy(t64, t8, 8);

LAB34:    t95 = (t64 + 4);
    t96 = *((unsigned int *)t95);
    t97 = (~(t96));
    t98 = *((unsigned int *)t64);
    t99 = (t98 & t97);
    t100 = (t99 != 0);
    if (t100 > 0)
        goto LAB46;

LAB47:
LAB48:    goto LAB2;

LAB9:    xsi_set_current_line(32, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    xsi_vlogtype_concat(t6, 17, 17, 2U, t3, 1, t4, 16);
    t7 = (t0 + 1208U);
    t9 = *((char **)t7);
    t7 = ((char*)((ng1)));
    xsi_vlogtype_concat(t8, 17, 17, 2U, t7, 1, t9, 16);
    memset(t11, 0, 8);
    xsi_vlog_unsigned_minus(t11, 17, t6, 17, t8, 17);
    t10 = (t0 + 1768);
    xsi_vlogvar_assign_value(t10, t11, 0, 0, 16);
    t12 = (t0 + 1928);
    xsi_vlogvar_assign_value(t12, t11, 16, 0, 1);
    goto LAB15;

LAB11:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t6, 0, 8);
    xsi_vlog_signed_bit_and(t6, 16, t4, 16, t7, 16);
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t6, 0, 0, 16);
    goto LAB15;

LAB13:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t6, 0, 8);
    xsi_vlog_signed_bit_or(t6, 16, t4, 16, t7, 16);
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t6, 0, 0, 16);
    goto LAB15;

LAB17:    *((unsigned int *)t6) = 1;
    goto LAB19;

LAB18:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(38, ng0);

LAB23:    xsi_set_current_line(39, ng0);
    t32 = ((char*)((ng2)));
    t33 = (t0 + 2088);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 1);
    goto LAB22;

LAB26:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB27;

LAB28:    *((unsigned int *)t8) = 1;
    goto LAB31;

LAB30:    t32 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB31;

LAB32:    t37 = (t0 + 1928);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t41 = (t39 + 4);
    t42 = (t40 + 4);
    t43 = *((unsigned int *)t39);
    t44 = *((unsigned int *)t40);
    t45 = (t43 ^ t44);
    t46 = *((unsigned int *)t41);
    t47 = *((unsigned int *)t42);
    t48 = (t46 ^ t47);
    t49 = (t45 | t48);
    t50 = *((unsigned int *)t41);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    t53 = (~(t52));
    t54 = (t49 & t53);
    if (t54 != 0)
        goto LAB38;

LAB35:    if (t52 != 0)
        goto LAB37;

LAB36:    *((unsigned int *)t11) = 1;

LAB38:    memset(t56, 0, 8);
    t57 = (t11 + 4);
    t58 = *((unsigned int *)t57);
    t59 = (~(t58));
    t60 = *((unsigned int *)t11);
    t61 = (t60 & t59);
    t62 = (t61 & 1U);
    if (t62 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t57) != 0)
        goto LAB41;

LAB42:    t65 = *((unsigned int *)t8);
    t66 = *((unsigned int *)t56);
    t67 = (t65 & t66);
    *((unsigned int *)t64) = t67;
    t68 = (t8 + 4);
    t69 = (t56 + 4);
    t70 = (t64 + 4);
    t71 = *((unsigned int *)t68);
    t72 = *((unsigned int *)t69);
    t73 = (t71 | t72);
    *((unsigned int *)t70) = t73;
    t74 = *((unsigned int *)t70);
    t75 = (t74 != 0);
    if (t75 == 1)
        goto LAB43;

LAB44:
LAB45:    goto LAB34;

LAB37:    t55 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t55) = 1;
    goto LAB38;

LAB39:    *((unsigned int *)t56) = 1;
    goto LAB42;

LAB41:    t63 = (t56 + 4);
    *((unsigned int *)t56) = 1;
    *((unsigned int *)t63) = 1;
    goto LAB42;

LAB43:    t76 = *((unsigned int *)t64);
    t77 = *((unsigned int *)t70);
    *((unsigned int *)t64) = (t76 | t77);
    t78 = (t8 + 4);
    t79 = (t56 + 4);
    t80 = *((unsigned int *)t8);
    t81 = (~(t80));
    t82 = *((unsigned int *)t78);
    t83 = (~(t82));
    t84 = *((unsigned int *)t56);
    t85 = (~(t84));
    t86 = *((unsigned int *)t79);
    t87 = (~(t86));
    t14 = (t81 & t83);
    t88 = (t85 & t87);
    t89 = (~(t14));
    t90 = (~(t88));
    t91 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t91 & t89);
    t92 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t92 & t90);
    t93 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t93 & t89);
    t94 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t94 & t90);
    goto LAB45;

LAB46:    xsi_set_current_line(42, ng0);

LAB49:    xsi_set_current_line(43, ng0);
    t101 = ((char*)((ng2)));
    t102 = (t0 + 2248);
    xsi_vlogvar_assign_value(t102, t101, 0, 0, 1);
    goto LAB48;

}


extern void work_m_00000000002767492723_0404745162_init()
{
	static char *pe[] = {(void *)Always_28_0};
	xsi_register_didat("work_m_00000000002767492723_0404745162", "isim/tbtb_isim_beh.exe.sim/work/m_00000000002767492723_0404745162.didat");
	xsi_register_executes(pe);
}
