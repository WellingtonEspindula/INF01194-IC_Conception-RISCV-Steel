# Check DRC and geometry
check_drc
check_connectivity -type all -error 1000 -warning 50
# time_design -post_cts -path_report -drv_report -slack_report -num_paths 50 -report_prefix top_postCTS -report_dir timingReports

# Report Power
report_power -sort { total } -out_file ./top.rpt
# Report Area
report_summary -out_dir summaryReport

# Check STA
eval_legacy {timeDesign -postRoute}
# time_design -pre_cts
# eval_legacy {timeDesign -postCTS}
