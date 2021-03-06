DROP TABLE IF EXISTS ODS_BLPT.`T_HAND_DTD_SEGM_TIME_PLAN`;
CREATE TABLE ODS_BLPT.`T_HAND_DTD_SEGM_TIME_PLAN` (
        ID BIGINT COMMENT 'AUTO INCREMENT',
        SEQ_ID STRING COMMENT '序号ID',
        YEAR_ID STRING COMMENT '年份ID',
        TPMODE_NAME STRING COMMENT '运输方式名称',
        CATD_NAME STRING COMMENT '运输环节名称',
        STAND_VALUE STRING COMMENT '运输环节标准时间',
        DAY_VALUE STRING COMMENT '单位',
        LAST_UPDATE_DATE STRING,
        LAST_UPDATED_BY STRING,
        CREATION_DATE STRING,
        CREATED_BY STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS PARQUET;

DROP TABLE IF EXISTS ODS_BLPT.`STG_T_HAND_DTD_SEGM_TIME_PLAN`;
CREATE TABLE ODS_BLPT.`STG_T_HAND_DTD_SEGM_TIME_PLAN` (
        ID BIGINT COMMENT 'AUTO INCREMENT',
        SEQ_ID STRING COMMENT '序号ID',
        YEAR_ID STRING COMMENT '年份ID',
        TPMODE_NAME STRING COMMENT '运输方式名称',
        CATD_NAME STRING COMMENT '运输环节名称',
        STAND_VALUE STRING COMMENT '运输环节标准时间',
        DAY_VALUE STRING COMMENT '单位',
        LAST_UPDATE_DATE STRING,
        LAST_UPDATED_BY STRING,
        CREATION_DATE STRING,
        CREATED_BY STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS TEXTFILE;

DROP TABLE IF EXISTS ODS_BLPT.`HIS_T_HAND_DTD_SEGM_TIME_PLAN`;
CREATE TABLE ODS_BLPT.`HIS_T_HAND_DTD_SEGM_TIME_PLAN` (
        ID BIGINT COMMENT 'AUTO INCREMENT',
        SEQ_ID STRING COMMENT '序号ID',
        YEAR_ID STRING COMMENT '年份ID',
        TPMODE_NAME STRING COMMENT '运输方式名称',
        CATD_NAME STRING COMMENT '运输环节名称',
        STAND_VALUE STRING COMMENT '运输环节标准时间',
        DAY_VALUE STRING COMMENT '单位',
        LAST_UPDATE_DATE STRING,
        LAST_UPDATED_BY STRING,
        CREATION_DATE STRING,
        CREATED_BY STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS PARQUET;
