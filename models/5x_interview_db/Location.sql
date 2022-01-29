with location as(
    select * from {{source('FIVETRAN_INTERVIEW_DB','COVID_19_INDONESIA_PRAJAKTA_MARJE')}}
),

final as (
select Sum(TOTAL_RECOVERED),SUM(TOTAL_ACTIVE_CASES),LOCATION,DATE from location GROUP BY LOCATION,DATE)

select * from final