select q1.job_title_short,
    q1.job_location,
    q1.salary_year_avg
from (
        select *
        from january_jobs
        UNION
        select *
        from february_jobs
        UNION
        select *
        from march_jobs
    ) as q1
where salary_year_avg >= 70000
order by q1.salary_year_avg desc;