view: kpi_dim_ar_trx_types {
  sql_table_name: KPI_ANALYTICS.KPI_Dim_AR_TRX_TYPES ;;

  dimension: ar_trx_type {
    type: string
    sql: ${TABLE}.AR_TRX_TYPE ;;
  }

  dimension: ar_trx_type_desc {
    type: string
    sql: ${TABLE}.AR_TRX_TYPE_DESC ;;
  }

  dimension: ar_trx_type_name {
    type: string
    sql: ${TABLE}.AR_TRX_TYPE_NAME ;;
  }

  dimension: cust_trx_type_id {
    type: number
    sql: ${TABLE}.CUST_TRX_TYPE_ID ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [ar_trx_type_name]
  }
}
