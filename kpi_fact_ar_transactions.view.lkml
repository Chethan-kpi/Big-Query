view: kpi_fact_ar_transactions {
  sql_table_name: Looker_AR_Data.KPI_Fact_AR_TRANSACTIONS ;;


  dimension: acctd_amount_applied_from {
    type: number
    sql: ${TABLE}.ACCTD_AMOUNT_APPLIED_FROM ;;
  }

  dimension: acctd_amount_applied_to {
    type: number
    sql: ${TABLE}.ACCTD_AMOUNT_APPLIED_TO ;;
  }

  dimension: adjustment_id {
    type: number
    sql: ${TABLE}.ADJUSTMENT_ID ;;
  }

  dimension: bill_to_contact_id {
    type: number
    sql: ${TABLE}.BILL_TO_CONTACT_ID ;;
  }

  dimension: bill_to_customer_id {
    type: number
    sql: ${TABLE}.BILL_TO_CUSTOMER_ID ;;
  }

  dimension: bill_to_site_use_id {
    type: number
    sql: ${TABLE}.BILL_TO_SITE_USE_ID ;;
  }

  dimension: cash_receipt_id {
    type: number
    sql: ${TABLE}.CASH_RECEIPT_ID ;;
  }

  dimension: code_combination_id {
    type: number
    sql: ${TABLE}.CODE_COMBINATION_ID ;;
  }

  dimension: credit_memo_id {
    type: number
    sql: ${TABLE}.CREDIT_MEMO_ID ;;
  }

  dimension: customer_trx_id {
    type: number
    sql: ${TABLE}.CUSTOMER_TRX_ID ;;
  }

  dimension: distribution_id {
    type: number
    sql: ${TABLE}.DISTRIBUTION_ID ;;
  }

  dimension_group: gl {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.GL_DATE ;;
  }

  dimension: ledger_currency {
    type: string
    sql: ${TABLE}.LEDGER_CURRENCY ;;
  }

  dimension: ledger_currency_amount {
    type: number
    sql: ${TABLE}.LEDGER_CURRENCY_AMOUNT ;;
  }

  dimension: ledger_id {
    type: number
    sql: ${TABLE}.LEDGER_ID ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: party_id {
    type: number
    sql: ${TABLE}.PARTY_ID ;;
  }

  dimension: primary_salesrep_id {
    type: number
    sql: ${TABLE}.PRIMARY_SALESREP_ID ;;
  }

  dimension: record_id {
    type: number
    sql: ${TABLE}.RECORD_ID ;;
  }

  dimension: ship_party_id {
    type: number
    sql: ${TABLE}.SHIP_PARTY_ID ;;
  }

  dimension: ship_to_contact_id {
    type: number
    sql: ${TABLE}.SHIP_TO_CONTACT_ID ;;
  }

  dimension: ship_to_customer_id {
    type: number
    sql: ${TABLE}.SHIP_TO_CUSTOMER_ID ;;
  }

  dimension: ship_to_site_use_id {
    type: number
    sql: ${TABLE}.SHIP_TO_SITE_USE_ID ;;
  }

  dimension_group: trx_creation {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TRX_CREATION_DATE ;;
  }

  dimension: trx_currency {
    type: string
    sql: ${TABLE}.TRX_CURRENCY ;;
  }



  dimension_group: trx {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TRX_DATE ;;
  }

  dimension_group: trx_last_update {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TRX_LAST_UPDATE_DATE ;;
  }

  dimension: trx_number {
    type: string
    sql: ${TABLE}.TRX_NUMBER ;;
  }

  dimension: trx_source {
    type: string
    sql: ${TABLE}.TRX_SOURCE ;;
  }

  dimension: trx_status {
    type: string
    sql: ${TABLE}.TRX_STATUS ;;
  }

  dimension: trx_type {
    type: string
    sql: ${TABLE}.TRX_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: trx_currency_amount {
    type: sum
    sql: ${TABLE}.TRX_CURRENCY_AMOUNT ;;
    value_format_name: K_2D
    drill_fields: [Detail*]
  }

  dimension: trx_currency_amount_tier {
    type: tier
    tiers: [0,1000,100000,1000000,10000000]
    sql: ${TABLE}.TRX_CURRENCY_AMOUNT ;;
    style:classic
    value_format_name: K_2D
      }

  set: Detail {
    fields: [kpi_dim_bill_to_customers.bill_to_customer_name,
kpi_dim_bill_to_customers.bill_to_customer_number,
kpi_dim_bill_to_customers.bill_to_customer_class,
kpi_dim_bill_to_customers.bill_to_customer_channel,
kpi_dim_bill_to_customers.credit_class,
kpi_dim_bill_to_customers.address1,
kpi_dim_bill_to_customers.address2,
kpi_dim_bill_to_customers.city,
kpi_dim_bill_to_customers.state,
kpi_dim_bill_to_customers.county,
kpi_dim_bill_to_customers.postal_code,
kpi_dim_bill_to_customers.country]
  }
}
