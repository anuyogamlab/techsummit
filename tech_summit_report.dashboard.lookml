- dashboard: tech_summit_report
  title: Tech Summit Report
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: Google Cloud NorthAm Tech Summit 21
    type: text
    title_text: Google Cloud NorthAm Tech Summit 21
    subtitle_text: <img src="https://1000logos.net/wp-content/uploads/2020/05/Google-cloud-logo.jpg"
      width="300" height="200" style="float:left"/>
    body_text: "Thank you to attendees, presenters, and organizers!\n\nOn March 2-4,\
      \ 2021, we presented a keynote from Vint Cerf and other Google Cloud Executives\
      \ and a deep dive into the curriculum for Google Cloud CEs, PSO, TAMs, and CSMs!\
      \ [go/NorthAmTechSummit](http://go/NorthAmTechSummit)\n\nFor Keynotes, Common\
      \ sessions, and Customer Presentations: [go/ts21-keynotes](http://go/ts21-keynotes)\n\
      \nDocs [go/ts21-docu](http://go/ts21-docu)\n\nTech sessions schedule and videos:\
      \ [go/ts21-sched](http://go/ts21-sched)\n\nWhy did we do it?\nWe want to present\
      \ a highly technical event for all customer-facing technical roles. This might\
      \ indicate a need for a regular event in future. \nWe want to encourage knowledge\
      \ and content sharing in the Technology Practices. Such events can help with\
      \ asset generation and best practices.\n\nSummit Design Principles\n\n* __Technical\
      \ Depth__: Sessions will clear the mind for everything technical “what a techie\
      \ wants”, more hints and tips “confidential” info.\n* __Less Corporate__: this\
      \ is aimed at technical practitioners, it’s not a marketing event. \n* __Empowering\
      \ the Technical Community__: Sessions will be lively, engaging, and entertaining."
    row: 0
    col: 0
    width: 10
    height: 12
  - title: On-demand attendees
    name: On-demand attendees
    model: ts1_data_analytics1
    explore: ts21_reg_analytics_transformed
    type: single_value
    fields: [ts21_reg_analytics_transformed.usercount]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#137333"
    single_value_title: On-demand attendees
    defaults_version: 1
    listen: {}
    row: 4
    col: 10
    width: 3
    height: 4
  - title: Minutes of Content
    name: Minutes of Content
    model: ts1_data_analytics1
    explore: ts21_session_attendees_total
    type: single_value
    fields: [ts21_session_attendees_total.total_duration]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FBBC04"
    single_value_title: Minutes of Content
    defaults_version: 1
    listen: {}
    row: 8
    col: 10
    width: 3
    height: 4
  - title: Users by Geography
    name: Users by Geography
    model: ts1_data_analytics1
    explore: ts21_reg_analytics_transformed
    type: looker_map
    fields: [ts21_reg_analytics_transformed.country, ts21_reg_analytics_transformed.usercount]
    sorts: [ts21_reg_analytics_transformed.usercount desc]
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: streets
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 18.466420945285687
    map_longitude: 14.782276153564455
    map_zoom: 2
    map_value_scale_clamp_min: 17
    map_value_scale_clamp_max: 1754
    defaults_version: 1
    listen: {}
    row: 0
    col: 13
    width: 11
    height: 12
  - title: Top 10 Popular Sessions
    name: Top 10 Popular Sessions
    model: ts1_data_analytics1
    explore: ts21_session_attendees_total
    type: looker_grid
    fields: [ts21_session_attendees_total.track, ts21_session_attendees_total.id,
      ts21_session_attendees_total.title, ts21_session_attendees_total.attendees_sum]
    sorts: [ts21_session_attendees_total.attendees_sum desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      ts21_session_attendees_total.track: 145
      ts21_session_attendees_total.id: 96
      ts21_session_attendees_total.title: 453
    series_cell_visualizations:
      ts21_session_attendees_total.attendees_sum:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0,
          options: {steps: 5, stepped: false}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 18
    col: 0
    width: 12
    height: 6
  - title: Number of Sessions by Track
    name: Number of Sessions by Track
    model: ts1_data_analytics1
    explore: ts21_session_attendees_total
    type: looker_pie
    fields: [ts21_session_attendees_total.track, ts21_session_attendees_total.count]
    sorts: [ts21_session_attendees_total.track]
    limit: 500
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    row: 12
    col: 12
    width: 7
    height: 6
  - title: Number of attendees by track
    name: Number of attendees by track
    model: ts1_data_analytics1
    explore: ts21_session_attendees_total
    type: looker_column
    fields: [ts21_session_attendees_total.track, ts21_session_attendees_total.attendees_sum]
    sorts: [ts21_session_attendees_total.attendees_sum desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    series_colors: {}
    defaults_version: 1
    listen: {}
    row: 18
    col: 12
    width: 12
    height: 6
  - title: Top 10 Device User Agents
    name: Top 10 Device User Agents
    model: ts1_data_analytics1
    explore: ts21_reg_analytics_transformed
    type: looker_grid
    fields: [ts21_reg_analytics_transformed.user_agent, ts21_reg_analytics_transformed.usercount]
    sorts: [ts21_reg_analytics_transformed.usercount desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels: {}
    series_column_widths:
      ts21_reg_analytics_transformed.user_agent: 718
    series_cell_visualizations:
      ts21_reg_analytics_transformed.usercount:
        is_active: true
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    up_color: "#4285F4"
    down_color: "#EA4335"
    total_color: "#FBBC04"
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 24
    col: 12
    width: 12
    height: 7
  - title: Total Attendees
    name: Total Attendees
    model: ts1_data_analytics1
    explore: ts21_session_attendees_total
    type: single_value
    fields: [ts21_session_attendees_total.attendees_sum]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#185ABC"
    single_value_title: Attendees
    defaults_version: 1
    row: 0
    col: 10
    width: 3
    height: 4
  - title: Top Tracks by Popular Attendance
    name: Top Tracks by Popular Attendance
    model: ts1_data_analytics1
    explore: ts21_session_attendees_total
    type: looker_wordcloud
    fields: [ts21_session_attendees_total.track, ts21_session_attendees_total.attendees_sum]
    sorts: [ts21_session_attendees_total.attendees_sum desc]
    color_application: undefined
    rotation: false
    series_types: {}
    defaults_version: 1
    row: 12
    col: 0
    width: 12
    height: 6
  - title: Total Content Duration by Track
    name: Total Content Duration by Track
    model: ts1_data_analytics1
    explore: ts21_session_attendees_total
    type: looker_column
    fields: [ts21_session_attendees_total.track, ts21_session_attendees_total.total_duration]
    sorts: [ts21_session_attendees_total.total_duration desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: Total Duration (in minutes), orientation: left, series: [{axisId: ts21_session_attendees_total.total_duration,
            id: ts21_session_attendees_total.total_duration, name: Total Duration}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_colors: {}
    defaults_version: 1
    listen: {}
    row: 24
    col: 0
    width: 12
    height: 7
  - title: Live Session Engagements by Day
    name: Live Session Engagements by Day
    model: ts1_data_analytics1
    explore: ts21_session_attendees_total
    type: looker_waterfall
    fields: [ts21_session_attendees_total.event_date, ts21_session_attendees_total.attendees_live]
    filters:
      ts21_session_attendees_total.event_date: "-OnDemand"
    sorts: [ts21_session_attendees_total.event_date]
    limit: 500
    up_color: "#4285F4"
    down_color: "#EA4335"
    total_color: "#FBBC04"
    show_value_labels: false
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    x_axis_gridlines: false
    show_view_names: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    row: 12
    col: 19
    width: 5
    height: 6
