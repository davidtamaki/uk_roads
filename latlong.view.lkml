view: latlong {
  sql_table_name: public.utm_to_latlong ;;

  dimension:  east_north {
    type: number
    hidden: yes
    sql: ${TABLE}.east ||  ${TABLE}.north ;;
  }

  dimension:  lat {
    type: number
    hidden: yes
    sql: ${TABLE}.lat ;;
  }

  dimension:  lon {
    type: number
    hidden: yes
    sql: ${TABLE}.lon ;;
  }

  dimension:  lat_round {
    type: number
    hidden: yes
    sql: round(${TABLE}.lat,3) ;;
  }

  dimension:  lon_round {
    type: number
    hidden: yes
    sql: round(${TABLE}.lon,3) ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.lat ;;
    sql_longitude: ${TABLE}.lon ;;
  }

}
