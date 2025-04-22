SET ANSI_WARNINGS OFF;

SELECT    *
FROM
    OPENROWSET(
        BULK 'https://<data lake instance>.blob.core.usgovcloudapi.net/<container>/<path to output folder>',
        FORMAT = 'PARQUET'
    ) AS [result]
