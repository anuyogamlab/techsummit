connection: "techsummit-fieldworks-bigquery-data"

# include all the views
include: "/views/**/*.view"

datagroup: ts1_data_analytics1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ts1_data_analytics1_default_datagroup

explore: ts21_events_master {}

explore: ts21_reg_analytics {}

explore: ts21_reg_analytics_transformed {}

explore: ts21_session_attendees_actual {}

explore: ts21_session_attendees_total {}

explore: ts21_viewer_analytics {}
