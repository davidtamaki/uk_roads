- connection: uk-accidents

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards



- explore: vehicle
  label: 'UK Accidents'
  view_label: 'Vehicles'
  joins:
    - join: accident
      view_label: 'Accidents'
      sql_on: ${accident.accident_index} = ${vehicle.accident_index}
      relationship: many_to_one
    - join: casualty
      view_label: 'Casualties'
      sql_on: ${casualty.accident_index} = ${accident.accident_index}
      relationship: one_to_many

- explore: casualty

