view: kpi_dim_currency {

  sql_table_name: Looker_AR_Data.KPI_DIM_CURRENCY ;;

  dimension: string_field_0 {
    type: string
    sql: ${TABLE}.string_field_0 ;;
    label: "Currency"
  }

  measure: count {
    type: count
    drill_fields: []
    hidden: yes
  }
}
