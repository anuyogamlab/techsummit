view: ts21_session_attendees_actual {
  sql_table_name: `ts21_dataset.ts21_session_attendees_actual`
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

  dimension: livestream_attendance {
    type: string
    sql: ${TABLE}.Livestream_Attendance ;;
  }

  dimension: moderator___click_here_for_instructions {
    type: string
    sql: ${TABLE}.Moderator___CLICK_HERE_for_INSTRUCTIONS ;;
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

  dimension: track {
    type: string
    sql: ${TABLE}.Track ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
