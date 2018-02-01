connection: "bigquery"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: biqquery_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: biqquery_looker_default_datagroup

fiscal_month_offset: 3

named_value_format: usd_millions {
  value_format: "$0.000,,\" M\""
}

named_value_format: K_3D {
  value_format: "0.000,\" K\""
}

named_value_format: K_2D {
  value_format: "0.00,\" K\""
}

# explore: kpi_fact_ar_aging_p1 {
#   conditionally_filter: {
#     filters: {
#      field: PARTITION
#       value: "yesterday"
#
#     }
#   }
# }

explore: kpi_rt_ar_journal_entries {
  label: "FT_AR_Journals"
}
explore: kpi_rt_trx_reg {
  label: "FT_Receivable Transaction Register"
}
explore: kpi_rt_unappunres_reg {
  label: "FT_Unapplied Receipts Register"
}


explore: kpi_fact_ar_aging  {

  label: "AR Aging"
  join:kpi_dim_op_units  {
    sql_on: ${kpi_dim_op_units.organization_id}=${kpi_fact_ar_aging.org_id} ;;
    relationship: many_to_one
    view_label: "DIM : Operating Units"
  }
  join: kpi_dim_currency {
    sql_on: ${kpi_dim_currency.string_field_0}=${kpi_fact_ar_aging.currency} ;;
    relationship: many_to_one
    view_label: "DIM : Currency"
  }
  join: kpi_dim_cust_trx_id {
    sql_on: ${kpi_dim_cust_trx_id.customer_trx_id}=${kpi_fact_ar_aging.customer_trx_id} ;;
    relationship: many_to_one
    view_label: "DIM : Customer TRX ID"
  }
  join:  kpi_dim_bill_to_customers {
    sql_on: ${kpi_dim_bill_to_customers.site_use_id}=${kpi_fact_ar_aging.bill_to_site_use_id} ;;
    relationship: many_to_one
    view_label: "DIM : Bill To Customers"
  }
}

explore: aging_derived  {
  label: "AR Aging Custom"

  conditionally_filter: {
    filters:  {
      field:aging_derived.DUE_DATE
      value: "before 2 years ago"
    }
    unless: [aging_derived.DUE_DAYS ]
  }

  join:kpi_dim_op_units  {
    sql_on: ${kpi_dim_op_units.organization_id}=${aging_derived.ORG_ID} ;;
    relationship: many_to_one
    view_label: "DIM : Operating Units"
  }
  join: kpi_dim_currency {
    sql_on: ${kpi_dim_currency.string_field_0}=${aging_derived.CURRENCY} ;;
    relationship: many_to_one
    view_label: "DIM : Currency"
  }
  join: kpi_dim_cust_trx_id {
    sql_on: ${kpi_dim_cust_trx_id.customer_trx_id}=${aging_derived.CUSTOMER_TRX_ID} ;;
    relationship: many_to_one
    view_label: "DIM : Customer TRX ID"
  }
  join:  kpi_dim_bill_to_customers {
    sql_on: ${kpi_dim_bill_to_customers.site_use_id}=${aging_derived.BILL_TO_SITE_USE_ID} ;;
    relationship: many_to_one
    view_label: "DIM : Bill To Customers"
  }
}

explore: kpi_fact_ar_transactions  {
  label: "AR Transactions"


  join:kpi_dim_bill_to_accounts  {
    sql_on: ${kpi_dim_bill_to_accounts.cust_account_id}=${kpi_fact_ar_transactions.bill_to_customer_id} ;;
    relationship: many_to_one
    view_label: "DIM : Bill To Accounts"
  }
  join: kpi_dim_bill_to_contacts {
    sql_on: ${kpi_dim_bill_to_contacts.contact_id}=${kpi_fact_ar_transactions.bill_to_contact_id} ;;
    relationship: many_to_one
    view_label: "DIM : Bill To Contacts"

  }
  join:  kpi_dim_bill_to_customers {
    sql_on: ${kpi_dim_bill_to_customers.site_use_id}=${kpi_fact_ar_transactions.bill_to_site_use_id} ;;
    relationship: many_to_one
    view_label: "DIM : Bill To Customers"
  }

  join:  kpi_dim_bill_to_party {
    sql_on: ${kpi_dim_bill_to_party.bill_to_party_id}=${kpi_fact_ar_transactions.party_id} ;;
    relationship: many_to_one
    view_label: "DIM : Bill To Party"
  }

  join: kpi_dim_currency {
    sql_on: ${kpi_dim_currency.string_field_0}=${kpi_fact_ar_transactions.trx_currency} ;;
    relationship: many_to_one
    view_label: "DIM : Currency"
  }


  join: kpi_dim_cust_trx_id {
    sql_on: ${kpi_dim_cust_trx_id.customer_trx_id}=${kpi_fact_ar_transactions.customer_trx_id} ;;
    relationship: many_to_one
    view_label: "DIM : Customer TRX ID"
  }

  join: kpi_dim_gl_code_combinations {
    sql_on: ${kpi_dim_gl_code_combinations.code_combination_id}=${kpi_fact_ar_transactions.code_combination_id} ;;
    relationship: many_to_one
    view_label: "DIM : GL Code Combinations"
  }

  join: kpi_dim_gl_ledgers {
    sql_on: ${kpi_dim_gl_ledgers.ledger_id}=${kpi_fact_ar_transactions.ledger_id} ;;
    relationship: many_to_one
    view_label: "DIM : GL Ledgers"
  }

  join: kpi_dim_op_units {
    sql_on: ${kpi_dim_op_units.organization_id}=${kpi_fact_ar_transactions.org_id} ;;
    relationship: many_to_one
    view_label: "DIM : Operating Units"
  }

  join: kpi_dim_salesreps {
    sql_on: ${kpi_dim_salesreps.salesrep_id}=${kpi_fact_ar_transactions.primary_salesrep_id} and
      ${kpi_dim_salesreps.org_id}=${kpi_fact_ar_transactions.org_id};;
    relationship: many_to_one
    view_label: "DIM : Sales Reps"
  }

  join: kpi_dim_ship_to_accounts {
    sql_on: ${kpi_dim_ship_to_accounts.cust_account_id}=${kpi_fact_ar_transactions.ship_to_customer_id} ;;
    relationship: many_to_one
    view_label: "DIM : Ship To Accounts"
  }

  join: kpi_dim_ship_to_contacts {
    sql_on: ${kpi_dim_ship_to_contacts.contact_id}=${kpi_fact_ar_transactions.ship_to_contact_id} ;;
    relationship: many_to_one
    view_label: "DIM : Ship To Contacts"
  }

  join: kpi_dim_ship_to_customers {
    sql_on: ${kpi_dim_ship_to_customers.site_use_id}=${kpi_fact_ar_transactions.ship_to_site_use_id} ;;
    relationship: many_to_one
    view_label: "DIM : Ship To Customers"
  }

  join: kpi_dim_ship_to_party {
    sql_on: ${kpi_dim_ship_to_party.ship_to_party_id}=${kpi_fact_ar_transactions.ship_party_id} ;;
    relationship: many_to_one
    view_label: "DIM : Ship To Party"
  }

 # join: kpi_period_dim {
  #  sql_on: ${kpi_period_dim.emx_date}=${kpi_fact_ar_transactions.gl_date} ;;
   # relationship: many_to_one
  #  view_label: "DIM : AR GL Date"
#  }

  join: kpi_period_dim {
    sql_on: ${kpi_period_dim.Invoice_date}=${kpi_fact_ar_transactions.trx_date} ;;
    relationship: many_to_one
    view_label: "DIM : AR Invoice Date "
  }

 }


# explore: kpi_dim_bill_to_accounts {}

# explore: kpi_dim_bill_to_contacts {}

# explore: kpi_dim_bill_to_customers {}

# explore: kpi_dim_bill_to_party {}

# explore: kpi_dim_currency {}

# explore: kpi_dim_cust_trx_id {}

# explore: kpi_dim_gl_code_combinations {}

# explore: kpi_dim_gl_ledgers {}

# explore: kpi_dim_op_units {}

# explore: kpi_dim_salesreps {}

# explore: kpi_dim_ship_to_accounts {}

# explore: kpi_dim_ship_to_contacts {}

# explore: kpi_dim_ship_to_customers {}

# explore: kpi_dim_ship_to_party {}

# explore: kpi_fact_ar_aging {}

# explore: kpi_fact_ar_transactions {}

# explore: kpi_period_dim {}
