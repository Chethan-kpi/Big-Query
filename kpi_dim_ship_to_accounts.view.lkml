view: kpi_dim_ship_to_accounts {
  sql_table_name: Looker_AR_Data.KPI_Dim_SHIP_TO_ACCOUNTS ;;

  dimension: ar_term {
    type: string
    sql: ${TABLE}.AR_TERM ;;
  }

  dimension: ar_term_desc {
    type: string
    sql: ${TABLE}.AR_TERM_DESC ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.CREATED_BY ;;
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

  dimension: party_id {
    type: number
    sql: ${TABLE}.PARTY_ID ;;
  }

  dimension: ship_to_account_name {
    type: string
    sql: ${TABLE}.SHIP_TO_ACCOUNT_NAME ;;
  }

  dimension: ship_to_account_number {
    type: string
    sql: ${TABLE}.SHIP_TO_ACCOUNT_NUMBER ;;
  }

  dimension: ship_to_acct_atr1 {
    type: string
    sql: ${TABLE}.SHIP_TO_ACCT_ATR1 ;;
  }

  dimension: ship_to_acct_atr2 {
    type: string
    sql: ${TABLE}.SHIP_TO_ACCT_ATR2 ;;
  }

  dimension: ship_to_acct_atr3 {
    type: string
    sql: ${TABLE}.SHIP_TO_ACCT_ATR3 ;;
  }

  dimension: ship_to_acct_atr4 {
    type: string
    sql: ${TABLE}.SHIP_TO_ACCT_ATR4 ;;
  }

  dimension: ship_to_acct_atr5 {
    type: string
    sql: ${TABLE}.SHIP_TO_ACCT_ATR5 ;;
  }

  dimension: ship_to_acct_status {
    type: string
    sql: ${TABLE}.SHIP_TO_ACCT_STATUS ;;
  }

  dimension: ship_to_channel {
    type: string
    sql: ${TABLE}.SHIP_TO_CHANNEL ;;
  }

  dimension: ship_to_cust_class_code {
    type: string
    sql: ${TABLE}.SHIP_TO_CUST_CLASS_CODE ;;
  }

  dimension: ship_to_cust_type {
    type: string
    sql: ${TABLE}.SHIP_TO_CUST_TYPE ;;
  }

  dimension: updated_by {
    type: string
    sql: ${TABLE}.UPDATED_BY ;;
  }

  measure: count {
    type: count
    drill_fields: [ship_to_account_name]
  }
}
