view: kpi_dim_ship_to_party {
  sql_table_name: Looker_AR_Data.KPI_DIM_SHIP_TO_PARTY ;;

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

  dimension: ship_to_party_address1 {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_ADDRESS1 ;;
  }

  dimension: ship_to_party_address2 {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_ADDRESS2 ;;
  }

  dimension: ship_to_party_address3 {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_ADDRESS3 ;;
  }

  dimension: ship_to_party_address4 {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_ADDRESS4 ;;
  }

  dimension: ship_to_party_atr1 {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_ATR1 ;;
  }

  dimension: ship_to_party_atr2 {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_ATR2 ;;
  }

  dimension: ship_to_party_atr3 {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_ATR3 ;;
  }

  dimension: ship_to_party_atr4 {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_ATR4 ;;
  }

  dimension: ship_to_party_atr5 {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_ATR5 ;;
  }

  dimension: ship_to_party_city {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_CITY ;;
  }

  dimension: ship_to_party_country {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_COUNTRY ;;
  }

  dimension: ship_to_party_created_by {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_CREATED_BY ;;
  }

  dimension: ship_to_party_email {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_EMAIL ;;
  }

  dimension: ship_to_party_id {
    type: number
    sql: ${TABLE}.SHIP_TO_PARTY_ID ;;
  }

  dimension: ship_to_party_key {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_KEY ;;
  }

  dimension: ship_to_party_name {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_NAME ;;
  }

  dimension: ship_to_party_number {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_NUMBER ;;
  }

  dimension: ship_to_party_person {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_PERSON ;;
  }

  dimension: ship_to_party_postal_code {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_POSTAL_CODE ;;
  }

  dimension: ship_to_party_state_province {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_STATE_PROVINCE ;;
  }

  dimension: ship_to_party_type {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_TYPE ;;
  }

  dimension: ship_to_party_updated_by {
    type: string
    sql: ${TABLE}.SHIP_TO_PARTY_UPDATED_BY ;;
  }

  measure: count {
    type: count
    drill_fields: [ship_to_party_name]
  }
}
