view: kpi_dim_ar_adj_approver {
  sql_table_name: KPI_ANALYTICS.KPI_Dim_AR_ADJ_APPROVER ;;

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

  dimension: employee_id {
    type: number
    sql: ${TABLE}.EMPLOYEE_ID ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.END_DATE ;;
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

  dimension_group: start {
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.USER_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name]
  }
}
