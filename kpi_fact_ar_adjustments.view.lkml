view: kpi_fact_ar_adjustments {
  sql_table_name: KPI_ANALYTICS.KPI_Fact_AR_ADJUSTMENTS ;;

  dimension_group: adj_apply {
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
    sql: ${TABLE}.ADJ_APPLY_DATE ;;
  }

  dimension_group: adj_gl {
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
    sql: ${TABLE}.ADJ_GL_DATE ;;
  }

  dimension: adjustment_id {
    type: number
    sql: ${TABLE}.ADJUSTMENT_ID ;;
  }

  dimension: adjustment_number {
    type: number
    sql: ${TABLE}.ADJUSTMENT_NUMBER ;;
  }

  dimension: adjustment_type {
    type: string
    sql: ${TABLE}.ADJUSTMENT_TYPE ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: approved_by {
    type: number
    sql: ${TABLE}.APPROVED_BY ;;
  }

  dimension: associated_application_id {
    type: number
    sql: ${TABLE}.ASSOCIATED_APPLICATION_ID ;;
  }

  dimension: associated_cash_receipt_id {
    type: number
    sql: ${TABLE}.ASSOCIATED_CASH_RECEIPT_ID ;;
  }

  dimension: automatically_generated {
    type: string
    sql: ${TABLE}.AUTOMATICALLY_GENERATED ;;
  }

  dimension: batch_id {
    type: string
    sql: ${TABLE}.BATCH_ID ;;
  }

  dimension: bill_to_site_use_id {
    type: number
    sql: ${TABLE}.BILL_TO_SITE_USE_ID ;;
  }

  dimension: chargeback_customer_trx_id {
    type: number
    sql: ${TABLE}.CHARGEBACK_CUSTOMER_TRX_ID ;;
  }

  dimension: code_combination_id {
    type: number
    sql: ${TABLE}.CODE_COMBINATION_ID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.COMMENTS ;;
  }

  dimension: cons_inv_id {
    type: number
    sql: ${TABLE}.CONS_INV_ID ;;
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

  dimension: cust_trx_type_id {
    type: number
    sql: ${TABLE}.CUST_TRX_TYPE_ID ;;
  }

  dimension: customer_trx_id {
    type: number
    sql: ${TABLE}.CUSTOMER_TRX_ID ;;
  }

  dimension: customer_trx_line_id {
    type: number
    sql: ${TABLE}.CUSTOMER_TRX_LINE_ID ;;
  }

  dimension: freight_adjusted {
    type: number
    sql: ${TABLE}.FREIGHT_ADJUSTED ;;
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
    sql: ${TABLE}.LAST_UPDATE_DATE ;;
  }

  dimension: line_adjusted {
    type: number
    sql: ${TABLE}.LINE_ADJUSTED ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: payment_schedule_id {
    type: number
    sql: ${TABLE}.PAYMENT_SCHEDULE_ID ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.REASON_CODE ;;
  }

  dimension: receivable_trx_name {
    type: string
    sql: ${TABLE}.RECEIVABLE_TRX_NAME ;;
  }

  dimension: receivable_trx_type {
    type: string
    sql: ${TABLE}.RECEIVABLE_TRX_TYPE ;;
  }

  dimension: receivables_charges_adjusted {
    type: number
    sql: ${TABLE}.RECEIVABLES_CHARGES_ADJUSTED ;;
  }

  dimension: receivables_trx_id {
    type: number
    sql: ${TABLE}.RECEIVABLES_TRX_ID ;;
  }

  dimension: salesrep_org_id {
    type: string
    sql: ${TABLE}.SALESREP_ORG_ID ;;
  }

  dimension: set_of_books_id {
    type: number
    sql: ${TABLE}.SET_OF_BOOKS_ID ;;
  }

  dimension: sold_to_customer_id {
    type: number
    sql: ${TABLE}.SOLD_TO_CUSTOMER_ID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: tax_adjusted {
    type: number
    sql: ${TABLE}.TAX_ADJUSTED ;;
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

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [receivable_trx_name]
  }
}
