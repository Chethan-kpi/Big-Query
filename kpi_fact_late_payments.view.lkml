view: kpi_fact_late_payments {
  label: "FACT : AR Late Payments"
  sql_table_name: KPI_ANALYTICS.KPI_Fact_LATE_PAYMENTS ;;

  dimension: amount_applied {
    type: number
    sql: ${TABLE}.AMOUNT_APPLIED ;;
  }

  dimension: amount_applied_late {
    type: number
    sql: ${TABLE}.AMOUNT_APPLIED_LATE ;;
  }

  dimension: amount_applied_ontime {
    type: number
    sql: ${TABLE}.AMOUNT_APPLIED_ONTIME ;;
  }

  dimension: amount_due_original {
    type: number
    sql: ${TABLE}.AMOUNT_DUE_ORIGINAL ;;
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


  dimension: customer_name {
    type: string
    sql: ${TABLE}.CUSTOMER_NAME ;;
  }

  dimension: customer_site_use_id {
    type: number
    sql: ${TABLE}.CUSTOMER_SITE_USE_ID ;;
  }

  dimension: customer_trx_id {
    type: number
    sql: ${TABLE}.CUSTOMER_TRX_ID ;;
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



  dimension: invoice_currency {
    type: string
    sql: ${TABLE}.INVOICE_CURRENCY ;;
  }

  dimension: late_count {
    type: number
    sql: ${TABLE}.LATE_COUNT ;;
  }

  dimension: ontime_count {
    type: number
    sql: ${TABLE}.ONTIME_COUNT ;;
  }

  dimension: op_unit {
    type: string
    sql: ${TABLE}.OP_UNIT ;;
  }

  dimension: op_unit_id {
    type: number
    sql: ${TABLE}.OP_UNIT_ID ;;
  }

  dimension: payment_schedule_id {
    type: number
    sql: ${TABLE}.PAYMENT_SCHEDULE_ID ;;
  }

  dimension: set_of_books {
    type: string
    sql: ${TABLE}.SET_OF_BOOKS ;;
  }

  dimension: set_of_books_id {
    type: number
    sql: ${TABLE}.SET_OF_BOOKS_ID ;;
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

  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
