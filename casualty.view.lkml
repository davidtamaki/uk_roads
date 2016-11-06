view: casualty {
  sql_table_name: public.casualty_map ;;

  dimension: accident_index {
    type: string
    hidden: yes
    sql: ${TABLE}.accident_index ;;
  }

  dimension: index {
    type: number
    hidden: yes
    sql: ${TABLE}.index ;;
  }

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.accident_index || ${TABLE}.index ;;
  }

  dimension: age_band_of_casualty {
    type: string
    sql: ${TABLE}.age_band_of_casualty ;;
  }

  dimension: age_of_casualty {
    type: number
    sql: ${TABLE}.age_of_casualty ;;
  }

  dimension: age_casualty_tier {
    type: tier
    style: integer
    sql: ${age_of_casualty} ;;
    tiers: [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100]
  }

  dimension: bus_or_coach_passenger {
    type: string
    sql: ${TABLE}.bus_or_coach_passenger ;;
  }

  dimension: car_passenger {
    type: string
    sql: ${TABLE}.car_passenger ;;
  }

  dimension: casualty_class {
    type: string
    sql: ${TABLE}.casualty_class ;;
  }

  dimension: casualty_home_area_type {
    type: string
    sql: ${TABLE}.casualty_home_area_type ;;
  }

  dimension: casualty_reference {
    hidden:  yes
    type: number
    sql: ${TABLE}.casualty_reference ;;
  }

  dimension: casualty_severity {
    type: string
    sql: ${TABLE}.casualty_severity ;;
  }

  dimension: casualty_type {
    type: string
    sql: ${TABLE}.casualty_type ;;
  }

  dimension: pedestrian_location {
    type: string
    sql: ${TABLE}.pedestrian_location ;;
  }

  dimension: pedestrian_movement {
    type: string
    sql: ${TABLE}.pedestrian_movement ;;
  }

  dimension: pedestrian_road_maintenance_worker {
    type: string
    sql: ${TABLE}.pedestrian_road_maintenance_worker ;;
  }

  dimension: sex_of_casualty {
    type: string
    sql: ${TABLE}.sex_of_casualty ;;
  }

  dimension: vehicle_reference {
    hidden:  yes
    type: number
    sql: ${TABLE}.vehicle_reference ;;
  }

  measure: total_count {
    type: count
    drill_fields: []
  }

  measure: count_deaths {
    type:  count
    filters: {
      field: casualty_severity
      value: "Fatal"
    }
  }

  measure: count_pedestrians {
    type: count
    filters: {
      field: casualty_class
      value: "Pedestrian"
    }
  }




}
