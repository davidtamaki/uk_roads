- view: accident
  sql_table_name: public.accident
  fields:

  - dimension: accident_index
    type: string
    primary_key: true
    sql: ${TABLE}.accident_index

  - dimension: accident_severity
    type: number
    sql: ${TABLE}.accident_severity

  - dimension: carriageway_hazards
    type: number
    sql: ${TABLE}.carriageway_hazards

  - dimension: date
    hidden: true
    type: string
    sql: ${TABLE}.date

  - dimension: time
    hidden: true
    type: string
    sql: ${TABLE}.time

  - dimension: day_of_week
    hidden: true
    type: number
    sql: ${TABLE}.day_of_week
    
  - dimension_group: accident
    type: time
    sql: cast((to_date(${TABLE}.date, 'DD/MM/YYYY') || ' ' || ${TABLE}.time) as timestamp)

  - dimension: did_police_officer_attend_scene_of_accident
    type: number
    sql: ${TABLE}.did_police_officer_attend_scene_of_accident

  - dimension: first_road_class
    type: number
    sql: ${TABLE}.first_road_class

  - dimension: first_road_number
    type: number
    sql: ${TABLE}.first_road_number

  - dimension: junction_control
    type: number
    sql: ${TABLE}.junction_control

  - dimension: junction_detail
    type: number
    sql: ${TABLE}.junction_detail

  - dimension: light_conditions
    type: number
    sql: ${TABLE}.light_conditions

  - dimension: local_authority_district
    type: number
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
    type: number
    sql: ${TABLE}.pedestrian_crossing_physical_facilities

  - dimension: police_force
    type: number
    sql: ${TABLE}.police_force

  - dimension: road_surface_conditions
    type: number
    sql: ${TABLE}.road_surface_conditions

  - dimension: road_type
    type: number
    sql: ${TABLE}.road_type

  - dimension: second_road_class
    type: number
    sql: ${TABLE}.second_road_class

  - dimension: second_road_number
    type: number
    sql: ${TABLE}.second_road_number

  - dimension: special_conditions_at_site
    type: number
    sql: ${TABLE}.special_conditions_at_site

  - dimension: speed_limit
    type: number
    sql: ${TABLE}.speed_limit

  - dimension: urban_or_rural_area
    type: number
    sql: ${TABLE}.urban_or_rural_area

  - dimension: weather_conditions
    type: number
    sql: ${TABLE}.weather_conditions

  - measure: count
    type: count
    drill_fields: []

