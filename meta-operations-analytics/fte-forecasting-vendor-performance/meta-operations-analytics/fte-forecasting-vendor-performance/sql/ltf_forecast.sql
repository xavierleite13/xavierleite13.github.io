SELECT "dim_ap_ce_xso_comp"."billing_language_name" AS "billing_language_n",
  "dim_ap_ce_xso_comp"."committed_hours" AS "committed_hours",
  "dim_ap_ce_xso_comp"."date" AS "date",
  "dim_ap_ce_xso_comp"."date_dmy" AS "date_dmy",
  "dim_ap_ce_xso_comp"."ds" AS "ds__dim_ap_ce_xso_",
  "dim_ap_ce_xso_comp"."employee_type" AS "employee_type__dim",
  "dim_ap_ce_xso_comp"."interval_list" AS "interval_list",
  "dim_ap_ce_xso_comp"."maxbill_id" AS "maxbill_id__dim_ap",
  "dim_ap_ce_xso_comp"."organisation" AS "organisation__dim_",
  "dim_ap_ce_xso_comp"."planning_group" AS "planning_group__di",
  "dim_ap_ce_xso_comp"."primary_business_unit" AS "primary_business_u",
  "dim_ap_ce_xso_comp"."staffing_group" AS "staffing_group__di",
  "dim_ap_ce_xso_comp"."stf_version" AS "stf_version__dim_a",
  "dim_ap_ce_xso_comp"."work_city" AS "work_city__dim_ap_"
FROM "si"."dim_ap_ce_xso_compliance_hours" "dim_ap_ce_xso_comp"
where ds = '<LATEST_DS:dim_ap_ce_xso_compliance_hours>'
