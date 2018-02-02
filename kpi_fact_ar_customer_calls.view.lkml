view: kpi_fact_ar_customer_calls {
  sql_table_name: KPI_ANALYTICS.KPI_Fact_AR_CUSTOMER_CALLS ;;

  dimension_group: call {
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
    sql: ${TABLE}.CALL_DATE ;;
  }

  dimension: complete_flag {
    type: yesno
    sql: ${TABLE}.COMPLETE_FLAG ;;
  }

  dimension: contact_id {
    type: number
    sql: ${TABLE}.CONTACT_ID ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: customer_call_id {
    type: number
    sql: ${TABLE}.CUSTOMER_CALL_ID ;;
  }

  dimension: customer_call_phone {
    type: string
    sql: ${TABLE}.CUSTOMER_CALL_PHONE ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.REASON_CODE ;;
  }

  dimension: site_use_id {
    type: number
    sql: ${TABLE}.SITE_USE_ID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
