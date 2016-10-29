- connection: uk-accidents

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

# - explore: accident
# 
# - explore: casualty
# 
# - explore: vehicle



- explore: vehicle_map
  label: 'UK Accidents'
  view_label: 'Vehicles'
  joins:
    - join: accident_map
      view_label: 'Accidents'
      sql_on: ${accident_map.accident_index} = ${vehicle_map.accident_index}
      relationship: many_to_one
    - join: casualty_map
      view_label: 'Casualties'
      sql_on: ${casualty_map.accident_index} = ${accident_map.accident_index}
      relationship: one_to_many

- explore: casualty_map

