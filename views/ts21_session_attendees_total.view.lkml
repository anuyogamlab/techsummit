view: ts21_session_attendees_total {
  sql_table_name: `ts21_dataset.ts21_session_attendees_total`
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
    type: number
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

  dimension: recording_count {
    type: number
    sql: ${TABLE}.Recording_Count ;;
  }

  dimension: session_type {
    type: string
    sql: ${TABLE}.Session_Type ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: total_attendance {
    type: number
    sql: ${TABLE}.Total_Attendance ;;
  }

  dimension: track {
    type: string
    sql: ${TABLE}.Track ;;
    drill_fields: [title]
  }

  dimension: event_date {
    type: string
    sql: TRIM(SUBSTR(${TABLE}.Date___Time,0,11)) ;;
    drill_fields: [title]
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: attendees_recorded {
    type: sum
    sql: ${recording_count} ;;
  }

  measure: attendees_live {
    type: sum
    sql: ${livestream_attendance} ;;
  }

  measure: attendees_sum {
    type: sum
    sql: ${total_attendance} ;;
    drill_fields: [attendees_recorded,attendees_live]
  }

  measure: total_duration {
    type: sum
    sql: ${duration} ;;
    value_format: "0"
  }
}
