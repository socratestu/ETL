DROP TABLE IF EXISTS ODS_BLPT.T_HAND_REGIONAL_OPERATION_SCORE;
create table ODS_BLPT.T_HAND_REGIONAL_OPERATION_SCORE
(
  ID BIGINT,
  MONTH_ID STRING  COMMENT '月份ID',
  RGN_NAME STRING  COMMENT '大区',
  RGN_CHECK_MODULE STRING  COMMENT '大区考核板块',
  RGN_CHECK_NAME STRING  COMMENT '考核内容',
  WEIGHT STRING  COMMENT '权重',
  WEIGHT_SCORE STRING  COMMENT '得分',
  LAST_UPDATE_DATE STRING ,
  LAST_UPDATED_BY STRING ,
  CREATION_DATE STRING ,
  CREATED_BY STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS PARQUET;


DROP TABLE IF EXISTS ODS_BLPT.STG_T_HAND_REGIONAL_OPERATION_SCORE;
create table ODS_BLPT.STG_T_HAND_REGIONAL_OPERATION_SCORE
(
  ID BIGINT,
  MONTH_ID STRING  COMMENT '月份ID',
  RGN_NAME STRING  COMMENT '大区',
  RGN_CHECK_MODULE STRING  COMMENT '大区考核板块',
  RGN_CHECK_NAME STRING  COMMENT '考核内容',
  WEIGHT STRING  COMMENT '权重',
  WEIGHT_SCORE STRING  COMMENT '得分',
  LAST_UPDATE_DATE STRING ,
  LAST_UPDATED_BY STRING ,
  CREATION_DATE STRING ,
  CREATED_BY STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS TEXTFILE;

DROP TABLE IF EXISTS ODS_BLPT.HIS_T_HAND_REGIONAL_OPERATION_SCORE;
create table ODS_BLPT.HIS_T_HAND_REGIONAL_OPERATION_SCORE
(
  ID BIGINT,
  MONTH_ID STRING  COMMENT '月份ID',
  RGN_NAME STRING  COMMENT '大区',
  RGN_CHECK_MODULE STRING  COMMENT '大区考核板块',
  RGN_CHECK_NAME STRING  COMMENT '考核内容',
  WEIGHT STRING  COMMENT '权重',
  WEIGHT_SCORE STRING  COMMENT '得分',
  LAST_UPDATE_DATE STRING ,
  LAST_UPDATED_BY STRING ,
  CREATION_DATE STRING ,
  CREATED_BY STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS PARQUET;
