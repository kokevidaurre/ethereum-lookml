view: balances {
  sql_table_name: `bigquery-public-data.crypto_ethereum.balances`
    ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: eth_balance {
    type: number
    sql: ${TABLE}.eth_balance ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
