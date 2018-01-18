view: kpi_dim_op_units {
  sql_table_name: Looker_AR_Data.KPI_Dim_OP_UNITS ;;

  dimension: attribute1 {
    type: string
    sql: ${TABLE}.ATTRIBUTE1 ;;
  }

  dimension: attribute2 {
    type: string
    sql: ${TABLE}.ATTRIBUTE2 ;;
  }

  dimension: attribute3 {
    type: string
    sql: ${TABLE}.ATTRIBUTE3 ;;
  }

  dimension: attribute4 {
    type: string
    sql: ${TABLE}.ATTRIBUTE4 ;;
  }

  dimension: attribute5 {
    type: string
    sql: ${TABLE}.ATTRIBUTE5 ;;
  }

  dimension: business_group_id {
    type: number
    sql: ${TABLE}.BUSINESS_GROUP_ID ;;
  }

  dimension: ledger_name {
    type: string
    sql: ${TABLE}.LEDGER_NAME ;;
  }

  dimension: ledger_short_name {
    type: string
    sql: ${TABLE}.LEDGER_SHORT_NAME ;;
  }

  dimension: legal_entity_id {
    type: number
    sql: ${TABLE}.LEGAL_ENTITY_ID ;;
  }

  dimension: legal_entity_name {
    type: string
    sql: ${TABLE}.LEGAL_ENTITY_NAME ;;
  }

  dimension: op_unit_name {
    type: string
    sql: ${TABLE}.OP_UNIT_NAME ;;
  }

  dimension: organization_id {
    type: number
    sql: ${TABLE}.ORGANIZATION_ID ;;
  }

  dimension: set_of_books_id {
    type: number
    sql: ${TABLE}.SET_OF_BOOKS_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [ledger_short_name, ledger_name, op_unit_name, legal_entity_name]
  }
}
