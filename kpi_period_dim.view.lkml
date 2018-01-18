view: kpi_period_dim {
  sql_table_name: Looker_AR_Data.KPI_PERIOD_DIM ;;

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.DAY_OF_WEEK ;;
  }

  dimension: days {
    type: number
    sql: ${TABLE}.DAYS ;;
  }

  dimension_group: Invoice {
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
      fiscal_month_num
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EMX_DATE ;;
    #group_label: "Invoice Date"
  }

  dimension: emx_gl_period {
    type: string
    sql: ${TABLE}.EMX_GL_PERIOD ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: lvl {
    type: number
    sql: ${TABLE}.LVL ;;
  }

  dimension: period_num {
    type: number
    sql: ${TABLE}.PERIOD_NUM ;;
  }

  dimension: period_type {
    type: string
    sql: ${TABLE}.PERIOD_TYPE ;;
  }

  dimension: period_year {
    type: number
    sql: ${TABLE}.PERIOD_YEAR ;;
  }

  dimension: quarter_num {
    type: number
    sql: ${TABLE}.QUARTER_NUM ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.START_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
