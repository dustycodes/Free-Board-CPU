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
static const char *ng0 = "C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/final2/accel_state.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {11528U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {12544U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {11275U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {44288U, 0U};
static unsigned int ng10[] = {5U, 0U};
static unsigned int ng11[] = {8192U, 0U};
static int ng12[] = {7, 0};
static int ng13[] = {0, 0};
static int ng14[] = {15, 0};
static int ng15[] = {8, 0};
static unsigned int ng16[] = {51200U, 0U};



static void Initial_9_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(9, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3560);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 16);

LAB1:    return;
}

static void Initial_10_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(10, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 3720);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Initial_11_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(11, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3880);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 16);

LAB1:    return;
}

static void Initial_12_3(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(12, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4040);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 3);

LAB1:    return;
}

static void Always_32_4(char *t0)
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
    int t13;

LAB0:    t1 = (t0 + 6432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 7496);
    *((int *)t2) = 1;
    t3 = (t0 + 6464);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);

LAB5:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 2840U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(37, ng0);

LAB10:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 4040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB11:    t5 = ((char*)((ng2)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t13 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t13 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng8)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t13 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng10)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t13 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t13 == 1)
        goto LAB22;

LAB23:
LAB25:
LAB24:    xsi_set_current_line(63, ng0);

LAB33:    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3560);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3720);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB26:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(33, ng0);

LAB9:    xsi_set_current_line(34, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3560);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 16, 0LL);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3720);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB12:    xsi_set_current_line(39, ng0);

LAB27:    xsi_set_current_line(40, ng0);
    t11 = ((char*)((ng3)));
    t12 = (t0 + 3560);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 16, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3720);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB26;

LAB14:    xsi_set_current_line(43, ng0);

LAB28:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 3560);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3720);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB26;

LAB16:    xsi_set_current_line(47, ng0);

LAB29:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 3560);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3720);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB26;

LAB18:    xsi_set_current_line(51, ng0);

LAB30:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng9)));
    t5 = (t0 + 3560);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3720);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB26;

LAB20:    xsi_set_current_line(55, ng0);

LAB31:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 3560);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3720);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB26;

LAB22:    xsi_set_current_line(59, ng0);

LAB32:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 3560);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3720);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB26;

}

static void Always_71_5(char *t0)
{
    char t13[8];
    char t37[8];
    char t38[8];
    char t39[8];
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
    char *t14;
    char *t15;
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
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    int t47;
    char *t48;
    unsigned int t49;
    int t50;
    int t51;
    char *t52;
    unsigned int t53;
    int t54;
    int t55;
    unsigned int t56;
    int t57;
    unsigned int t58;
    unsigned int t59;
    int t60;
    int t61;

LAB0:    t1 = (t0 + 6680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 7512);
    *((int *)t2) = 1;
    t3 = (t0 + 6712);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(71, ng0);

LAB5:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 2840U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3160U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4520);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB34;

LAB35:
LAB36:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(72, ng0);

LAB9:    xsi_set_current_line(73, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 4040);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(76, ng0);

LAB13:    xsi_set_current_line(77, ng0);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng8)));
    memset(t13, 0, 8);
    t14 = (t11 + 4);
    t15 = (t12 + 4);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 ^ t17);
    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t15);
    t21 = (t19 ^ t20);
    t22 = (t18 | t21);
    t23 = *((unsigned int *)t14);
    t24 = *((unsigned int *)t15);
    t25 = (t23 | t24);
    t26 = (~(t25));
    t27 = (t22 & t26);
    if (t27 != 0)
        goto LAB17;

LAB14:    if (t25 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t13) = 1;

LAB17:    t29 = (t13 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (~(t30));
    t32 = *((unsigned int *)t13);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t16 = (t9 ^ t10);
    t17 = (t8 | t16);
    t18 = *((unsigned int *)t11);
    t19 = *((unsigned int *)t12);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB27;

LAB24:    if (t20 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t13) = 1;

LAB27:    t15 = (t13 + 4);
    t23 = *((unsigned int *)t15);
    t24 = (~(t23));
    t25 = *((unsigned int *)t13);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB28;

LAB29:
LAB30:
LAB20:    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB12;

LAB16:    t28 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(77, ng0);

LAB21:    xsi_set_current_line(78, ng0);
    t35 = (t0 + 3000U);
    t36 = *((char **)t35);
    t35 = (t0 + 3880);
    t40 = (t0 + 3880);
    t41 = (t40 + 72U);
    t42 = *((char **)t41);
    t43 = ((char*)((ng12)));
    t44 = ((char*)((ng13)));
    xsi_vlog_convert_partindices(t37, t38, t39, ((int*)(t42)), 2, t43, 32, 1, t44, 32, 1);
    t45 = (t37 + 4);
    t46 = *((unsigned int *)t45);
    t47 = (!(t46));
    t48 = (t38 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (!(t49));
    t51 = (t47 && t50);
    t52 = (t39 + 4);
    t53 = *((unsigned int *)t52);
    t54 = (!(t53));
    t55 = (t51 && t54);
    if (t55 == 1)
        goto LAB22;

LAB23:    goto LAB20;

LAB22:    t56 = *((unsigned int *)t39);
    t57 = (t56 + 0);
    t58 = *((unsigned int *)t37);
    t59 = *((unsigned int *)t38);
    t60 = (t58 - t59);
    t61 = (t60 + 1);
    xsi_vlogvar_wait_assign_value(t35, t36, t57, *((unsigned int *)t38), t61, 0LL);
    goto LAB23;

LAB26:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB27;

LAB28:    xsi_set_current_line(80, ng0);

LAB31:    xsi_set_current_line(81, ng0);
    t28 = (t0 + 3000U);
    t29 = *((char **)t28);
    t28 = (t0 + 3880);
    t35 = (t0 + 3880);
    t36 = (t35 + 72U);
    t40 = *((char **)t36);
    t41 = ((char*)((ng14)));
    t42 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t37, t38, t39, ((int*)(t40)), 2, t41, 32, 1, t42, 32, 1);
    t43 = (t37 + 4);
    t30 = *((unsigned int *)t43);
    t47 = (!(t30));
    t44 = (t38 + 4);
    t31 = *((unsigned int *)t44);
    t50 = (!(t31));
    t51 = (t47 && t50);
    t45 = (t39 + 4);
    t32 = *((unsigned int *)t45);
    t54 = (!(t32));
    t55 = (t51 && t54);
    if (t55 == 1)
        goto LAB32;

LAB33:    goto LAB30;

LAB32:    t33 = *((unsigned int *)t39);
    t57 = (t33 + 0);
    t34 = *((unsigned int *)t37);
    t46 = *((unsigned int *)t38);
    t60 = (t34 - t46);
    t61 = (t60 + 1);
    xsi_vlogvar_wait_assign_value(t28, t29, t57, *((unsigned int *)t38), t61, 0LL);
    goto LAB33;

LAB34:    xsi_set_current_line(86, ng0);
    t11 = (t0 + 4200);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t0 + 4040);
    xsi_vlogvar_wait_assign_value(t15, t14, 0, 0, 3, 0LL);
    goto LAB36;

}

static void Always_89_6(char *t0)
{
    char t13[8];
    char t32[8];
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;

LAB0:    t1 = (t0 + 6928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 7528);
    *((int *)t2) = 1;
    t3 = (t0 + 6960);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(89, ng0);

LAB5:    xsi_set_current_line(90, ng0);
    t4 = (t0 + 2840U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB13;

LAB10:    if (t18 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t13) = 1;

LAB13:    t22 = (t13 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t13);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(104, ng0);

LAB27:    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);

LAB16:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(90, ng0);

LAB9:    xsi_set_current_line(91, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB8;

LAB12:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB13;

LAB14:    xsi_set_current_line(94, ng0);

LAB17:    xsi_set_current_line(95, ng0);
    t28 = (t0 + 4360);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng16)));
    memset(t32, 0, 8);
    t33 = (t30 + 4);
    t34 = (t31 + 4);
    t35 = *((unsigned int *)t30);
    t36 = *((unsigned int *)t31);
    t37 = (t35 ^ t36);
    t38 = *((unsigned int *)t33);
    t39 = *((unsigned int *)t34);
    t40 = (t38 ^ t39);
    t41 = (t37 | t40);
    t42 = *((unsigned int *)t33);
    t43 = *((unsigned int *)t34);
    t44 = (t42 | t43);
    t45 = (~(t44));
    t46 = (t41 & t45);
    if (t46 != 0)
        goto LAB21;

LAB18:    if (t44 != 0)
        goto LAB20;

LAB19:    *((unsigned int *)t32) = 1;

LAB21:    t48 = (t32 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (~(t49));
    t51 = *((unsigned int *)t32);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB22;

LAB23:    xsi_set_current_line(99, ng0);

LAB26:    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4360);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 4360);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 32, 0LL);

LAB24:    goto LAB16;

LAB20:    t47 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB21;

LAB22:    xsi_set_current_line(95, ng0);

LAB25:    xsi_set_current_line(96, ng0);
    t54 = ((char*)((ng2)));
    t55 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t55, t54, 0, 0, 1, 0LL);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB24;

}

static void Always_110_7(char *t0)
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
    int t13;

LAB0:    t1 = (t0 + 7176U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 7544);
    *((int *)t2) = 1;
    t3 = (t0 + 7208);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(110, ng0);

LAB5:    xsi_set_current_line(111, ng0);
    t4 = (t0 + 2840U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 4040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB9:    t5 = ((char*)((ng2)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t13 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t13 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng8)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t13 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng10)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t13 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t13 == 1)
        goto LAB20;

LAB21:
LAB23:
LAB22:    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB24:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(112, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 4200);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 3);
    goto LAB8;

LAB10:    xsi_set_current_line(115, ng0);
    t11 = ((char*)((ng4)));
    t12 = (t0 + 4200);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 3);
    goto LAB24;

LAB12:    xsi_set_current_line(116, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 4200);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    goto LAB24;

LAB14:    xsi_set_current_line(117, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 4200);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    goto LAB24;

LAB16:    xsi_set_current_line(118, ng0);
    t3 = ((char*)((ng10)));
    t5 = (t0 + 4200);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    goto LAB24;

LAB18:    xsi_set_current_line(119, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 4200);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    goto LAB24;

LAB20:    xsi_set_current_line(120, ng0);
    t3 = (t0 + 4200);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);
    t12 = (t0 + 4200);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 3);
    goto LAB24;

}


extern void work_m_00000000001679640218_0066700001_init()
{
	static char *pe[] = {(void *)Initial_9_0,(void *)Initial_10_1,(void *)Initial_11_2,(void *)Initial_12_3,(void *)Always_32_4,(void *)Always_71_5,(void *)Always_89_6,(void *)Always_110_7};
	xsi_register_didat("work_m_00000000001679640218_0066700001", "isim/test_accelerometer_isim_beh.exe.sim/work/m_00000000001679640218_0066700001.didat");
	xsi_register_executes(pe);
}
