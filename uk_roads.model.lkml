connection: "uk-accidents"

include: "*.view"
include: "*.dashboard"

persist_for: "10000 hours"

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

  join: cycle_accident_cause {
    sql_on: ${accident.accident_index} = ${cycle_accident_cause.accident_index} ;;
    relationship: many_to_one
  }

  join: casualty {
    view_label: "Casualties"
    sql_on: ${casualty.accident_index} = ${accident.accident_index} ;;
    relationship: one_to_many
  }

  join: postcode {
    sql_on: ${postcode.lat_round} = ${latlong.lat_round} AND ${postcode.lon_round} = ${latlong.lon_round} ;;
    relationship: many_to_one
  }
}

explore: casualty {}
