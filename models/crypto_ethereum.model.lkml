connection: "bq"

include: "/views/**.view"
include: "/explore/**.lkml"

datagroup: crypto_ethereum_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: crypto_ethereum_default_datagroup
