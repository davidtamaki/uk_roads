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

  dimension: age_of_driver {
    type: number
    sql: ${TABLE}.age_of_driver ;;
  }

  dimension: age_of_driver_tier {
    type: tier
    style: integer
    sql: ${age_of_driver} ;;
    tiers: [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
  }

  dimension: age_of_vehicle {
    type: number
    sql: ${TABLE}.age_of_vehicle ;;
  }

  dimension: age_of_vehicle_tier {
    type: tier
    style: integer
    sql: ${age_of_vehicle} ;;
    tiers: [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
  }

  dimension: old_car {
    type: yesno
    sql: ${age_of_vehicle} >= 20 ;;
  }

  dimension: engine_capacity {
    type: number
    sql: ${TABLE}.engine_capacity ;;
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

  dimension: vehicle_reference {
    type: number
    sql: ${TABLE}.vehicle_reference ;;
  }

  dimension: vehicle_type {
    type: string
    sql: ${TABLE}.vehicle_type ;;
  }

  dimension: driver_home_area_type {
    group_label: "Random Info"
    type: string
    sql: ${TABLE}.driver_home_area_type ;;
  }

  dimension: driver_imd_decile {
    group_label: "Random Info"
    type: string
    sql: ${TABLE}.driver_imd_decile ;;
  }

  dimension: first_point_of_impact {
    group_label: "Random Info"
    type: string
    sql: ${TABLE}.first_point_of_impact ;;
  }

  dimension: hit_object_in_carriageway {
    group_label: "Random Info"
    type: string
    sql: ${TABLE}.hit_object_in_carriageway ;;
  }

  dimension: hit_object_off_carriageway {
    group_label: "Random Info"
    type: string
    sql: ${TABLE}.hit_object_off_carriageway ;;
  }

  dimension: journey_purpose_of_driver {
    group_label: "Random Info"
    type: string
    sql: ${TABLE}.journey_purpose_of_driver ;;
  }

  dimension: junction_location {
    group_label: "Random Info"
    type: string
    sql: ${TABLE}.junction_location ;;
  }

  dimension: towing_and_articulation {
    group_label: "Random Info"
    type: string
    sql: ${TABLE}.towing_and_articulation ;;
  }

  dimension: vehicle_leaving_carriageway {
    group_label: "Random Info"
    type: string
    sql: ${TABLE}.vehicle_leaving_carriageway ;;
  }

  dimension: vehicle_location_restricted_lane {
    group_label: "Random Info"
    type: string
    sql: ${TABLE}.vehicle_location_restricted_lane ;;
  }

  dimension: vehicle_manoeuvre {
    group_label: "Random Info"
    type: string
    sql: ${TABLE}.vehicle_manoeuvre ;;
  }

  dimension: was_vehicle_left_hand_drive {
    group_label: "Random Info"
    type: string
    sql: ${TABLE}.was_vehicle_left_hand_drive ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: count_of_cycles {
    type: count
    filters: {
      field: vehicle_type
      value: "Pedal cycle"
    }
  }


}
