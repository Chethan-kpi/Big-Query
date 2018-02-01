view: kpi_rt_unappunres_reg {
  sql_table_name: Looker_AR_Data.KPI_RT_UNAPPUNRES_REG ;;

  dimension: batch_name {
    type: number
    sql: ${TABLE}.BATCH_NAME ;;
  }

  dimension: claim_amount {
    type: number
    sql: ${TABLE}.CLAIM_AMOUNT ;;
  }

  dimension: company {
    type: number
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CUSTOMER_NAME ;;
  }

  dimension: customer_number {
    type: number
    sql: ${TABLE}.CUSTOMER_NUMBER ;;
  }

  dimension: document_number {
    type: number
    sql: ${TABLE}.DOCUMENT_NUMBER ;;
  }

  dimension: functional_currency_code {
    type: string
    sql: ${TABLE}.FUNCTIONAL_CURRENCY_CODE ;;
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

  dimension: legal_entity {
    type: string
    sql: ${TABLE}.LEGAL_ENTITY ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.LOCATION ;;
  }

  dimension: metric_cols_begin {
    type: string
    sql: ${TABLE}.METRIC_COLS_BEGIN ;;
  }

  dimension: onaccount_amount {
    type: number
    sql: ${TABLE}.ONACCOUNT_AMOUNT ;;
  }

  dimension: operating_unit_name {
    type: string
    sql: ${TABLE}.OPERATING_UNIT_NAME ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD ;;
  }

  dimension: payment_number {
    type: string
    sql: ${TABLE}.PAYMENT_NUMBER ;;
  }

  dimension: prepayment_amount {
    type: number
    sql: ${TABLE}.PREPAYMENT_AMOUNT ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.SOURCE_NAME ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.TOTAL_AMOUNT ;;
  }

  dimension: transactional_currency_code {
    type: string
    sql: ${TABLE}.TRANSACTIONAL_CURRENCY_CODE ;;
  }

  dimension: unapplied_amount {
    type: number
    sql: ${TABLE}.UNAPPLIED_AMOUNT ;;
  }

  measure: count {
    type: count
    drill_fields: [source_name, ledger_name, operating_unit_name, customer_name, batch_name]
  }
}
