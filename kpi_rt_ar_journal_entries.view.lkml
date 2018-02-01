view: kpi_rt_ar_journal_entries {
  sql_table_name: Looker_AR_Data.KPI_RT_AR_JOURNAL_ENTRIES ;;

  dimension: accounted_cr {
    type: number
    sql: ${TABLE}.ACCOUNTED_CR ;;
  }

  dimension: accounted_dr {
    type: number
    sql: ${TABLE}.ACCOUNTED_DR ;;
  }

  dimension: accounting_code_combination {
    type: string
    sql: ${TABLE}.ACCOUNTING_CODE_COMBINATION ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: document_category {
    type: string
    sql: ${TABLE}.DOCUMENT_CATEGORY ;;
  }

  dimension: document_sequence_name {
    type: string
    sql: ${TABLE}.DOCUMENT_SEQUENCE_NAME ;;
  }

  dimension: document_sequence_number {
    type: string
    sql: ${TABLE}.DOCUMENT_SEQUENCE_NUMBER ;;
  }

  dimension: entered_cr {
    type: number
    sql: ${TABLE}.ENTERED_CR ;;
  }

  dimension: entered_currency {
    type: string
    sql: ${TABLE}.ENTERED_CURRENCY ;;
  }

  dimension: entered_dr {
    type: number
    sql: ${TABLE}.ENTERED_DR ;;
  }

  dimension: event_class_name {
    type: string
    sql: ${TABLE}.EVENT_CLASS_NAME ;;
  }

  dimension: event_type_name {
    type: string
    sql: ${TABLE}.EVENT_TYPE_NAME ;;
  }

  dimension_group: gl {
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
    sql: ${TABLE}.GL_DATE ;;
  }

  dimension: include_zero_lines {
    type: number
    sql: ${TABLE}.INCLUDE_ZERO_LINES ;;
  }

  dimension: je_category_name {
    type: string
    sql: ${TABLE}.JE_CATEGORY_NAME ;;
  }

  dimension: je_source_name {
    type: string
    sql: ${TABLE}.JE_SOURCE_NAME ;;
  }

  dimension: journal_entry_status {
    type: string
    sql: ${TABLE}.JOURNAL_ENTRY_STATUS ;;
  }

  dimension: journal_line_number {
    type: number
    sql: ${TABLE}.JOURNAL_LINE_NUMBER ;;
  }

  dimension: journal_name {
    type: string
    sql: ${TABLE}.JOURNAL_NAME ;;
  }

  dimension: key_cols_end {
    type: string
    sql: ${TABLE}.KEY_COLS_END ;;
  }

  dimension: ledger_currency {
    type: string
    sql: ${TABLE}.LEDGER_CURRENCY ;;
  }

  dimension: ledger_id {
    type: number
    sql: ${TABLE}.LEDGER_ID ;;
  }

  dimension: ledger_name {
    type: string
    sql: ${TABLE}.LEDGER_NAME ;;
  }

  dimension: line_description {
    type: string
    sql: ${TABLE}.LINE_DESCRIPTION ;;
  }

  dimension: line_number {
    type: number
    sql: ${TABLE}.LINE_NUMBER ;;
  }

  dimension: metric_cols_begin {
    type: string
    sql: ${TABLE}.METRIC_COLS_BEGIN ;;
  }

  dimension: period_name {
    type: string
    sql: ${TABLE}.PERIOD_NAME ;;
  }

  dimension: period_year {
    type: number
    sql: ${TABLE}.PERIOD_YEAR ;;
  }

  dimension: posted_status {
    type: string
    sql: ${TABLE}.POSTED_STATUS ;;
  }

  dimension: process_category {
    type: string
    sql: ${TABLE}.PROCESS_CATEGORY ;;
  }

  dimension_group: transaction {
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
    sql: ${TABLE}.TRANSACTION_DATE ;;
  }

  dimension: transaction_number {
    type: string
    sql: ${TABLE}.TRANSACTION_NUMBER ;;
  }

  dimension: transfer_to_gl_status {
    type: yesno
    sql: ${TABLE}.TRANSFER_TO_GL_STATUS ;;
  }

  dimension: unrounded_accounted_cr {
    type: number
    sql: ${TABLE}.UNROUNDED_ACCOUNTED_CR ;;
  }

  dimension: unrounded_accounted_dr {
    type: number
    sql: ${TABLE}.UNROUNDED_ACCOUNTED_DR ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      event_type_name,
      event_class_name,
      je_source_name,
      ledger_name,
      period_name,
      je_category_name,
      journal_name,
      document_sequence_name
    ]
  }
}
