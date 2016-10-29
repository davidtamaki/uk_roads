- view: vehicle
  sql_table_name: public.vehicle
  fields:

  - dimension: accident_index
    type: string
    sql: ${TABLE}.accident_index
    
  - dimension: vehicle_reference
    type: number
    sql: ${TABLE}.vehicle_reference
    
  - dimension: pk
    hidden: true
    primary_key: true
    sql: ${accident_index} || ${vehicle_reference}
    
  - dimension: age_band_of_driver
    type: number
    sql: ${TABLE}.age_band_of_driver

  - dimension: age_of_driver
    type: number
    sql: ${TABLE}.age_of_driver

  - dimension: age_of_vehicle
    type: number
    sql: ${TABLE}.age_of_vehicle

  - dimension: driver_home_area_type
    type: number
    sql: ${TABLE}.driver_home_area_type

  - dimension: driver_imd_decile
    type: number
    sql: ${TABLE}.driver_imd_decile

  - dimension: engine_capacity
    type: number
    sql: ${TABLE}.engine_capacity

  - dimension: first_point_of_impact
    type: number
    sql: ${TABLE}.first_point_of_impact

  - dimension: hit_object_in_carriageway
    type: number
    sql: ${TABLE}.hit_object_in_carriageway

  - dimension: hit_object_off_carriageway
    type: number
    sql: ${TABLE}.hit_object_off_carriageway

  - dimension: journey_purpose_of_driver
    type: number
    sql: ${TABLE}.journey_purpose_of_driver

  - dimension: junction_location
    type: number
    sql: ${TABLE}.junction_location

  - dimension: propulsion_code
    type: number
    sql: ${TABLE}.propulsion_code

  - dimension: sex_of_driver
    type: number
    sql: ${TABLE}.sex_of_driver

  - dimension: skidding_and_overturning
    type: number
    sql: ${TABLE}.skidding_and_overturning

  - dimension: towing_and_articulation
    type: number
    sql: ${TABLE}.towing_and_articulation

  - dimension: vehicle_leaving_carriageway
    type: number
    sql: ${TABLE}.vehicle_leaving_carriageway

  - dimension: vehicle_location_restricted_lane
    type: number
    sql: ${TABLE}.vehicle_location_restricted_lane

  - dimension: vehicle_manoeuvre
    type: number
    sql: ${TABLE}.vehicle_manoeuvre

  - dimension: vehicle_type
    type: number
    sql: ${TABLE}.vehicle_type

  - dimension: was_vehicle_left_hand_drive
    type: number
    sql: ${TABLE}.was_vehicle_left_hand_drive

  - measure: count
    type: count
    drill_fields: []

