view: kpi_fact_ar_applications {
  label: "FACT : AR Applications"
  sql_table_name: KPI_ANALYTICS.KPI_Fact_AR_APPLICATIONS ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: amount_applied {
    type: number
    sql: ${TABLE}.AMOUNT_APPLIED ;;
  }

  dimension: application_gl_month {
    type: string
    sql: ${TABLE}.APPLICATION_GL_MONTH ;;
  }

  dimension: application_type {
    type: string
    sql: ${TABLE}.APPLICATION_TYPE ;;
  }

  dimension: applied_customer_trx_id {
    type: number
    sql: ${TABLE}.APPLIED_CUSTOMER_TRX_ID ;;
  }

  dimension_group: apply {
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
    sql: ${TABLE}.APPLY_DATE ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.BATCH_ID ;;
  }

  dimension: bill_to_address_id {
    type: number
    sql: ${TABLE}.BILL_TO_ADDRESS_ID ;;
  }

  dimension: bill_to_contact_id {
    type: number
    sql: ${TABLE}.BILL_TO_CONTACT_ID ;;
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

  dimension: credit_memo_amount {
    type: number
    sql: ${TABLE}.CREDIT_MEMO_AMOUNT ;;
  }

  dimension_group: credit_memo {
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
    sql: ${TABLE}.CREDIT_MEMO_DATE ;;
  }


  dimension: credit_memo_number {
    type: string
    sql: ${TABLE}.CREDIT_MEMO_NUMBER ;;
  }

  dimension: cust_trx_type_id {
    type: number
    sql: ${TABLE}.CUST_TRX_TYPE_ID ;;
  }

  dimension: days_late {
    type: number
    sql: ${TABLE}.DAYS_LATE ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.DISPLAY ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.DUE_DATE ;;
  }


  dimension: extended_amount {
    type: number
    sql: ${TABLE}.EXTENDED_AMOUNT ;;
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

  dimension_group: gl_posted {
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
    sql: ${TABLE}.GL_POSTED_DATE ;;
  }

  dimension: invoice_currency_code {
    type: string
    sql: ${TABLE}.INVOICE_CURRENCY_CODE ;;
  }

  dimension: invoice_month {
    type: string
    sql: ${TABLE}.INVOICE_MONTH ;;
  }

  dimension: invoicing_rule_id {
    type: number
    sql: ${TABLE}.INVOICING_RULE_ID ;;
  }

  dimension: line_applied {
    type: number
    sql: ${TABLE}.LINE_APPLIED ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: payment_schedule_id {
    type: number
    sql: ${TABLE}.PAYMENT_SCHEDULE_ID ;;
  }

  dimension: receipt_currency_code {
    type: string
    sql: ${TABLE}.RECEIPT_CURRENCY_CODE ;;
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


  dimension: receipt_number {
    type: string
    sql: ${TABLE}.RECEIPT_NUMBER ;;
  }

  dimension: receivable_application_id {
    type: number
    sql: ${TABLE}.RECEIVABLE_APPLICATION_ID ;;
  }

  dimension: set_of_books_id {
    type: number
    sql: ${TABLE}.SET_OF_BOOKS_ID ;;
  }

  dimension: ship_to_contact_id {
    type: number
    sql: ${TABLE}.SHIP_TO_CONTACT_ID ;;
  }

  dimension: ship_to_site_use_id {
    type: number
    sql: ${TABLE}.SHIP_TO_SITE_USE_ID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: tax_applied {
    type: number
    sql: ${TABLE}.TAX_APPLIED ;;
  }

  dimension: territory_id {
    type: number
    sql: ${TABLE}.TERRITORY_ID ;;
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

  dimension: trx_number {
    type: string
    sql: ${TABLE}.TRX_NUMBER ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
