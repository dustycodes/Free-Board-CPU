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
static const char *ng0 = "C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/final2/SCLK_gen.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {100U, 0U};
static unsigned int ng4[] = {52U, 0U};
static unsigned int ng5[] = {48U, 0U};



static void Always_16_0(char *t0)
{
    char t13[8];
    char t35[8];
    char t57[8];
    char t58[8];
    char t85[8];
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
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    int t69;
    int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    char *t84;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;

LAB0:    t1 = (t0 + 3624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(16, ng0);
    t2 = (t0 + 3944);
    *((int *)t2) = 1;
    t3 = (t0 + 3656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(16, ng0);

LAB5:    xsi_set_current_line(17, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(25, ng0);

LAB10:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 2544);
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
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB14;

LAB11:    if (t18 != 0)
        goto LAB13;

LAB12:    *((unsigned int *)t13) = 1;

LAB14:    t22 = (t13 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t13);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(41, ng0);

LAB37:    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2064);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2544);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 7, t4, 7, t5, 7);
    t11 = (t0 + 2544);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 7, 0LL);

LAB17:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t5) != 0)
        goto LAB40;

LAB41:    t12 = (t13 + 4);
    t14 = *((unsigned int *)t13);
    t15 = *((unsigned int *)t12);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB42;

LAB43:    memcpy(t58, t13, 8);

LAB44:    t77 = (t58 + 4);
    t78 = *((unsigned int *)t77);
    t79 = (~(t78));
    t80 = *((unsigned int *)t58);
    t81 = (t80 & t79);
    t82 = (t81 != 0);
    if (t82 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2224);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB58:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB62;

LAB60:    if (*((unsigned int *)t5) == 0)
        goto LAB59;

LAB61:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;

LAB62:    memset(t35, 0, 8);
    t12 = (t13 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (~(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB63;

LAB64:    if (*((unsigned int *)t12) != 0)
        goto LAB65;

LAB66:    t22 = (t35 + 4);
    t19 = *((unsigned int *)t35);
    t20 = *((unsigned int *)t22);
    t23 = (t19 || t20);
    if (t23 > 0)
        goto LAB67;

LAB68:    memcpy(t85, t35, 8);

LAB69:    t84 = (t85 + 4);
    t86 = *((unsigned int *)t84);
    t87 = (~(t86));
    t88 = *((unsigned int *)t85);
    t89 = (t88 & t87);
    t90 = (t89 != 0);
    if (t90 > 0)
        goto LAB81;

LAB82:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2384);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB83:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(17, ng0);

LAB9:    xsi_set_current_line(18, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(19, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2224);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(20, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2384);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(21, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2064);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(22, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2544);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 7, 0LL);
    xsi_set_current_line(23, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2704);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB13:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(26, ng0);

LAB18:    xsi_set_current_line(27, ng0);
    t28 = (t0 + 1504U);
    t29 = *((char **)t28);
    t28 = (t29 + 4);
    t30 = *((unsigned int *)t28);
    t31 = (~(t30));
    t32 = *((unsigned int *)t29);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB21:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2704);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB31;

LAB29:    if (*((unsigned int *)t5) == 0)
        goto LAB28;

LAB30:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;

LAB31:    t12 = (t13 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (~(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB32;

LAB33:    xsi_set_current_line(35, ng0);

LAB36:    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2064);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2704);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB34:    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2544);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 7, 0LL);
    goto LAB17;

LAB19:    xsi_set_current_line(28, ng0);
    t36 = (t0 + 1904);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    memset(t35, 0, 8);
    t39 = (t38 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (~(t40));
    t42 = *((unsigned int *)t38);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB25;

LAB23:    if (*((unsigned int *)t39) == 0)
        goto LAB22;

LAB24:    t45 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t45) = 1;

LAB25:    t46 = (t35 + 4);
    t47 = (t38 + 4);
    t48 = *((unsigned int *)t38);
    t49 = (~(t48));
    *((unsigned int *)t35) = t49;
    *((unsigned int *)t46) = 0;
    if (*((unsigned int *)t47) != 0)
        goto LAB27;

LAB26:    t54 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t54 & 1U);
    t55 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t55 & 1U);
    t56 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t56, t35, 0, 0, 1, 0LL);
    goto LAB21;

LAB22:    *((unsigned int *)t35) = 1;
    goto LAB25;

LAB27:    t50 = *((unsigned int *)t35);
    t51 = *((unsigned int *)t47);
    *((unsigned int *)t35) = (t50 | t51);
    t52 = *((unsigned int *)t46);
    t53 = *((unsigned int *)t47);
    *((unsigned int *)t46) = (t52 | t53);
    goto LAB26;

LAB28:    *((unsigned int *)t13) = 1;
    goto LAB31;

LAB32:    xsi_set_current_line(31, ng0);

LAB35:    xsi_set_current_line(32, ng0);
    t21 = ((char*)((ng1)));
    t22 = (t0 + 2064);
    xsi_vlogvar_wait_assign_value(t22, t21, 0, 0, 1, 0LL);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2704);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB34;

LAB38:    *((unsigned int *)t13) = 1;
    goto LAB41;

LAB40:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB41;

LAB42:    t21 = (t0 + 2544);
    t22 = (t21 + 56U);
    t28 = *((char **)t22);
    t29 = ((char*)((ng4)));
    memset(t35, 0, 8);
    t36 = (t28 + 4);
    t37 = (t29 + 4);
    t17 = *((unsigned int *)t28);
    t18 = *((unsigned int *)t29);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t36);
    t23 = *((unsigned int *)t37);
    t24 = (t20 ^ t23);
    t25 = (t19 | t24);
    t26 = *((unsigned int *)t36);
    t27 = *((unsigned int *)t37);
    t30 = (t26 | t27);
    t31 = (~(t30));
    t32 = (t25 & t31);
    if (t32 != 0)
        goto LAB48;

LAB45:    if (t30 != 0)
        goto LAB47;

LAB46:    *((unsigned int *)t35) = 1;

LAB48:    memset(t57, 0, 8);
    t39 = (t35 + 4);
    t33 = *((unsigned int *)t39);
    t34 = (~(t33));
    t40 = *((unsigned int *)t35);
    t41 = (t40 & t34);
    t42 = (t41 & 1U);
    if (t42 != 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t39) != 0)
        goto LAB51;

LAB52:    t43 = *((unsigned int *)t13);
    t44 = *((unsigned int *)t57);
    t48 = (t43 & t44);
    *((unsigned int *)t58) = t48;
    t46 = (t13 + 4);
    t47 = (t57 + 4);
    t56 = (t58 + 4);
    t49 = *((unsigned int *)t46);
    t50 = *((unsigned int *)t47);
    t51 = (t49 | t50);
    *((unsigned int *)t56) = t51;
    t52 = *((unsigned int *)t56);
    t53 = (t52 != 0);
    if (t53 == 1)
        goto LAB53;

LAB54:
LAB55:    goto LAB44;

LAB47:    t38 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB48;

LAB49:    *((unsigned int *)t57) = 1;
    goto LAB52;

LAB51:    t45 = (t57 + 4);
    *((unsigned int *)t57) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB52;

LAB53:    t54 = *((unsigned int *)t58);
    t55 = *((unsigned int *)t56);
    *((unsigned int *)t58) = (t54 | t55);
    t59 = (t13 + 4);
    t60 = (t57 + 4);
    t61 = *((unsigned int *)t13);
    t62 = (~(t61));
    t63 = *((unsigned int *)t59);
    t64 = (~(t63));
    t65 = *((unsigned int *)t57);
    t66 = (~(t65));
    t67 = *((unsigned int *)t60);
    t68 = (~(t67));
    t69 = (t62 & t64);
    t70 = (t66 & t68);
    t71 = (~(t69));
    t72 = (~(t70));
    t73 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t73 & t71);
    t74 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t74 & t72);
    t75 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t75 & t71);
    t76 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t76 & t72);
    goto LAB55;

LAB56:    xsi_set_current_line(47, ng0);
    t83 = ((char*)((ng1)));
    t84 = (t0 + 2224);
    xsi_vlogvar_wait_assign_value(t84, t83, 0, 0, 1, 0LL);
    goto LAB58;

LAB59:    *((unsigned int *)t13) = 1;
    goto LAB62;

LAB63:    *((unsigned int *)t35) = 1;
    goto LAB66;

LAB65:    t21 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB66;

LAB67:    t28 = (t0 + 2544);
    t29 = (t28 + 56U);
    t36 = *((char **)t29);
    t37 = ((char*)((ng5)));
    memset(t57, 0, 8);
    t38 = (t36 + 4);
    t39 = (t37 + 4);
    t24 = *((unsigned int *)t36);
    t25 = *((unsigned int *)t37);
    t26 = (t24 ^ t25);
    t27 = *((unsigned int *)t38);
    t30 = *((unsigned int *)t39);
    t31 = (t27 ^ t30);
    t32 = (t26 | t31);
    t33 = *((unsigned int *)t38);
    t34 = *((unsigned int *)t39);
    t40 = (t33 | t34);
    t41 = (~(t40));
    t42 = (t32 & t41);
    if (t42 != 0)
        goto LAB73;

LAB70:    if (t40 != 0)
        goto LAB72;

LAB71:    *((unsigned int *)t57) = 1;

LAB73:    memset(t58, 0, 8);
    t46 = (t57 + 4);
    t43 = *((unsigned int *)t46);
    t44 = (~(t43));
    t48 = *((unsigned int *)t57);
    t49 = (t48 & t44);
    t50 = (t49 & 1U);
    if (t50 != 0)
        goto LAB74;

LAB75:    if (*((unsigned int *)t46) != 0)
        goto LAB76;

LAB77:    t51 = *((unsigned int *)t35);
    t52 = *((unsigned int *)t58);
    t53 = (t51 & t52);
    *((unsigned int *)t85) = t53;
    t56 = (t35 + 4);
    t59 = (t58 + 4);
    t60 = (t85 + 4);
    t54 = *((unsigned int *)t56);
    t55 = *((unsigned int *)t59);
    t61 = (t54 | t55);
    *((unsigned int *)t60) = t61;
    t62 = *((unsigned int *)t60);
    t63 = (t62 != 0);
    if (t63 == 1)
        goto LAB78;

LAB79:
LAB80:    goto LAB69;

LAB72:    t45 = (t57 + 4);
    *((unsigned int *)t57) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB73;

LAB74:    *((unsigned int *)t58) = 1;
    goto LAB77;

LAB76:    t47 = (t58 + 4);
    *((unsigned int *)t58) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB77;

LAB78:    t64 = *((unsigned int *)t85);
    t65 = *((unsigned int *)t60);
    *((unsigned int *)t85) = (t64 | t65);
    t77 = (t35 + 4);
    t83 = (t58 + 4);
    t66 = *((unsigned int *)t35);
    t67 = (~(t66));
    t68 = *((unsigned int *)t77);
    t71 = (~(t68));
    t72 = *((unsigned int *)t58);
    t73 = (~(t72));
    t74 = *((unsigned int *)t83);
    t75 = (~(t74));
    t69 = (t67 & t71);
    t70 = (t73 & t75);
    t76 = (~(t69));
    t78 = (~(t70));
    t79 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t79 & t76);
    t80 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t80 & t78);
    t81 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t81 & t76);
    t82 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t82 & t78);
    goto LAB80;

LAB81:    xsi_set_current_line(51, ng0);
    t91 = ((char*)((ng1)));
    t92 = (t0 + 2384);
    xsi_vlogvar_wait_assign_value(t92, t91, 0, 0, 1, 0LL);
    goto LAB83;

}


extern void work_m_00000000001365879415_1180709591_init()
{
	static char *pe[] = {(void *)Always_16_0};
	xsi_register_didat("work_m_00000000001365879415_1180709591", "isim/test_accelerometer_isim_beh.exe.sim/work/m_00000000001365879415_1180709591.didat");
	xsi_register_executes(pe);
}
