view: kpi_dim_bill_to_contacts {
  sql_table_name: Looker_AR_Data.KPI_DIM_BILL_TO_CONTACTS ;;

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

  dimension: bill_to_contact_name {
    type: string
    sql: ${TABLE}.BILL_TO_CONTACT_NAME ;;
  }

  dimension: contact_id {
    type: number
    sql: ${TABLE}.CONTACT_ID ;;
  }

  dimension: contact_number {
    type: string
    sql: ${TABLE}.CONTACT_NUMBER ;;
  }

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

  dimension: email_address {
    type: string
    sql: ${TABLE}.EMAIL_ADDRESS ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.JOB_TITLE ;;
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

  measure: count {
    type: count
    drill_fields: [bill_to_contact_name]
  }
}
