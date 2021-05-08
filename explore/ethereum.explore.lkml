include: "/views/**.view"


explore: balances {
  view_name: balances
}

explore: amended_tokens {
  view_name: amended_tokens

}

explore: ethereum {
  view_name: blocks

  conditionally_filter: {
    filters: [blocks.timestamp_date: "30 days ago for 30 day"]
  }

  join: contracts {
    relationship: one_to_many
    sql_on: ${blocks.hash} = ${contracts.block_hash} ;;
  }

  join: logs {
    relationship: one_to_many
    sql_on: ${blocks.hash} = ${logs.block_hash} ;;
  }

  join: transactions {
    relationship: one_to_many
    sql_on: ${blocks.hash} = ${transactions.block_hash} ;;
  }

  join: token_transfers {
    relationship: one_to_many
    sql_on: ${blocks.hash} = ${token_transfers.block_hash} ;;
  }

  join: tokens {
    relationship: one_to_many
    sql_on: ${blocks.hash} = ${tokens.block_hash};;
  }

  join: traces {
    relationship: one_to_many
    sql_on: ${blocks.hash} = ${traces.block_hash} ;;
  }
}
