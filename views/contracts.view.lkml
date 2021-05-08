# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: contracts {
  hidden: yes

  join: contracts__function_sighashes {
    view_label: "Contracts: Function Sighashes"
    sql: LEFT JOIN UNNEST(${contracts.function_sighashes}) as contracts__function_sighashes ;;
    relationship: one_to_many
  }
}

view: contracts {
  sql_table_name: `bigquery-public-data.crypto_ethereum.contracts`
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

  dimension: bytecode {
    type: string
    sql: ${TABLE}.bytecode ;;
  }

  dimension: function_sighashes {
    hidden: yes
    sql: ${TABLE}.function_sighashes ;;
  }

  dimension: is_erc20 {
    type: yesno
    sql: ${TABLE}.is_erc20 ;;
  }

  dimension: is_erc721 {
    type: yesno
    sql: ${TABLE}.is_erc721 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: contracts__function_sighashes {
  dimension: contracts__function_sighashes {
    type: string
    sql: contracts__function_sighashes ;;
  }
}
