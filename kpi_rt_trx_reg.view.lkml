view: kpi_rt_trx_reg {
  sql_table_name: Looker_AR_Data.KPI_RT_TRX_REG ;;

  dimension: account {
    type: string
    sql: ${TABLE}.ACCOUNT ;;
  }

  dimension: account_description {
    type: string
    sql: ${TABLE}.ACCOUNT_DESCRIPTION ;;
  }

  dimension: batch_source_name {
    type: string
    sql: ${TABLE}.BATCH_SOURCE_NAME ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CUSTOMER_NAME ;;
  }

  dimension: customer_number {
    type: number
    sql: ${TABLE}.CUSTOMER_NUMBER ;;
  }

  dimension: doc_sequence_name {
    type: string
    sql: ${TABLE}.DOC_SEQUENCE_NAME ;;
  }

  dimension: doc_sequence_number {
    type: number
    sql: ${TABLE}.DOC_SEQUENCE_NUMBER ;;
  }

  dimension: entered_amount {
    type: number
    sql: ${TABLE}.ENTERED_AMOUNT ;;
  }

  dimension: functional_amount {
    type: number
    sql: ${TABLE}.FUNCTIONAL_AMOUNT ;;
  }

  dimension: functional_currency_code {
    type: string
    sql: ${TABLE}.FUNCTIONAL_CURRENCY_CODE ;;
  }

  dimension: gl_account_class {
    type: string
    sql: ${TABLE}.GL_ACCOUNT_CLASS ;;
  }

  dimension: gl_account_segment1 {
    type: number
    sql: ${TABLE}.GL_ACCOUNT_SEGMENT1 ;;
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

  dimension: invoice_source {
    type: string
    sql: ${TABLE}.INVOICE_SOURCE ;;
  }

  dimension: key_cols_end {
    type: string
    sql: ${TABLE}.KEY_COLS_END ;;
  }

  dimension: ledger_id {
    type: number
    sql: ${TABLE}.LEDGER_ID ;;
  }

  dimension: ledger_name {
    type: string
    sql: ${TABLE}.LEDGER_NAME ;;
  }

  dimension: metric_cols_begin {
    type: string
    sql: ${TABLE}.METRIC_COLS_BEGIN ;;
  }

  dimension: operating_unit_name {
    type: string
    sql: ${TABLE}.OPERATING_UNIT_NAME ;;
  }

  dimension: po_document_number {
    type: string
    sql: ${TABLE}.PO_DOCUMENT_NUMBER ;;
  }

  dimension: postable {
    type: string
    sql: ${TABLE}.POSTABLE ;;
  }

  dimension: transaction_class {
    type: string
    sql: ${TABLE}.TRANSACTION_CLASS ;;
  }

  dimension_group: transaction {
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
    sql: ${TABLE}.TRANSACTION_DATE ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.TRANSACTION_TYPE ;;
  }

  dimension: trx_number {
    type: string
    sql: ${TABLE}.TRX_NUMBER ;;
  }

  measure: count {
    type: count
    drill_fields: [doc_sequence_name, ledger_name, operating_unit_name, batch_source_name, customer_name]
  }
}
