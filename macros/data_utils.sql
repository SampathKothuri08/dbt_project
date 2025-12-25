{%macro get_season(x)%}

CASE WHEN MONTH(TO_TIMESTAMP(TRIM({{x}},'"'))) in (12,1,2) THEN 'Winter'
WHEN MONTH(TO_TIMESTAMP(TRIM({{x}},'"'))) in (3,4,5) THEN 'Spring'
WHEN MONTH(TO_TIMESTAMP(TRIM({{x}},'"'))) in (6,7,8) THEN 'Summer'
ELSE 'Autumn'
END

{%endmacro%}


{%macro day_name(x)%}

CASE 
WHEN DAYNAME(TO_TIMESTAMP(TRIM({{x}},'"'))) in ('Sat','Sun') THEN 'WEEKEND'
ELSE 'BUSINESSDAY'
END
{%endmacro%}