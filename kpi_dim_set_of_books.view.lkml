view: kpi_dim_set_of_books {
  sql_table_name: KPI_ANALYTICS.KPI_Dim_SET_OF_BOOKS ;;

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: set_of_books_id {
    type: number
    sql: ${TABLE}.SET_OF_BOOKS_ID ;;
  }

  dimension: set_of_books_name {
    type: string
    sql: ${TABLE}.SET_OF_BOOKS_NAME ;;
  }

  dimension: sob_description {
    type: string
    sql: ${TABLE}.SOB_DESCRIPTION ;;
  }

  dimension: sob_short_name {
    type: string
    sql: ${TABLE}.SOB_SHORT_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [sob_short_name, set_of_books_name]
  }
}
