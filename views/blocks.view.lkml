view: blocks {
  sql_table_name: `bigquery-public-data.crypto_ethereum.blocks`
    ;;

  dimension: difficulty {
    type: number
    sql: ${TABLE}.difficulty ;;
  }

  dimension: extra_data {
    type: string
    sql: ${TABLE}.extra_data ;;
  }

  dimension: gas_limit {
    type: number
    sql: ${TABLE}.gas_limit ;;
  }

  dimension: gas_used {
    type: number
    sql: ${TABLE}.gas_used ;;
  }

  dimension: hash {
    primary_key: yes
    type: string
    sql: ${TABLE}.`hash` ;;
  }

  dimension: logs_bloom {
    type: string
    sql: ${TABLE}.logs_bloom ;;
  }

  dimension: miner {
    type: string
    sql: ${TABLE}.miner ;;
  }

  dimension: nonce {
    type: string
    sql: ${TABLE}.nonce ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: parent_hash {
    type: string
    sql: ${TABLE}.parent_hash ;;
  }

  dimension: receipts_root {
    type: string
    sql: ${TABLE}.receipts_root ;;
  }

  dimension: sha3_uncles {
    type: string
    sql: ${TABLE}.sha3_uncles ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: state_root {
    type: string
    sql: ${TABLE}.state_root ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: total_difficulty {
    type: number
    sql: ${TABLE}.total_difficulty ;;
  }

  dimension: transaction_count {
    type: number
    sql: ${TABLE}.transaction_count ;;
  }

  dimension: transactions_root {
    type: string
    sql: ${TABLE}.transactions_root ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
