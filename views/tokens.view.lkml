view: tokens {
  sql_table_name: `bigquery-public-data.crypto_ethereum.tokens`
    ;;

  dimension: address {
    primary_key: yes
    type: string
    sql: ${TABLE}.address ;;
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

  dimension: decimals {
    type: string
    sql: ${TABLE}.decimals ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: symbol {
    type: string
    sql: ${TABLE}.symbol ;;
  }

  dimension: total_supply {
    type: string
    sql: ${TABLE}.total_supply ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
