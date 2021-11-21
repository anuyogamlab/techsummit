#Tech Summit Analytics
Tech Summit is a technical event designed for all customer-facing roles, intended as fast and deep immersion into technical topics. It aims to reinforce the knowledge sharing amongst the Technology Practices. It could be considered the “CE Tech Summit''. 

##Summit Principles:
Technical Depth - Sessions will clear the mind for everything technical “what a techie wants”, more hints and tips “confidential” info.
Less Corporate - this is aimed at technical practitioners, it’s not a marketing event.
Empowering the Technical Community - Sessions will be lively, engaging, and entertaining.

Tech summit sessions data like registered members, attendees, feedback are in BigQuery. 

Some fields are in nested JSON format.

These are queries written in BQ to extract underlying data for analytics:
https://github.com/anuyogamlab/techsummit/blob/master/BigQuery

Following are the six Data Models built in Look ML. These have the facts and dimensions for the Looker report to present KPIs like number of attendees segmenting by tracks, geography etc.
Ts21_events_master
Ts21_reg_analytics
Ts21_reg_analytics_transformed
Ts21_session_attendees_actual
Ts21_session_attendees_total
Ts21_viewer_analytics

You can find the models code here: https://github.com/anuyogamlab/techsummit
