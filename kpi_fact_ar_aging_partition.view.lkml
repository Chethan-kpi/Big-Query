view: kpi_fact_ar_aging_partition {
  sql_table_name: Looker_AR_Data.KPI_Fact_AR_AGING_PARTITION ;;

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

  dimension_group: DATE {
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
    sql: ${TABLE}._PARTITIONTIME ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
