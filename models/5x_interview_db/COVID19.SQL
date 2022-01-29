with COVID19 as(
    select * from {{source('FIVETRAN_INTERVIEW_DB','COVID_19_INDONESIA_PRAJAKTA_MARJE')}}
),

final as (
select * from COVID19)

select * from final