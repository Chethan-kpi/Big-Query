view: kpi_fact_ar_aging_p1 {
  sql_table_name: Looker_AR_Data.KPI_FACT_AR_AGING_P1 ;;

dimension: PARTITION
{
  type:  date
  sql: ${TABLE}._PARTITIONTIME ;;
}

  dimension: ar01_15 {
    type: number
    sql: ${TABLE}.AR01_15 ;;
  }

  dimension: ar16_30 {
    type: number
    sql: ${TABLE}.AR16_30 ;;
  }

  dimension: ar31_60 {
    type: number
    sql: ${TABLE}.AR31_60 ;;
  }

  dimension: ar61_90 {
    type: number
    sql: ${TABLE}.AR61_90 ;;
  }

  dimension: ar90_plus {
    type: number
    sql: ${TABLE}.AR90_PLUS ;;
  }

  dimension: ar_class {
    type: string
    sql: ${TABLE}.AR_CLASS ;;
  }

  dimension: bill_to_site_use_id {
    type: number
    sql: ${TABLE}.BILL_TO_SITE_USE_ID ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: current_ar {
    type: number
    sql: ${TABLE}.CURRENT_AR ;;
  }

  dimension: customer_trx_id {
    type: number
    sql: ${TABLE}.CUSTOMER_TRX_ID ;;
  }

  dimension: days_overdue {
    type: number
    sql: ${TABLE}.DAYS_OVERDUE ;;
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

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: pmt_sched_id {
    type: number
    sql: ${TABLE}.PMT_SCHED_ID ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}.SNAPSHOT_DATE ;;
  }

  dimension: trx_number {
    type: string
    sql: ${TABLE}.TRX_NUMBER ;;
  }

  dimension: usd_01_15 {
    type: number
    sql: ${TABLE}.USD_01_15 ;;
  }

  dimension: usd_16_30 {
    type: number
    sql: ${TABLE}.USD_16_30 ;;
  }

  dimension: usd_31_60 {
    type: number
    sql: ${TABLE}.USD_31_60 ;;
  }

  dimension: usd_61_90 {
    type: number
    sql: ${TABLE}.USD_61_90 ;;
  }

  dimension: usd_90_plus {
    type: number
    sql: ${TABLE}.USD_90_PLUS ;;
  }

  dimension: usd_ar {
    type: number
    sql: ${TABLE}.USD_AR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
