view: ts21_reg_analytics_transformed {
  sql_table_name: `ts21_dataset.ts21_reg_analytics_transformed`
    ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
    drill_fields: [state, city]
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: ldap {
    type: string
    sql: ${TABLE}.ldap ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: metadata {
    type: string
    sql: ${TABLE}.metadata ;;
  }

  dimension: metadataextract {
    type: string
    sql: ${TABLE}.metadataextract ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.sessionId ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
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

  dimension: user_agent {
    type: string
    sql: ${TABLE}.userAgent ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sessioncount {
    type: count_distinct
    sql: ${TABLE}.sessionId ;;
  }

  measure: usercount {
    type: count_distinct
    sql: ${TABLE}.ldap ;;
  }
}
