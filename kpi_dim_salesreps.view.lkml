view: kpi_dim_salesreps {
  sql_table_name: Looker_AR_Data.KPI_Dim_SALESREPS ;;

  dimension_group: end_date_active {
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
    sql: ${TABLE}.END_DATE_ACTIVE ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.PERSON_ID ;;
  }

  dimension: resource_id {
    type: number
    sql: ${TABLE}.RESOURCE_ID ;;
  }

  dimension: sales_credit_type_id {
    type: number
    sql: ${TABLE}.SALES_CREDIT_TYPE_ID ;;
  }

  dimension: salesrep_id {
    type: number
    sql: ${TABLE}.SALESREP_ID ;;
  }

  dimension: salesrep_name {
    type: string
    sql: ${TABLE}.SALESREP_NAME ;;
  }

  dimension: salesrep_number {
    type: string
    sql: ${TABLE}.SALESREP_NUMBER ;;
  }

  dimension: salesrep_org_id {
    type: string
    sql: ${TABLE}.SALESREP_ORG_ID ;;
  }

  dimension: set_of_books_id {
    type: number
    sql: ${TABLE}.SET_OF_BOOKS_ID ;;
  }

  dimension_group: start_date_active {
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
    sql: ${TABLE}.START_DATE_ACTIVE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  measure: count {
    type: count
    drill_fields: [salesrep_name]
  }
}
