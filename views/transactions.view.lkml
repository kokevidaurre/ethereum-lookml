
view: transactions {
  sql_table_name: `bigquery-public-data.crypto_ethereum.transactions`
    ;;

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

  dimension: from_address {
    type: string
    sql: ${TABLE}.from_address ;;
  }

  dimension: gas {
    type: number
    sql: ${TABLE}.gas ;;
  }

  dimension: gas_price {
    type: number
    sql: ${TABLE}.gas_price ;;
  }

  dimension: hash {
    primary_key: yes
    type: string
    sql: ${TABLE}.`hash` ;;
  }

  dimension: input {
    type: string
    sql: ${TABLE}.input ;;
  }

  dimension: nonce {
    type: number
    sql: ${TABLE}.nonce ;;
  }

  dimension: receipt_contract_address {
    type: string
    sql: ${TABLE}.receipt_contract_address ;;
  }

  dimension: receipt_cumulative_gas_used {
    type: number
    sql: ${TABLE}.receipt_cumulative_gas_used ;;
  }

  dimension: receipt_gas_used {
    type: number
    sql: ${TABLE}.receipt_gas_used ;;
  }

  dimension: receipt_root {
    type: string
    sql: ${TABLE}.receipt_root ;;
  }

  dimension: receipt_status {
    type: number
    sql: ${TABLE}.receipt_status ;;
  }

  dimension: to_address {
    type: string
    sql: ${TABLE}.to_address ;;
  }

  dimension: transaction_index {
    type: number
    sql: ${TABLE}.transaction_index ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: value_avergae {
    type: average
    sql: ${value} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
