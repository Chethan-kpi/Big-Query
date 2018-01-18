view: kpi_dim_ship_to_customers {
  sql_table_name: Looker_AR_Data.KPI_Dim_SHIP_TO_CUSTOMERS ;;

  dimension: address1 {
    type: string
    sql: ${TABLE}.ADDRESS1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.ADDRESS2 ;;
  }

  dimension: address3 {
    type: string
    sql: ${TABLE}.ADDRESS3 ;;
  }

  dimension: address4 {
    type: string
    sql: ${TABLE}.ADDRESS4 ;;
  }

  dimension: attribute1 {
    type: string
    sql: ${TABLE}.ATTRIBUTE1 ;;
  }

  dimension: attribute10 {
    type: string
    sql: ${TABLE}.ATTRIBUTE10 ;;
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

  dimension: attribute6 {
    type: string
    sql: ${TABLE}.ATTRIBUTE6 ;;
  }

  dimension: attribute7 {
    type: string
    sql: ${TABLE}.ATTRIBUTE7 ;;
  }

  dimension: attribute8 {
    type: string
    sql: ${TABLE}.ATTRIBUTE8 ;;
  }

  dimension: attribute9 {
    type: string
    sql: ${TABLE}.ATTRIBUTE9 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.COUNTY ;;
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

  dimension: cust_account_id {
    type: number
    sql: ${TABLE}.CUST_ACCOUNT_ID ;;
  }

  dimension: gsa_indicator {
    type: yesno
    sql: ${TABLE}.GSA_INDICATOR ;;
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

  dimension: location {
    type: string
    sql: ${TABLE}.LOCATION ;;
  }

  dimension: orig_system_reference {
    type: number
    sql: ${TABLE}.ORIG_SYSTEM_REFERENCE ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.POSTAL_CODE ;;
  }

  dimension: primary_flag {
    type: yesno
    sql: ${TABLE}.PRIMARY_FLAG ;;
  }

  dimension: primary_salesrep {
    type: string
    sql: ${TABLE}.PRIMARY_SALESREP ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.PROVINCE ;;
  }

  dimension: ship_to_customer_category {
    type: string
    sql: ${TABLE}.SHIP_TO_CUSTOMER_CATEGORY ;;
  }

  dimension: ship_to_customer_channel {
    type: string
    sql: ${TABLE}.SHIP_TO_CUSTOMER_CHANNEL ;;
  }

  dimension: ship_to_customer_class {
    type: string
    sql: ${TABLE}.SHIP_TO_CUSTOMER_CLASS ;;
  }

  dimension: ship_to_customer_name {
    type: string
    sql: ${TABLE}.SHIP_TO_CUSTOMER_NAME ;;
  }

  dimension: ship_to_customer_number {
    type: number
    sql: ${TABLE}.SHIP_TO_CUSTOMER_NUMBER ;;
  }

  dimension: sic_code {
    type: string
    sql: ${TABLE}.SIC_CODE ;;
  }

  dimension: site_use_code {
    type: string
    sql: ${TABLE}.SITE_USE_CODE ;;
  }

  dimension: site_use_id {
    type: number
    sql: ${TABLE}.SITE_USE_ID ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  measure: count {
    type: count
    drill_fields: [ship_to_customer_name]
  }
}
