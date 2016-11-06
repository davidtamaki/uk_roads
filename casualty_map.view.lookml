- view: casualty
  sql_table_name: public.casualty_map
  fields:

  - dimension: accident_index
    type: string
    hidden: true
    sql: ${TABLE}.accident_index

  - dimension: index
    type: number
    hidden: true
    sql: ${TABLE}.index
    
  - dimension: pk
    primary_key: true
    hidden: true
    sql: ${TABLE}.accident_index || ${TABLE}.index
    
  - dimension: age_band_of_casualty
    type: string
    sql: ${TABLE}.age_band_of_casualty

  - dimension: age_of_casualty
    type: number
    sql: ${TABLE}.age_of_casualty
    
  - dimension: age_casualty_tier
    type: tier
    style: integer
    sql: ${age_of_casualty}
    tiers: [0,10,20,30,40,50,60,70,80,90,100]

  - dimension: bus_or_coach_passenger
    type: string
    sql: ${TABLE}.bus_or_coach_passenger

  - dimension: car_passenger
    type: string
    sql: ${TABLE}.car_passenger

  - dimension: casualty_class
    type: string
    sql: ${TABLE}.casualty_class

  - dimension: casualty_home_area_type
    type: string
    sql: ${TABLE}.casualty_home_area_type

  - dimension: casualty_reference
    type: number
    sql: ${TABLE}.casualty_reference

  - dimension: casualty_severity
    type: string
    sql: ${TABLE}.casualty_severity

  - dimension: casualty_type
    type: string
    sql: ${TABLE}.casualty_type

  - dimension: pedestrian_location
    type: string
    sql: ${TABLE}.pedestrian_location

  - dimension: pedestrian_movement
    type: string
    sql: ${TABLE}.pedestrian_movement

  - dimension: pedestrian_road_maintenance_worker
    type: string
    sql: ${TABLE}.pedestrian_road_maintenance_worker

  - dimension: sex_of_casualty
    type: string
    sql: ${TABLE}.sex_of_casualty

  - dimension: vehicle_reference
    type: number
    sql: ${TABLE}.vehicle_reference

  - measure: count
    type: count
    drill_fields: []

