view: kpi_fact_ar_receipts {
  sql_table_name: KPI_ANALYTICS.KPI_Fact_AR_RECEIPTS ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: cash_receipt_history_id {
    type: number
    sql: ${TABLE}.CASH_RECEIPT_HISTORY_ID ;;
  }

  dimension: cash_receipt_id {
    type: number
    sql: ${TABLE}.CASH_RECEIPT_ID ;;
  }

  dimension: confirmed_flag {
    type: yesno
    sql: ${TABLE}.CONFIRMED_FLAG ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.CREATED_BY ;;
  }

  dimension_group: creation {
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
    sql: ${TABLE}.CREATION_DATE ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: customer_bank_account_id {
    type: string
    sql: ${TABLE}.CUSTOMER_BANK_ACCOUNT_ID ;;
  }

  dimension: customer_site_use_id {
    type: number
    sql: ${TABLE}.CUSTOMER_SITE_USE_ID ;;
  }

  dimension_group: deposit {
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
    sql: ${TABLE}.DEPOSIT_DATE ;;
  }

  dimension_group: exchange {
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
    sql: ${TABLE}.EXCHANGE_DATE ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.EXCHANGE_RATE ;;
  }

  dimension: exchange_rate_type {
    type: string
    sql: ${TABLE}.EXCHANGE_RATE_TYPE ;;
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

  dimension: global_currency {
    type: string
    sql: ${TABLE}.GLOBAL_CURRENCY ;;
  }

  dimension_group: global_exchange {
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
    sql: ${TABLE}.GLOBAL_EXCHANGE_DATE ;;
  }

  dimension: global_rate_type {
    type: string
    sql: ${TABLE}.GLOBAL_RATE_TYPE ;;
  }

  dimension: history_status {
    type: string
    sql: ${TABLE}.HISTORY_STATUS ;;
  }

  dimension_group: last_update {
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
    sql: ${TABLE}.LAST_UPDATE ;;
  }

  dimension: last_updated_by {
    type: number
    sql: ${TABLE}.LAST_UPDATED_BY ;;
  }

  dimension: ledger_currency {
    type: string
    sql: ${TABLE}.LEDGER_CURRENCY ;;
  }

  dimension: local_amount {
    type: number
    sql: ${TABLE}.LOCAL_AMOUNT ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: pay_from_customer {
    type: number
    sql: ${TABLE}.PAY_FROM_CUSTOMER ;;
  }

  dimension: receipt_comments {
    type: string
    sql: ${TABLE}.RECEIPT_COMMENTS ;;
  }

  dimension_group: receipt {
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
    sql: ${TABLE}.RECEIPT_DATE ;;
  }

  dimension: receipt_dff1 {
    type: string
    sql: ${TABLE}.RECEIPT_DFF1 ;;
  }

  dimension: receipt_dff10 {
    type: string
    sql: ${TABLE}.RECEIPT_DFF10 ;;
  }

  dimension: receipt_dff2 {
    type: string
    sql: ${TABLE}.RECEIPT_DFF2 ;;
  }

  dimension: receipt_dff3 {
    type: string
    sql: ${TABLE}.RECEIPT_DFF3 ;;
  }

  dimension: receipt_dff4 {
    type: string
    sql: ${TABLE}.RECEIPT_DFF4 ;;
  }

  dimension: receipt_dff5 {
    type: string
    sql: ${TABLE}.RECEIPT_DFF5 ;;
  }

  dimension: receipt_dff6 {
    type: string
    sql: ${TABLE}.RECEIPT_DFF6 ;;
  }

  dimension: receipt_dff7 {
    type: string
    sql: ${TABLE}.RECEIPT_DFF7 ;;
  }

  dimension: receipt_dff8 {
    type: string
    sql: ${TABLE}.RECEIPT_DFF8 ;;
  }

  dimension: receipt_dff9 {
    type: string
    sql: ${TABLE}.RECEIPT_DFF9 ;;
  }

  dimension: receipt_method_id {
    type: number
    sql: ${TABLE}.RECEIPT_METHOD_ID ;;
  }

  dimension: receipt_number {
    type: string
    sql: ${TABLE}.RECEIPT_NUMBER ;;
  }

  dimension: remit_bank_acct_use_id {
    type: number
    sql: ${TABLE}.REMIT_BANK_ACCT_USE_ID ;;
  }

  dimension: remittance_bank_account_id {
    type: number
    sql: ${TABLE}.REMITTANCE_BANK_ACCOUNT_ID ;;
  }

  dimension: reversal_category {
    type: string
    sql: ${TABLE}.REVERSAL_CATEGORY ;;
  }

  dimension: reversal_comments {
    type: string
    sql: ${TABLE}.REVERSAL_COMMENTS ;;
  }

  dimension_group: reversal {
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
    sql: ${TABLE}.REVERSAL_DATE ;;
  }

  dimension: reversal_reason_code {
    type: string
    sql: ${TABLE}.REVERSAL_REASON_CODE ;;
  }

  dimension: set_of_books_id {
    type: number
    sql: ${TABLE}.SET_OF_BOOKS_ID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
