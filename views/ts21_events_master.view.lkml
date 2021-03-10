view: ts21_events_master {
  sql_table_name: `ts21_dataset.ts21_events_master`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: date___time {
    type: string
    sql: ${TABLE}.Date___Time ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.Duration ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.Owner ;;
  }

  dimension: presenter {
    type: string
    sql: ${TABLE}.Presenter ;;
  }

  dimension: session_type {
    type: string
    sql: ${TABLE}.Session_Type ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: topic {
    type: string
    sql: ${TABLE}.Topic ;;
  }

  dimension: track {
    type: string
    sql: ${TABLE}.Track ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
