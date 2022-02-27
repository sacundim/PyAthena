INSERT INTO {schema}.one_row_complex
SELECT
    true,
    CAST(127 AS TINYINT),
    CAST(32767 AS SMALLINT),
    2147483647,
    9223372036854775807,
    CAST(0.5 AS REAL),
    0.25,
    'a string',
    CAST('varchar' AS VARCHAR(10)),
    CAST('2017-01-01 00:00:00' AS TIMESTAMP),
    CAST('2017-01-02' AS DATE),
    CAST('123' AS VARBINARY),
    ARRAY[1, 2],
    MAP(ARRAY[1, 3], ARRAY[2, 4]),
    CAST(ROW(1, 2) AS ROW(a INTEGER, b INTEGER)),
    CAST(DECIMAL '0.1' AS DECIMAL(10, 1))
FROM (select 1) dual;
