# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: logs {
  hidden: yes

  join: logs__topics {
    view_label: "Logs: Topics"
    sql: LEFT JOIN UNNEST(${logs.topics}) as logs__topics ;;
    relationship: one_to_many
  }
}

view: logs {
  sql_table_name: `bigquery-public-data.crypto_ethereum.logs`
    ;;

  dimension: address {
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

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: log_index {
    type: number
    sql: ${TABLE}.log_index ;;
  }

  dimension: topics {
    hidden: yes
    sql: ${TABLE}.topics ;;
  }

  dimension: transaction_hash {
    type: string
    sql: ${TABLE}.transaction_hash ;;
  }

  dimension: transaction_index {
    type: number
    sql: ${TABLE}.transaction_index ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: logs__topics {
  dimension: logs__topics {
    type: string
    sql: logs__topics ;;
  }
}
