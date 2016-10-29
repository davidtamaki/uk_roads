- view: casualty
  sql_table_name: public.casualty
  fields:

  - dimension: accident_index
    type: string
    sql: ${TABLE}.accident_index
    
  - dimension: casualty_reference
    type: number
    sql: ${TABLE}.casualty_reference

#   - dimension: pk
#     hidden: true
#     primary_key: true
#     sql: ${accident_index} || ${casualty_reference}

  - dimension: age_band_of_casualty
    type: number
    sql: ${TABLE}.age_band_of_casualty

  - dimension: age_of_casualty
    type: number
    sql: ${TABLE}.age_of_casualty

  - dimension: bus_or_coach_passenger
    type: number
    sql: ${TABLE}.bus_or_coach_passenger

  - dimension: car_passenger
    type: number
    sql: ${TABLE}.car_passenger

  - dimension: casualty_class
    type: number
    sql: ${TABLE}.casualty_class

  - dimension: casualty_home_area_type
    type: number
    sql: ${TABLE}.casualty_home_area_type

  - dimension: casualty_severity
    type: number
    sql: ${TABLE}.casualty_severity

  - dimension: casualty_type
    type: number
    sql: ${TABLE}.casualty_type

  - dimension: pedestrian_location
    type: number
    sql: ${TABLE}.pedestrian_location

  - dimension: pedestrian_movement
    type: number
    sql: ${TABLE}.pedestrian_movement

  - dimension: pedestrian_road_maintenance_worker
    type: number
    sql: ${TABLE}.pedestrian_road_maintenance_worker

  - dimension: sex_of_casualty
    type: number
    sql: ${TABLE}.sex_of_casualty

  - dimension: vehicle_reference
    type: number
    sql: ${TABLE}.vehicle_reference

  - measure: count
    type: count
    drill_fields: []

