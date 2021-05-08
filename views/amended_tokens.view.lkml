view: amended_tokens {
  sql_table_name: `bigquery-public-data.crypto_ethereum.amended_tokens`
    ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
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

  measure: count {
    type: count
    drill_fields: [name]
  }
}
