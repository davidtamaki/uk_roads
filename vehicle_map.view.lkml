view: vehicle {
  sql_table_name: public.vehicle_map ;;

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

  #   - dimension: age_band_of_driver
  #     type: string
  #     sql: ${TABLE}.age_band_of_driver

  dimension: age_of_driver {
    type: number
    sql: ${TABLE}.age_of_driver ;;
  }

  dimension: age_driver_tier {
    type: tier
    style: integer
    sql: ${age_of_driver} ;;
    tiers: [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100]
  }

  dimension: age_of_vehicle {
    type: number
    sql: ${TABLE}.age_of_vehicle ;;
  }

  dimension: driver_home_area_type {
    type: string
    sql: ${TABLE}.driver_home_area_type ;;
  }

  dimension: driver_imd_decile {
    type: string
    sql: ${TABLE}.driver_imd_decile ;;
  }

  dimension: engine_capacity {
    type: number
    sql: ${TABLE}.engine_capacity ;;
  }

  dimension: first_point_of_impact {
    type: string
    sql: ${TABLE}.first_point_of_impact ;;
  }

  dimension: hit_object_in_carriageway {
    type: string
    sql: ${TABLE}.hit_object_in_carriageway ;;
  }

  dimension: hit_object_off_carriageway {
    type: string
    sql: ${TABLE}.hit_object_off_carriageway ;;
  }

  dimension: journey_purpose_of_driver {
    type: string
    sql: ${TABLE}.journey_purpose_of_driver ;;
  }

  dimension: junction_location {
    type: string
    sql: ${TABLE}.junction_location ;;
  }

  dimension: propulsion_code {
    type: string
    sql: ${TABLE}.propulsion_code ;;
  }

  dimension: sex_of_driver {
    type: string
    sql: ${TABLE}.sex_of_driver ;;
  }

  dimension: skidding_and_overturning {
    type: string
    sql: ${TABLE}.skidding_and_overturning ;;
  }

  dimension: towing_and_articulation {
    type: string
    sql: ${TABLE}.towing_and_articulation ;;
  }

  dimension: vehicle_leaving_carriageway {
    type: string
    sql: ${TABLE}.vehicle_leaving_carriageway ;;
  }

  dimension: vehicle_location_restricted_lane {
    type: string
    sql: ${TABLE}.vehicle_location_restricted_lane ;;
  }

  dimension: vehicle_manoeuvre {
    type: string
    sql: ${TABLE}.vehicle_manoeuvre ;;
  }

  dimension: vehicle_reference {
    type: number
    sql: ${TABLE}.vehicle_reference ;;
  }

  dimension: vehicle_type {
    type: string
    sql: ${TABLE}.vehicle_type ;;
  }

  dimension: was_vehicle_left_hand_drive {
    type: string
    sql: ${TABLE}.was_vehicle_left_hand_drive ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
