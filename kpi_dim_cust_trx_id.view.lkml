view: kpi_dim_cust_trx_id {
  sql_table_name: Looker_AR_Data.KPI_Dim_CUST_TRX_ID ;;

  dimension: customer_trx_id {
    type: number
    sql: ${TABLE}.CUSTOMER_TRX_ID ;;
    label: "Customer Transaction Id"
  }

  measure: count {
    type: count
    drill_fields: []
    hidden: yes
  }
}
