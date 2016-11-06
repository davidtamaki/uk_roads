connection: "uk-accidents"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: vehicle {
  label: "UK Accidents"
  view_label: "Vehicles"

  join: accident {
    view_label: "Accidents"
    sql_on: ${accident.accident_index} = ${vehicle.accident_index} ;;
    relationship: many_to_one
  }

  join: latlong {
    view_label: "Accidents"
    sql_on: ${accident.east_north} = ${latlong.east_north} ;;
    relationship: one_to_one
  }

  join: casualty {
    view_label: "Casualties"
    sql_on: ${casualty.accident_index} = ${accident.accident_index} ;;
    relationship: one_to_many
  }
}

explore: casualty {}
