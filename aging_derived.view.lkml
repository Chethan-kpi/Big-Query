view: aging_derived {
  label: "FACT : AR Aging"
  parameter: test {
  type: string
}
  derived_table: {
    sql: select DATE(2008,07,30) as AGING_AS_OF_DATE,
          DUE_DATE,
          DATE_DIFF(DATE(2008,07,30) ,DUE_DATE,DAY) as DUE_DAYS,
              case when DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) < 0 then AR90_PLUS else 0 end as CURRENT_AR,
          case when DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) > 0  and DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) <= 15
          then AR90_PLUS else 0 end as AR0_15,
              case when DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) > 15  and DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) <= 30
          then AR90_PLUS else 0 end as AR16_30,
              case when DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) > 30  and DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) <= 60
          then AR90_PLUS else 0 end as AR31_60,
              case when DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) > 60  and DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) <= 90
          then AR90_PLUS else 0 end as AR61_90,
              case when DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) > 90  then AR90_PLUS else 0 end as AR90_PLUS,
              case when DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) < 0 then USD_90_PLUS else 0 end as USD_CURRENT_AR,
          case when DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) > 0  and DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) <= 15
          then USD_90_PLUS else 0 end as USD_AR0_15,
              case when DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) > 15  and DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) <= 30
          then USD_90_PLUS else 0 end as USD_AR16_30,
              case when DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) > 30  and DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) <= 60
          then USD_90_PLUS else 0 end as USD_AR31_60,
              case when DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) > 60  and DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) <= 90
          then USD_90_PLUS else 0 end as USD_AR61_90,
              case when DATE_DIFF(DATE(2008,07,30),DUE_DATE,DAY) > 90  then USD_90_PLUS else 0 end as USD_90_PLUS,
              PMT_SCHED_ID,
              CUSTOMER_TRX_ID,
              TRX_NUMBER,
              ORG_ID,
              CURRENCY,
              BILL_TO_SITE_USE_ID,
              AR_CLASS

          from Looker_AR_Data.KPI_Fact_AR_AGING;;

  }


  dimension: AGING_AS_OF_DATE {
    type:  date
  }

  dimension: DUE_DATE {
    type: date

  }


  dimension: DUE_DAYS{

    type:  number
  }

  dimension: CURRENT_AR{

    type:  number
  }

  measure: CURRENT_AR1  {
    type: sum
    sql: ${TABLE}.CURRENT_AR ;;
  }


  dimension: AR0_15{

    type:  number
  }

  measure: 0_15 {
    type: sum
    sql: ${TABLE}.AR0_15 ;;
  }
  dimension: AR16_30{

    type:  number
  }

  measure: 16_30 {
    type: sum
    sql: ${TABLE}.AR16_30 ;;
  }

  dimension: AR31_60{

    type:  number
  }

  measure: 31_60 {
    type: sum
    sql: ${TABLE}.AR31_60 ;;
  }


  dimension: AR61_90{

    type:  number
  }

  measure: 61_90 {
    type: sum
    sql: ${TABLE}.AR61_90 ;;
  }
  dimension: AR90_PLUS{

    type:  number
  }

  measure: 90PLUS {
    type: sum
    sql: ${TABLE}.AR90_PLUS ;;
  }

  measure:Total_Aging  {
    type: sum
    sql: ${AR0_15}+${AR16_30}+${AR31_60}+${AR61_90}+${AR90_PLUS} ;;
    value_format_name: usd
  }


  measure: TOTAL_AGING_AGG1 {
    type: number
    sql: ${Total_Aging} ;;
  }
  dimension: USD_CURRENT_AR{

    type:  number
    value_format_name: usd
    label: "Open Balance"
  }  dimension: USD_AR0_15{

    type:  number
    value_format_name: usd
  }  dimension: USD_AR16_30{

    type:  number
    value_format_name: usd
    label: "Over 15 Days"
  }  dimension: USD_AR31_60{

    type:  number
    value_format_name: usd
    label: "Over 30 Days"
  }  dimension: USD_AR61_90{

    type:  number
    value_format_name: usd
    label: "Over 60 Days"
  }  dimension: USD_90_PLUS{

    type:  number
    value_format_name: usd
    label: "Over 90 Days"
  }
  dimension: CURRENCY {
    type: string
  }
  dimension: AR_CLASS {
    type: string
  }
  dimension: PMT_SCHED_ID {
    type: string
  }
  dimension: CUSTOMER_TRX_ID {
    type: string
  }
  dimension: TRX_NUMBER {
    type: string
  }
  dimension: ORG_ID {
    type: string
  }
  dimension: BILL_TO_SITE_USE_ID {
    type: string
  }
}
