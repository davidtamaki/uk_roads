view: postcode {
  sql_table_name: public.postcode ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}.postcode ;;
  }

  dimension: postcode_group {
    type: string
    sql: left(${TABLE}.postcode,2) ;;
  }


  dimension: latitude {
    hidden:  yes
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    hidden: yes
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: lat_round {
    hidden:  yes
    type: number
    sql: round(${TABLE}.latitude,3) ;;
  }

  dimension: lon_round {
    hidden: yes
    type: number
    sql: round(${TABLE}.longitude,3) ;;
    }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  set: detail {
    fields: [id, postcode, latitude, longitude, location]
  }
}
