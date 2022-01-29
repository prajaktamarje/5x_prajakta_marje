with Recovery as(
    select * from {{source('FIVETRAN_INTERVIEW_DB','COVID_19_INDONESIA_PRAJAKTA_MARJE')}}
),

final as (
select Sum(NEW_ACTIVE_CASES),SUM(NEW_DEATHS),SUM(NEW_RECOVERED),LOCATION,DATE from Recovery GROUP BY LOCATION,DATE)

select * from final