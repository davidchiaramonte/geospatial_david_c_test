# If necessary, uncomment the line below to include explore_source.
# include: "david_c_geospatial.model.lkml"

view: ndt_example {
  derived_table: {
    sql_trigger_value: SELECT 1 ;;
    publish_as_db_view: yes
    explore_source: cities {
      column: name { field: states.name }
      column: type { field: states.type }
      column: count {}
    }
  }
  dimension: name {
    description: ""
  }
  dimension: type {
    description: ""
  }
  dimension: count {
    description: ""
    type: number
  }
}
