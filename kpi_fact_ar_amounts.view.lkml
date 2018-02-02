view: kpi_fact_ar_amounts {
  sql_table_name: KPI_ANALYTICS.KPI_Fact_AR_AMOUNTS ;;

  dimension: adjusted_amount {
    type: number
    sql: ${TABLE}.ADJUSTED_AMOUNT ;;
  }

  dimension: adjustment_pending {
    type: number
    sql: ${TABLE}.ADJUSTMENT_PENDING ;;
  }

  dimension: applied_amount {
    type: number
    sql: ${TABLE}.APPLIED_AMOUNT ;;
  }

  dimension_group: apply {
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
    sql: ${TABLE}.APPLY_DATE ;;
  }

  dimension_group: apply_gl {
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
    sql: ${TABLE}.APPLY_GL_DATE ;;
  }


  dimension: batch_id {
    type: number
    sql: ${TABLE}.BATCH_ID ;;
  }

  dimension: bill_to_address_id {
    type: number
    sql: ${TABLE}.BILL_TO_ADDRESS_ID ;;
  }

  dimension: bill_to_contact_id {
    type: number
    sql: ${TABLE}.BILL_TO_CONTACT_ID ;;
  }

  dimension: bill_to_site_use_id {
    type: number
    sql: ${TABLE}.BILL_TO_SITE_USE_ID ;;
  }

  dimension: credited_amount {
    type: number
    sql: ${TABLE}.CREDITED_AMOUNT ;;
  }

  dimension: cust_trx_type_id {
    type: number
    sql: ${TABLE}.CUST_TRX_TYPE_ID ;;
  }

  dimension: customer_trx_id {
    type: number
    sql: ${TABLE}.CUSTOMER_TRX_ID ;;
  }

  dimension: discount_original {
    type: number
    sql: ${TABLE}.DISCOUNT_ORIGINAL ;;
  }

  dimension: discount_remaining {
    type: number
    sql: ${TABLE}.DISCOUNT_REMAINING ;;
  }

  dimension: disputed_amount {
    type: number
    sql: ${TABLE}.DISPUTED_AMOUNT ;;
  }

  dimension: due_month {
    type: string
    sql: ${TABLE}.DUE_MONTH ;;
  }

  dimension: extended_amount {
    type: number
    sql: ${TABLE}.EXTENDED_AMOUNT ;;
  }

  dimension: invoice_currency_code {
    type: string
    sql: ${TABLE}.INVOICE_CURRENCY_CODE ;;
  }

  dimension: invoicing_rule_id {
    type: number
    sql: ${TABLE}.INVOICING_RULE_ID ;;
  }

  dimension: line_original {
    type: number
    sql: ${TABLE}.LINE_ORIGINAL ;;
  }

  dimension: line_remaining {
    type: number
    sql: ${TABLE}.LINE_REMAINING ;;
  }

  dimension_group: max_due {
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
    sql: ${TABLE}.MAX_DUE_DATE ;;
  }

  dimension_group: max_gl {
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
    sql: ${TABLE}.MAX_GL_DATE ;;
  }

  dimension_group: min_due {
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
    sql: ${TABLE}.MIN_DUE_DATE ;;
  }

  dimension_group: min_gl {
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
    sql: ${TABLE}.MIN_GL_DATE ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: original_due_amount {
    type: number
    sql: ${TABLE}.ORIGINAL_DUE_AMOUNT ;;
  }

  dimension: remaining_amount {
    type: number
    sql: ${TABLE}.REMAINING_AMOUNT ;;
  }

  dimension: salesrep_org_id {
    type: string
    sql: ${TABLE}.SALESREP_ORG_ID ;;
  }

  dimension: set_of_books_id {
    type: number
    sql: ${TABLE}.SET_OF_BOOKS_ID ;;
  }

  dimension: ship_to_contact_id {
    type: number
    sql: ${TABLE}.SHIP_TO_CONTACT_ID ;;
  }

  dimension: ship_to_site_use_id {
    type: number
    sql: ${TABLE}.SHIP_TO_SITE_USE_ID ;;
  }

  dimension: sold_to_customer_id {
    type: number
    sql: ${TABLE}.SOLD_TO_CUSTOMER_ID ;;
  }

  dimension: tax_original {
    type: number
    sql: ${TABLE}.TAX_ORIGINAL ;;
  }

  dimension: tax_remaining {
    type: number
    sql: ${TABLE}.TAX_REMAINING ;;
  }

  dimension: territory_id {
    type: number
    sql: ${TABLE}.TERRITORY_ID ;;
  }

  dimension_group: trx {
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
    sql: ${TABLE}.TRX_DATE ;;
  }

  dimension: trx_number {
    type: string
    sql: ${TABLE}.TRX_NUMBER ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
