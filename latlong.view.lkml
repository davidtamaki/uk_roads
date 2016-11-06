view: latlong {
  sql_table_name: public.utm_to_latlong ;;

  dimension:  east_north {
    type: number
    sql: ${TABLE}.east ||  ${TABLE}.north ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.lat ;;
    sql_longitude: ${TABLE}.lon ;;
  }
}
