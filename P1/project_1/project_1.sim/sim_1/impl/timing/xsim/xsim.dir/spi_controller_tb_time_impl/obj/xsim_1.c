/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_67(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_17(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_276(char*, char *);
extern void execute_277(char*, char *);
extern void execute_278(char*, char *);
extern void execute_279(char*, char *);
extern void execute_280(char*, char *);
extern void execute_281(char*, char *);
extern void execute_282(char*, char *);
extern void execute_283(char*, char *);
extern void execute_284(char*, char *);
extern void execute_285(char*, char *);
extern void execute_286(char*, char *);
extern void execute_287(char*, char *);
extern void execute_288(char*, char *);
extern void execute_289(char*, char *);
extern void execute_290(char*, char *);
extern void execute_291(char*, char *);
extern void execute_292(char*, char *);
extern void execute_293(char*, char *);
extern void execute_294(char*, char *);
extern void execute_295(char*, char *);
extern void execute_296(char*, char *);
extern void execute_297(char*, char *);
extern void execute_298(char*, char *);
extern void execute_299(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_85(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_1(char*, char *);
extern void vlog_timingcheck_execute_0(char*, char*, char*);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_2(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_79(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_80(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_81(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_82(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_83(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_84(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_85(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_86(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_87(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_88(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_89(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_90(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_91(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_92(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_93(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_94(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_95(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_96(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_97(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_98(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_99(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_100(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_101(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_102(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_27(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_28(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_29(char*, char *);
extern void timing_checker_condition_m_5a3974d6_af79f1dc_30(char*, char *);
extern void execute_106(char*, char *);
extern void execute_112(char*, char *);
extern void execute_113(char*, char *);
extern void execute_114(char*, char *);
extern void execute_115(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_120(char*, char *);
extern void execute_25(char*, char *);
extern void execute_121(char*, char *);
extern void execute_27(char*, char *);
extern void execute_122(char*, char *);
extern void execute_123(char*, char *);
extern void execute_124(char*, char *);
extern void execute_30(char*, char *);
extern void execute_126(char*, char *);
extern void execute_127(char*, char *);
extern void execute_125(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[160] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_67, (funcp)execute_68, (funcp)execute_69, (funcp)execute_17, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_276, (funcp)execute_277, (funcp)execute_278, (funcp)execute_279, (funcp)execute_280, (funcp)execute_281, (funcp)execute_282, (funcp)execute_283, (funcp)execute_284, (funcp)execute_285, (funcp)execute_286, (funcp)execute_287, (funcp)execute_288, (funcp)execute_289, (funcp)execute_290, (funcp)execute_291, (funcp)execute_292, (funcp)execute_293, (funcp)execute_294, (funcp)execute_295, (funcp)execute_296, (funcp)execute_297, (funcp)execute_298, (funcp)execute_299, (funcp)execute_19, (funcp)execute_20, (funcp)execute_21, (funcp)execute_22, (funcp)execute_73, (funcp)execute_74, (funcp)execute_75, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_82, (funcp)execute_83, (funcp)execute_84, (funcp)execute_85, (funcp)execute_86, (funcp)execute_87, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_1, (funcp)vlog_timingcheck_execute_0, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_2, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_79, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_80, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_81, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_82, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_83, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_84, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_85, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_86, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_87, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_88, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_89, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_90, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_91, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_92, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_93, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_94, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_95, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_96, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_97, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_98, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_99, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_100, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_101, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_102, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_27, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_28, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_29, (funcp)timing_checker_condition_m_5a3974d6_af79f1dc_30, (funcp)execute_106, (funcp)execute_112, (funcp)execute_113, (funcp)execute_114, (funcp)execute_115, (funcp)execute_116, (funcp)execute_117, (funcp)execute_120, (funcp)execute_25, (funcp)execute_121, (funcp)execute_27, (funcp)execute_122, (funcp)execute_123, (funcp)execute_124, (funcp)execute_30, (funcp)execute_126, (funcp)execute_127, (funcp)execute_125, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_57, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_64, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_81, (funcp)transaction_82, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_83, (funcp)transaction_120, (funcp)transaction_150, (funcp)transaction_181};
const int NumRelocateId= 160;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/spi_controller_tb_time_impl/xsim.reloc",  (void **)funcTab, 160);
	iki_vhdl_file_variable_register(dp + 51256);
	iki_vhdl_file_variable_register(dp + 51312);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/spi_controller_tb_time_impl/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/spi_controller_tb_time_impl/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 56536, dp + 57648, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 56592, dp + 58320, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 56648, dp + 58040, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 56704, dp + 57928, 0, 8, 0, 8, 9, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/spi_controller_tb_time_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/spi_controller_tb_time_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/spi_controller_tb_time_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
