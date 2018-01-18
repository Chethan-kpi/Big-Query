view: kpi_fact_ar_aging {
  sql_table_name: Looker_AR_Data.KPI_Fact_AR_AGING ;;

  dimension: Snapshot_Date{
    type: date
    sql: DATE_ADD(${kpi_fact_ar_aging.due_date},INTERVAL ${kpi_fact_ar_aging.days_overdue} DAY) ;;
  }

  dimension: Aging_As_of_Date{
    type: date
    sql: DATE(2008,09,30) ;;
  }

  dimension: date_diff  {
    type :  number
    sql:  cast(date_diff(${Aging_As_of_Date},${due_date},day) as INT64);;
   }

  dimension: test_number {
    type: number
    sql: 60 ;;
  }

  # dimension: 1_bucket  {
  # sql: {% assign var=kpi_fact_ar_aging.date_diff._value | plus:0 %}
  #     {% if var < kpi_fact_ar_aging.date_diff._value %}
  #     ${ar01_15}
  #        {% else %}
   #           0
   #         {% endif %}

  # ;;
  #     }


  measure: ar01_15 {
    type: sum
    sql: ${TABLE}.AR01_15 ;;
  }

  measure: ar01_15_new {
    type: sum
    sql: ${TABLE}.AR90_PLUS ;;
  }
  measure: ar16_30 {
    type: sum
    sql: ${TABLE}.AR16_30 ;;
  }

  measure: ar31_60 {
    type: sum
    sql: ${TABLE}.AR31_60 ;;
  }

  measure: ar61_90 {
    type: sum
    sql: ${TABLE}.AR61_90 ;;
  }

  dimension: ar90_plus1 {
    type: number
    sql: ${TABLE}.AR90_PLUS ;;
  }
  dimension: ar90_plus {
    type: number
    sql: ${TABLE}.AR90_PLUS ;;
  }

  dimension: ar_class {
    type: string
    sql: ${TABLE}.AR_CLASS ;;
  }

  dimension: bill_to_site_use_id {
    type: number
    sql: ${TABLE}.BILL_TO_SITE_USE_ID ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  measure: current_ar {
    type: sum
    sql: ${TABLE}.CURRENT_AR ;;
  }

  dimension: customer_trx_id {
    type: number
    sql: ${TABLE}.CUSTOMER_TRX_ID ;;
  }

  dimension: days_overdue {
    type: number
    sql: ${TABLE}.DAYS_OVERDUE ;;
  }

  dimension_group: due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      fiscal_year,
      fiscal_quarter,
      fiscal_quarter_of_year,
      fiscal_month_num]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DUE_DATE ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: pmt_sched_id {
    type: number
    sql: ${TABLE}.PMT_SCHED_ID ;;
  }

  dimension: trx_number {
    type: string
    sql: ${TABLE}.TRX_NUMBER ;;
  }

  measure: usd_01_15 {
    type: sum
    sql: ${TABLE}.USD_01_15 ;;
  }

  measure: usd_16_30 {
    type: sum
    sql: ${TABLE}.USD_16_30 ;;
  }

  measure: usd_31_60 {
    type: sum
    sql: ${TABLE}.USD_31_60 ;;
  }

  measure: usd_61_90 {
    type: sum
    sql: ${TABLE}.USD_61_90 ;;
  }

  measure: usd_90_plus {
    type: sum
    sql: ${TABLE}.USD_90_PLUS ;;
  }

  measure: usd_ar {
    type: sum
    sql: ${TABLE}.USD_AR ;;
    value_format_name: usd_millions
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: count_List {
    type: list
    list_field: currency

    drill_fields: []
  }
  measure: Total_Aging_USD {
    sql: ${usd_01_15}+${usd_16_30}+${usd_31_60}+${usd_61_90}+${usd_90_plus} ;;
       drill_fields: [detail*]
    value_format_name: usd_millions
  }

  measure: Total_Aging {
    sql: {ar16_30}+${ar31_60}+${ar61_90}+${ar90_plus} ;;
        drill_fields: [detail*]
    required_fields: [currency]
    value_format_name: decimal_2
  }

  dimension: Aging_Date{
    type: date
    sql: date(2008,09,30);;
  }

  dimension: AR01_15New{
    type: number
    sql:( select max(${ar90_plus1})+ 5000 from Looker_AR_Data.KPI_Fact_AR_AGING
           );;
  }

  dimension: AR15_30New{
    type: number
    sql:( select max(${ar90_plus1})+ 10000 from Looker_AR_Data.KPI_Fact_AR_AGING
      );;
  }

  dimension: AR30_45New{
    type: number
    sql:( select max(${ar90_plus1})+ 15000 from Looker_AR_Data.KPI_Fact_AR_AGING
      );;
  }

  dimension: AR45_60New{
    type: number
    sql:( select max(${ar90_plus1})+ 20000 from Looker_AR_Data.KPI_Fact_AR_AGING
      );;
  }

  dimension: AR60_90New{
    type: number
    sql:( select max(${ar90_plus1})+ 25000 from Looker_AR_Data.KPI_Fact_AR_AGING
      );;
  }

  dimension: AR90_PLUSNEW{
    type: number
    sql:( select max(${ar90_plus1})+ 35000 from Looker_AR_Data.KPI_Fact_AR_AGING
      );;
  }


  set: detail {
    fields:[ar_class,customer_trx_id,currency,kpi_dim_cust_trx_id.ledger_short_name, kpi_dim_cust_trx_id.ledger_name, kpi_dim_cust_trx_id.op_unit_name,
 kpi_dim_cust_trx_id.legal_entity_name]
    }
}
