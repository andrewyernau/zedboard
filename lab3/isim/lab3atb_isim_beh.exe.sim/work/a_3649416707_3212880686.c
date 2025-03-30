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
static const char *ng0 = "E:/Universidad/Telematica/4o/SOCS-FPGAS/lab3/lab3a.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3143221075_1035706684(char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3469716711_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_3472088553_1035706684(char *, char *, char *, char *, char *);


static void work_a_3649416707_3212880686_p_0(char *t0)
{
    char t20[16];
    char t25[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;

LAB0:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2592U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5160);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(109, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t5 = t1;
    memset(t5, (unsigned char)2, 12U);
    t6 = (t0 + 5256);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 12U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(112, ng0);
    t1 = xsi_get_transient_memory(7U);
    memset(t1, 0, 7U);
    t2 = t1;
    memset(t2, (unsigned char)2, 7U);
    t5 = (t0 + 5320);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 8836);
    t5 = (t0 + 5384);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 8846);
    t5 = (t0 + 5448);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 10U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(148, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t2 = t1;
    memset(t2, (unsigned char)2, 12U);
    t5 = (t0 + 5256);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 12U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(149, ng0);
    t1 = xsi_get_transient_memory(7U);
    memset(t1, 0, 7U);
    t2 = t1;
    memset(t2, (unsigned char)2, 7U);
    t5 = (t0 + 5320);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast(t5);

LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 2632U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 2472U);
    t7 = *((char **)t2);
    t15 = *((unsigned char *)t7);
    t16 = (t15 == (unsigned char)3);
    if (t16 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 8644U);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    t5 = (t0 + 8676U);
    t4 = ieee_p_1242562249_sub_3472088553_1035706684(IEEE_P_1242562249, t2, t1, t6, t5);
    if (t4 == 1)
        goto LAB19;

LAB20:    t3 = (unsigned char)0;

LAB21:    if (t3 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(143, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t2 = t1;
    memset(t2, (unsigned char)2, 12U);
    t5 = (t0 + 5256);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 12U);
    xsi_driver_first_trans_fast_port(t5);

LAB17:
LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(120, ng0);
    t2 = xsi_get_transient_memory(12U);
    memset(t2, 0, 12U);
    t8 = t2;
    memset(t8, (unsigned char)2, 12U);
    t9 = (t0 + 5256);
    t10 = (t9 + 56U);
    t17 = *((char **)t10);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t2, 12U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB14;

LAB16:    xsi_set_current_line(126, ng0);
    t18 = (t0 + 2312U);
    t19 = *((char **)t18);
    t18 = (t0 + 8660U);
    t21 = (t0 + 2952U);
    t22 = *((char **)t21);
    t21 = (t0 + 8692U);
    t13 = ieee_p_1242562249_sub_3472088553_1035706684(IEEE_P_1242562249, t19, t18, t22, t21);
    if (t13 == 1)
        goto LAB25;

LAB26:    t12 = (unsigned char)0;

LAB27:    if (t12 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(139, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t2 = t1;
    memset(t2, (unsigned char)2, 12U);
    t5 = (t0 + 5256);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 12U);
    xsi_driver_first_trans_fast_port(t5);

LAB23:    goto LAB17;

LAB19:    t7 = (t0 + 2152U);
    t8 = *((char **)t7);
    t7 = (t0 + 8644U);
    t9 = (t0 + 2792U);
    t10 = *((char **)t9);
    t9 = (t0 + 8676U);
    t17 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t20, t10, t9, 8);
    t11 = ieee_p_1242562249_sub_3469716711_1035706684(IEEE_P_1242562249, t8, t7, t17, t20);
    t3 = t11;
    goto LAB21;

LAB22:    xsi_set_current_line(133, ng0);
    t29 = (t0 + 3112U);
    t30 = *((char **)t29);
    t29 = (t0 + 5256);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t30, 12U);
    xsi_driver_first_trans_fast_port(t29);
    xsi_set_current_line(134, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 8724U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t20, t2, t1, 1);
    t6 = (t20 + 12U);
    t35 = *((unsigned int *)t6);
    t36 = (1U * t35);
    t3 = (7U != t36);
    if (t3 == 1)
        goto LAB28;

LAB29:    t7 = (t0 + 5320);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t17 = *((char **)t10);
    memcpy(t17, t5, 7U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(135, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 8724U);
    t3 = ieee_p_1242562249_sub_3143221075_1035706684(IEEE_P_1242562249, t2, t1, 80);
    if (t3 != 0)
        goto LAB30;

LAB32:
LAB31:    goto LAB23;

LAB25:    t23 = (t0 + 2312U);
    t24 = *((char **)t23);
    t23 = (t0 + 8660U);
    t26 = (t0 + 2952U);
    t27 = *((char **)t26);
    t26 = (t0 + 8692U);
    t28 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t25, t27, t26, 8);
    t14 = ieee_p_1242562249_sub_3469716711_1035706684(IEEE_P_1242562249, t24, t23, t28, t25);
    t12 = t14;
    goto LAB27;

LAB28:    xsi_size_not_matching(7U, t36, 0);
    goto LAB29;

LAB30:    xsi_set_current_line(136, ng0);
    t5 = xsi_get_transient_memory(7U);
    memset(t5, 0, 7U);
    t6 = t5;
    memset(t6, (unsigned char)2, 7U);
    t7 = (t0 + 5320);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t17 = *((char **)t10);
    memcpy(t17, t5, 7U);
    xsi_driver_first_trans_fast(t7);
    goto LAB31;

}

static void work_a_3649416707_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(102, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 5512);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 7U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 5176);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3649416707_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3649416707_3212880686_p_0,(void *)work_a_3649416707_3212880686_p_1};
	xsi_register_didat("work_a_3649416707_3212880686", "isim/lab3atb_isim_beh.exe.sim/work/a_3649416707_3212880686.didat");
	xsi_register_executes(pe);
}
