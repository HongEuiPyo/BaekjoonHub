-- 코드를 작성해주세요
WITH RECURSIVE CTE AS (
    SELECT 
        ID
        , 1 as PATH
        , PARENT_ID
    FROM
        ECOLI_DATA
    WHERE
        PARENT_ID IS NULL
    
    UNION ALL
    
    SELECT
        A.ID
        , PATH + 1 as PATH
        , A.PARENT_ID
    FROM
        ECOLI_DATA A
    JOIN
        CTE B
    ON
        A.PARENT_ID = B.ID
)
SELECT 
    *
FROM
    CTE A
JOIN
    ECOLI_DATA B
ON
    A.ID = B.ID
    # AND A.PARENT_ID = B.ID
ORDER BY
    PATH
;