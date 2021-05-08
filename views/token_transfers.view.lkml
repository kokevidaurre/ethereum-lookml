view: token_transfers {
  sql_table_name: `bigquery-public-data.crypto_ethereum.token_transfers`
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

  dimension: log_index {
    type: number
    sql: ${TABLE}.log_index ;;
  }

  dimension: to_address {
    type: string
    sql: ${TABLE}.to_address ;;
  }

  dimension: token_address {
    type: string
    sql: ${TABLE}.token_address ;;
  }

  dimension: transaction_hash {
    type: string
    sql: ${TABLE}.transaction_hash ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
