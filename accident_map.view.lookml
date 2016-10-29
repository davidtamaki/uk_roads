- view: accident_map
  sql_table_name: public.accident_map
  fields:

#   - dimension: accident_date
#     type: string
#     sql: ${TABLE}.accident_date
    
#   - dimension: day_of_week
#     type: string
#     sql: ${TABLE}.day_of_week

#   - dimension: time
#     type: string
#     sql: ${TABLE}.time
    
  - dimension_group: accident
    type: time
    sql: cast((to_date(${TABLE}.accident_date, 'DD/MM/YYYY') || ' ' || ${TABLE}.time) as timestamp)

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

  - dimension: accident_severity
    type: string
    sql: ${TABLE}.accident_severity

  - dimension: carriageway_hazards
    type: string
    sql: ${TABLE}.carriageway_hazards

  - dimension: did_police_officer_attend_scene_of_accident
    type: string
    sql: ${TABLE}.did_police_officer_attend_scene_of_accident

  - dimension: first_road_class
    type: string
    sql: ${TABLE}.first_road_class

  - dimension: first_road_number
    type: number
    sql: ${TABLE}.first_road_number

  - dimension: junction_control
    type: string
    sql: ${TABLE}.junction_control

  - dimension: junction_detail
    type: string
    sql: ${TABLE}.junction_detail

  - dimension: light_conditions
    type: string
    sql: ${TABLE}.light_conditions

  - dimension: local_authority_district
    type: string
    sql: ${TABLE}.local_authority_district

  - dimension: local_authority_highway
    type: string
    sql: ${TABLE}.local_authority_highway

  - dimension: location_easting_osgr
    type: number
    sql: ${TABLE}.location_easting_osgr

  - dimension: location_northing_osgr
    type: number
    sql: ${TABLE}.location_northing_osgr
    
  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension: lsoa_of_accident_location
    type: string
    sql: ${TABLE}.lsoa_of_accident_location

  - dimension: number_of_casualties
    type: number
    sql: ${TABLE}.number_of_casualties

  - dimension: number_of_vehicles
    type: number
    sql: ${TABLE}.number_of_vehicles

  - dimension: pedestrian_crossing_human_control
    type: number
    sql: ${TABLE}.pedestrian_crossing_human_control

  - dimension: pedestrian_crossing_physical_facilities
    type: string
    sql: ${TABLE}.pedestrian_crossing_physical_facilities

  - dimension: police_force
    type: string
    sql: ${TABLE}.police_force

  - dimension: road_surface_conditions
    type: string
    sql: ${TABLE}.road_surface_conditions

  - dimension: road_type
    type: string
    sql: ${TABLE}.road_type

  - dimension: second_road_class
    type: string
    sql: ${TABLE}.second_road_class

  - dimension: second_road_number
    type: number
    sql: ${TABLE}.second_road_number

  - dimension: special_conditions_at_site
    type: string
    sql: ${TABLE}.special_conditions_at_site

  - dimension: speed_limit
    type: number
    sql: ${TABLE}.speed_limit

  - dimension: urban_or_rural_area
    type: string
    sql: ${TABLE}.urban_or_rural_area

  - dimension: weather_conditions
    type: string
    sql: ${TABLE}.weather_conditions

  - measure: count
    type: count
    drill_fields: []

