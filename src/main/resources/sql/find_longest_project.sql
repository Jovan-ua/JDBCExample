SELECT ID, DATEDIFF
    ('MONTH', START_DATE, FINISH_DATE) AS MONTH_COUNT
    FROM project
    WHERE DATEDIFF
('MONTH', START_DATE, FINISH_DATE) =
    (SELECT
    MAX(DATEDIFF('MONTH', START_DATE, FINISH_DATE))
    FROM project
);