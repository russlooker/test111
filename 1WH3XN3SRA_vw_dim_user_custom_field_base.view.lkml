
view: 1WH3XN3SRA_vw_dim_user_custom_field_base {
sql_table_name: [RPT].[vwDimUserCustomField_1WH3XN3SRA] ;;
label: "coolCompany-1WH3XN3SRACustom Fields"
dimension: business_unit {
    sql: ${TABLE}.[Business Unit] ;;
    type: string
}

    
dimension: company_id {
    sql: ${TABLE}.[CompanyId] ;;
    type: number
    hidden: yes
}

    
dimension: created_job_log_id {
    sql: ${TABLE}.[CreatedJobLogID] ;;
    type: number
    hidden: yes
}

    
dimension: current_flag {
    sql: ${TABLE}.[CurrentFlag] ;;
    type: yesno
    hidden: yes
}

    
dimension: deleted_flag {
    sql: ${TABLE}.[DeletedFlag] ;;
    type: yesno
    hidden: yes
}

    
dimension: department {
    sql: ${TABLE}.[Department] ;;
    type: string
}

    
dimension: interests {
    sql: ${TABLE}.[Interests] ;;
    type: string
}

    
dimension: late_arriving_flag {
    sql: ${TABLE}.[LateArrivingFlag] ;;
    type: yesno
    hidden: yes
}

    
dimension_group: scd_end_date {
    timeframes: [raw, year, quarter, month, week, date, day_of_week, hour, hour_of_day, minute, time, time_of_day]
    type: time
    sql: ${TABLE}.[SCDEndDate] ;;
    hidden: yes
}

    
dimension_group: scd_start_date {
    timeframes: [raw, year, quarter, month, week, date, day_of_week, hour, hour_of_day, minute, time, time_of_day]
    type: time
    sql: ${TABLE}.[SCDStartDate] ;;
    hidden: yes
}

    
dimension: skills {
    sql: ${TABLE}.[Skills] ;;
    type: string
}

    
dimension: spark_uid {
    sql: ${TABLE}.[SparkUid] ;;
    type: number
    hidden: yes
}

    
dimension: updated_job_log_id {
    sql: ${TABLE}.[UpdatedJobLogID] ;;
    type: number
    hidden: yes
}

    
dimension: user_custom_field_key {
    sql: ${TABLE}.[UserCustomFieldKey] ;;
    type: number
    hidden: yes
}

    
dimension: user_dwbk {
    sql: ${TABLE}.[UserDWBK] ;;
    type: number
    hidden: yes
}

    
dimension: work_address {
    sql: ${TABLE}.[Work Address] ;;
    type: string
}

    
dimension: work_city {
    sql: ${TABLE}.[Work City] ;;
    type: string
}

}