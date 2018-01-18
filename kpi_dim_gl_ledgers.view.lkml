view: kpi_dim_gl_ledgers {
  sql_table_name: Looker_AR_Data.KPI_DIM_GL_LEDGERS ;;

  dimension: accounted_period_type {
    type: string
    sql: ${TABLE}.ACCOUNTED_PERIOD_TYPE ;;
  }

  dimension: chart_of_accounts_id {
    type: number
    sql: ${TABLE}.CHART_OF_ACCOUNTS_ID ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: ledger_category_code {
    type: string
    sql: ${TABLE}.LEDGER_CATEGORY_CODE ;;
  }

  dimension: ledger_description {
    type: string
    sql: ${TABLE}.LEDGER_DESCRIPTION ;;
  }

  dimension: ledger_id {
    type: number
    sql: ${TABLE}.LEDGER_ID ;;
  }

  dimension: ledger_name {
    type: string
    sql: ${TABLE}.LEDGER_NAME ;;
  }

  dimension: ledger_short_name {
    type: string
    sql: ${TABLE}.LEDGER_SHORT_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [ledger_short_name, ledger_name]
  }
}
