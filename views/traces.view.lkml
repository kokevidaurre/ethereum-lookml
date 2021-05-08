view: traces {
  sql_table_name: `bigquery-public-data.crypto_ethereum.traces`
    ;;
  drill_fields: [trace_id]

  dimension: trace_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.trace_id ;;
  }

  dimension: block_hash {
    type: string
    sql: ${TABLE}.block_hash ;;
  }

  dimension: block_number {
    type: number
    sql: ${TABLE}.block_number ;;
  }

  dimension_group: block_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.block_timestamp ;;
  }

  dimension: call_type {
    type: string
    sql: ${TABLE}.call_type ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }

  dimension: from_address {
    type: string
    sql: ${TABLE}.from_address ;;
  }

  dimension: gas {
    type: number
    sql: ${TABLE}.gas ;;
  }

  dimension: gas_used {
    type: number
    sql: ${TABLE}.gas_used ;;
  }

  dimension: input {
    type: string
    sql: ${TABLE}.input ;;
  }

  dimension: output {
    type: string
    sql: ${TABLE}.output ;;
  }

  dimension: reward_type {
    type: string
    sql: ${TABLE}.reward_type ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: subtraces {
    type: number
    sql: ${TABLE}.subtraces ;;
  }

  dimension: to_address {
    type: string
    sql: ${TABLE}.to_address ;;
  }

  dimension: trace_address {
    type: string
    sql: ${TABLE}.trace_address ;;
  }

  dimension: trace_type {
    type: string
    sql: ${TABLE}.trace_type ;;
  }

  dimension: transaction_hash {
    type: string
    sql: ${TABLE}.transaction_hash ;;
  }

  dimension: transaction_index {
    type: number
    sql: ${TABLE}.transaction_index ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [trace_id]
  }
}
