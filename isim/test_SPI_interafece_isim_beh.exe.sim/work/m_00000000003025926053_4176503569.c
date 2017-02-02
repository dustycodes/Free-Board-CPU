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
static const char *ng0 = "C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/final2/SPI_interface.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {18U, 0U};
static unsigned int ng4[] = {19U, 0U};



static void Initial_17_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(17, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3048);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Initial_21_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 3528);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 9);

LAB1:    return;
}

static void Initial_22_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(22, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 3688);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 18);

LAB1:    return;
}

static void Always_24_3(char *t0)
{
    char t13[8];
    char t21[8];
    char t45[8];
    char t46[8];
    char t69[8];
    char t71[8];
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
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    int t55;
    int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t70;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;

LAB0:    t1 = (t0 + 5352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 6416);
    *((int *)t2) = 1;
    t3 = (t0 + 5384);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(24, ng0);

LAB5:    xsi_set_current_line(25, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(33, ng0);

LAB10:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB14;

LAB12:    if (*((unsigned int *)t2) == 0)
        goto LAB11;

LAB13:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;

LAB14:    t5 = (t13 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (~(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB70;

LAB71:
LAB72:
LAB17:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(25, ng0);

LAB9:    xsi_set_current_line(26, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(27, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(28, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    xsi_set_current_line(29, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 18, 0LL);
    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB11:    *((unsigned int *)t13) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(34, ng0);

LAB18:    xsi_set_current_line(39, ng0);
    t11 = (t0 + 3368);
    t12 = (t11 + 56U);
    t19 = *((char **)t12);
    t20 = ((char*)((ng2)));
    memset(t21, 0, 8);
    t22 = (t19 + 4);
    t23 = (t20 + 4);
    t24 = *((unsigned int *)t19);
    t25 = *((unsigned int *)t20);
    t26 = (t24 ^ t25);
    t27 = *((unsigned int *)t22);
    t28 = *((unsigned int *)t23);
    t29 = (t27 ^ t28);
    t30 = (t26 | t29);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t23);
    t33 = (t31 | t32);
    t34 = (~(t33));
    t35 = (t30 & t34);
    if (t35 != 0)
        goto LAB22;

LAB19:    if (t33 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t21) = 1;

LAB22:    t37 = (t21 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (~(t38));
    t40 = *((unsigned int *)t21);
    t41 = (t40 & t39);
    t42 = (t41 != 0);
    if (t42 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
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
    t24 = (~(t18));
    t25 = (t15 & t24);
    if (t25 != 0)
        goto LAB30;

LAB27:    if (t18 != 0)
        goto LAB29;

LAB28:    *((unsigned int *)t13) = 1;

LAB30:    t20 = (t13 + 4);
    t26 = *((unsigned int *)t20);
    t27 = (~(t26));
    t28 = *((unsigned int *)t13);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
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
    t24 = (~(t18));
    t25 = (t15 & t24);
    if (t25 != 0)
        goto LAB38;

LAB35:    if (t18 != 0)
        goto LAB37;

LAB36:    *((unsigned int *)t13) = 1;

LAB38:    t20 = (t13 + 4);
    t26 = *((unsigned int *)t20);
    t27 = (~(t26));
    t28 = *((unsigned int *)t13);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB39;

LAB40:
LAB41:
LAB33:
LAB25:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t2) != 0)
        goto LAB45;

LAB46:    t5 = (t13 + 4);
    t14 = *((unsigned int *)t13);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB47;

LAB48:    memcpy(t46, t13, 8);

LAB49:    t63 = (t46 + 4);
    t64 = *((unsigned int *)t63);
    t65 = (~(t64));
    t66 = *((unsigned int *)t46);
    t67 = (t66 & t65);
    t68 = (t67 != 0);
    if (t68 > 0)
        goto LAB62;

LAB63:
LAB64:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB66;

LAB67:
LAB68:    goto LAB17;

LAB21:    t36 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB22;

LAB23:    xsi_set_current_line(39, ng0);

LAB26:    xsi_set_current_line(40, ng0);
    t43 = ((char*)((ng2)));
    t44 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t44, t43, 0, 0, 1, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 18, 0LL);
    goto LAB25;

LAB29:    t19 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB30;

LAB31:    xsi_set_current_line(44, ng0);

LAB34:    xsi_set_current_line(45, ng0);
    t22 = ((char*)((ng2)));
    t23 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t23, t22, 0, 0, 1, 0LL);
    goto LAB33;

LAB37:    t19 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB38;

LAB39:    xsi_set_current_line(47, ng0);

LAB42:    xsi_set_current_line(48, ng0);
    t22 = ((char*)((ng1)));
    t23 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t23, t22, 0, 0, 1, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB41;

LAB43:    *((unsigned int *)t13) = 1;
    goto LAB46;

LAB45:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB46;

LAB47:    t11 = (t0 + 3368);
    t12 = (t11 + 56U);
    t19 = *((char **)t12);
    t20 = ((char*)((ng1)));
    memset(t21, 0, 8);
    t22 = (t19 + 4);
    if (*((unsigned int *)t22) != 0)
        goto LAB51;

LAB50:    t23 = (t20 + 4);
    if (*((unsigned int *)t23) != 0)
        goto LAB51;

LAB54:    if (*((unsigned int *)t19) > *((unsigned int *)t20))
        goto LAB52;

LAB53:    memset(t45, 0, 8);
    t37 = (t21 + 4);
    t17 = *((unsigned int *)t37);
    t18 = (~(t17));
    t24 = *((unsigned int *)t21);
    t25 = (t24 & t18);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB55;

LAB56:    if (*((unsigned int *)t37) != 0)
        goto LAB57;

LAB58:    t27 = *((unsigned int *)t13);
    t28 = *((unsigned int *)t45);
    t29 = (t27 & t28);
    *((unsigned int *)t46) = t29;
    t44 = (t13 + 4);
    t47 = (t45 + 4);
    t48 = (t46 + 4);
    t30 = *((unsigned int *)t44);
    t31 = *((unsigned int *)t47);
    t32 = (t30 | t31);
    *((unsigned int *)t48) = t32;
    t33 = *((unsigned int *)t48);
    t34 = (t33 != 0);
    if (t34 == 1)
        goto LAB59;

LAB60:
LAB61:    goto LAB49;

LAB51:    t36 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB53;

LAB52:    *((unsigned int *)t21) = 1;
    goto LAB53;

LAB55:    *((unsigned int *)t45) = 1;
    goto LAB58;

LAB57:    t43 = (t45 + 4);
    *((unsigned int *)t45) = 1;
    *((unsigned int *)t43) = 1;
    goto LAB58;

LAB59:    t35 = *((unsigned int *)t46);
    t38 = *((unsigned int *)t48);
    *((unsigned int *)t46) = (t35 | t38);
    t49 = (t13 + 4);
    t50 = (t45 + 4);
    t39 = *((unsigned int *)t13);
    t40 = (~(t39));
    t41 = *((unsigned int *)t49);
    t42 = (~(t41));
    t51 = *((unsigned int *)t45);
    t52 = (~(t51));
    t53 = *((unsigned int *)t50);
    t54 = (~(t53));
    t55 = (t40 & t42);
    t56 = (t52 & t54);
    t57 = (~(t55));
    t58 = (~(t56));
    t59 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t59 & t57);
    t60 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t60 & t58);
    t61 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t61 & t57);
    t62 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t62 & t58);
    goto LAB61;

LAB62:    xsi_set_current_line(52, ng0);

LAB65:    xsi_set_current_line(54, ng0);
    t70 = ((char*)((ng2)));
    t72 = (t0 + 3688);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    memset(t71, 0, 8);
    t75 = (t71 + 4);
    t76 = (t74 + 4);
    t77 = *((unsigned int *)t74);
    t78 = (t77 >> 0);
    *((unsigned int *)t71) = t78;
    t79 = *((unsigned int *)t76);
    t80 = (t79 >> 0);
    *((unsigned int *)t75) = t80;
    t81 = *((unsigned int *)t71);
    *((unsigned int *)t71) = (t81 & 131071U);
    t82 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t82 & 131071U);
    xsi_vlogtype_concat(t69, 18, 18, 2U, t71, 17, t70, 1);
    t83 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t83, t69, 0, 0, 18, 0LL);
    goto LAB64;

LAB66:    xsi_set_current_line(57, ng0);

LAB69:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = (t0 + 3528);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    memset(t21, 0, 8);
    t19 = (t21 + 4);
    t20 = (t12 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (t14 >> 0);
    *((unsigned int *)t21) = t15;
    t16 = *((unsigned int *)t20);
    t17 = (t16 >> 0);
    *((unsigned int *)t19) = t17;
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t18 & 255U);
    t24 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t24 & 255U);
    xsi_vlogtype_concat(t13, 9, 9, 2U, t21, 8, t5, 1);
    t22 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t22, t13, 0, 0, 9, 0LL);
    goto LAB68;

LAB70:    xsi_set_current_line(61, ng0);

LAB73:    xsi_set_current_line(62, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    goto LAB72;

}

static void Always_67_4(char *t0)
{
    char t6[8];
    char t20[8];
    char t27[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;

LAB0:    t1 = (t0 + 5600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 6432);
    *((int *)t2) = 1;
    t3 = (t0 + 5632);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(67, ng0);

LAB5:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t4) != 0)
        goto LAB8;

LAB9:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = (!(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB10;

LAB11:    memcpy(t27, t6, 8);

LAB12:    t55 = (t27 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t27);
    t59 = (t58 & t57);
    t60 = (t59 != 0);
    if (t60 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB23;

LAB24:
LAB25:
LAB22:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB8:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB9;

LAB10:    t18 = (t0 + 1208U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t18 = (t19 + 4);
    t21 = *((unsigned int *)t18);
    t22 = (~(t21));
    t23 = *((unsigned int *)t19);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t18) != 0)
        goto LAB15;

LAB16:    t28 = *((unsigned int *)t6);
    t29 = *((unsigned int *)t20);
    t30 = (t28 | t29);
    *((unsigned int *)t27) = t30;
    t31 = (t6 + 4);
    t32 = (t20 + 4);
    t33 = (t27 + 4);
    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB12;

LAB13:    *((unsigned int *)t20) = 1;
    goto LAB16;

LAB15:    t26 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB16;

LAB17:    t39 = *((unsigned int *)t27);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t27) = (t39 | t40);
    t41 = (t6 + 4);
    t42 = (t20 + 4);
    t43 = *((unsigned int *)t41);
    t44 = (~(t43));
    t45 = *((unsigned int *)t6);
    t46 = (t45 & t44);
    t47 = *((unsigned int *)t42);
    t48 = (~(t47));
    t49 = *((unsigned int *)t20);
    t50 = (t49 & t48);
    t51 = (~(t46));
    t52 = (~(t50));
    t53 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t53 & t51);
    t54 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t54 & t52);
    goto LAB19;

LAB20:    xsi_set_current_line(69, ng0);
    t61 = ((char*)((ng2)));
    t62 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t62, t61, 0, 0, 5, 0LL);
    goto LAB22;

LAB23:    xsi_set_current_line(71, ng0);
    t4 = (t0 + 3368);
    t5 = (t4 + 56U);
    t12 = *((char **)t5);
    t13 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 5, t12, 5, t13, 5);
    t18 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t18, t6, 0, 0, 5, 0LL);
    goto LAB25;

}

static void Cont_74_5(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 5848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3528);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t3 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 255U);
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 255U);
    t14 = (t0 + 6544);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memset(t18, 0, 8);
    t19 = 255U;
    t20 = t19;
    t21 = (t3 + 4);
    t22 = *((unsigned int *)t3);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t21);
    t20 = (t20 & t23);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 | t19);
    t26 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t26 | t20);
    xsi_driver_vfirst_trans(t14, 0, 7);
    t27 = (t0 + 6448);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Cont_75_6(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 6096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t5, 0, 8);
    t6 = (t5 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 17);
    t10 = (t9 & 1);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 17);
    t13 = (t12 & 1);
    *((unsigned int *)t6) = t13;
    t14 = (t0 + 6608);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memset(t18, 0, 8);
    t19 = 1U;
    t20 = t19;
    t21 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t21);
    t20 = (t20 & t23);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 | t19);
    t26 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t26 | t20);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t27 = (t0 + 6464);
    *((int *)t27) = 1;

LAB1:    return;
}


extern void work_m_00000000003025926053_4176503569_init()
{
	static char *pe[] = {(void *)Initial_17_0,(void *)Initial_21_1,(void *)Initial_22_2,(void *)Always_24_3,(void *)Always_67_4,(void *)Cont_74_5,(void *)Cont_75_6};
	xsi_register_didat("work_m_00000000003025926053_4176503569", "isim/test_SPI_interafece_isim_beh.exe.sim/work/m_00000000003025926053_4176503569.didat");
	xsi_register_executes(pe);
}
