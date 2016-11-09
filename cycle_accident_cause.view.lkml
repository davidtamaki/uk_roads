view: cycle_accident_cause {
  derived_table: {
    sql: select accident_index, listagg(vehicle_type,',') as vehicles
      from vehicle_map
      where accident_index IN
        (select accident_index
        from vehicle_map
        where vehicle_type = 'Pedal cycle')
      group by 1
       ;;
    sql_trigger_value:  select 1 ;;
    indexes: ["accident_index"]
    distribution_style: all
  }


  dimension: accident_index {
    hidden: yes
    type: string
    primary_key: yes
    sql: ${TABLE}.accident_index ;;
  }

  dimension: list_of_vehicles_cause_cycle_accident {
    type: string
    sql: ${TABLE}.vehicles ;;
  }

  measure: count_car_involved_cycle_accident {
    type: sum
    sql: CASE WHEN ${list_of_vehicles_cause_cycle_accident} LIKE '%Car%' THEN 1 ELSE NULL END ;;
  }

  measure: count_other_cyclist_involved_cycle_accident {
    type: sum
    sql: CASE WHEN ${list_of_vehicles_cause_cycle_accident} LIKE '%Pedal cycle%Pedal cycle%' THEN 1 ELSE NULL END ;;
  }

  measure: count_truck_involved_cycle_accident {
    type: sum
    sql: CASE WHEN ${list_of_vehicles_cause_cycle_accident} LIKE '%Goods%' THEN 1 ELSE NULL END ;;
  }

  measure: count_motorcycles_involved_cycle_accident {
    type: sum
    sql: CASE WHEN ${list_of_vehicles_cause_cycle_accident} LIKE '%Motorcycle%' THEN 1 ELSE NULL END ;;
  }

  measure: count_bus_involved_cycle_accident {
    type: sum
    sql: CASE WHEN ${list_of_vehicles_cause_cycle_accident} ILIKE '%bus%' THEN 1 ELSE NULL END ;;
  }

  measure: count_taxi_involved_cycle_accident {
    type: sum
    sql: CASE WHEN ${list_of_vehicles_cause_cycle_accident} LIKE '%Taxi%' THEN 1 ELSE NULL END ;;
  }

  measure: percent_car_involved_cycle_accident {
    type: percent_of_total
    sql: ${count_car_involved_cycle_accident} ;;
#     value_format_name: percent_2
  }

  measure: percent_cyclist_involved_cycle_accident {
    type: percent_of_total
    sql: ${count_other_cyclist_involved_cycle_accident} ;;
#     value_format_name: percent_2
  }

  measure: percent_truck_involved_cycle_accident {
    type: percent_of_total
    sql: ${count_truck_involved_cycle_accident} ;;
#     value_format_name: percent_2
  }

  measure: percent_motorcycles_involved_cycle_accident {
    type: percent_of_total
    sql: ${count_motorcycles_involved_cycle_accident} ;;
#     value_format_name: percent_2
  }

  measure: percent_bus_involved_cycle_accident {
    type: percent_of_total
    sql: ${count_bus_involved_cycle_accident} ;;
#     value_format_name: percent_2
  }

  measure: percent_taxi_involved_cycle_accident {
    type: percent_of_total
    sql: ${count_taxi_involved_cycle_accident} ;;
#     value_format_name: percent_2
  }

  set: detail {
    fields: [accident_index, list_of_vehicles_cause_cycle_accident]
  }
}
