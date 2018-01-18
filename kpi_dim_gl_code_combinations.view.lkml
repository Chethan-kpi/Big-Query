view: kpi_dim_gl_code_combinations {
  sql_table_name: Looker_AR_Data.KPI_Dim_GL_CODE_COMBINATIONS ;;

  dimension: chart_of_accounts_id {
    type: number
    sql: ${TABLE}.CHART_OF_ACCOUNTS_ID ;;
  }

  dimension: code_combination_id {
    type: number
    sql: ${TABLE}.CODE_COMBINATION_ID ;;
  }

  dimension: concatenated_segments {
    type: string
    sql: ${TABLE}.CONCATENATED_SEGMENTS ;;
  }

  dimension: segment1 {
    type: string
    sql: ${TABLE}.SEGMENT1 ;;
  }

  dimension: segment10 {
    type: string
    sql: ${TABLE}.SEGMENT10 ;;
  }

  dimension: segment2 {
    type: string
    sql: ${TABLE}.SEGMENT2 ;;
  }

  dimension: segment3 {
    type: string
    sql: ${TABLE}.SEGMENT3 ;;
  }

  dimension: segment4 {
    type: string
    sql: ${TABLE}.SEGMENT4 ;;
  }

  dimension: segment5 {
    type: string
    sql: ${TABLE}.SEGMENT5 ;;
  }

  dimension: segment6 {
    type: string
    sql: ${TABLE}.SEGMENT6 ;;
  }

  dimension: segment7 {
    type: string
    sql: ${TABLE}.SEGMENT7 ;;
  }

  dimension: segment8 {
    type: string
    sql: ${TABLE}.SEGMENT8 ;;
  }

  dimension: segment9 {
    type: string
    sql: ${TABLE}.SEGMENT9 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
