include: "00_benevity_analytics.model.lkml"
#include: "1XHYEBDL5W*.dashboard.lookml"
include: "00_giving.dashboard.lookml"  # include all dashboards in this project
include: "00_volunteering.dashboard.lookml"
include: "00_realtimereporting.dashboard.lookml"
label: "coolCompany-1XHYEBDL5W - Giving Portal"

explore: fact_transaction {
  extends: [fact_transaction_base]
  hidden: no
  view_name: vw_fact_transaction_entry
  label: "coolCompany-1XHYEBDL5W Giving"

  sql_always_where: ${vw_dim_company.company_code} = '1XHYEBDL5W' ;;



  join: vw_dim_foundation {
    fields: []
  }
}

explore: vw_realtimereporting {
  extends: [vw_realtimereporting_base]
  label: "coolCompany-1XHYEBDL5W Real-Time Reporting"
}


explore: fact_donation {
  extends: [derived_fact_donation_base]
  hidden: yes
}

explore: usercustomfield {
  # access_filter: {
  #   field: usercustomfield.companyid
  #   user_attribute: company_id
  # }
  hidden: yes
}