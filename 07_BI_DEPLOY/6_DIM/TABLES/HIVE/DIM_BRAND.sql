DROP TABLE IF EXISTS DIM.DIM_BRAND;
CREATE TABLE IF NOT EXISTS DIM.DIM_BRAND(
CUST_ID                       STRING                             COMMENT  '客户ID',
CUST_NAME                     STRING                             COMMENT  '客户名称',
BRAND_ID                      STRING                             COMMENT  '品牌ID',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
SOURCE_CODE                   STRING                             COMMENT  '来源',
WD_INSERT_DT                  STRING                             COMMENT  '数据仓库记录插入时间 ',
WD_UPDATE_DT                  STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '品牌(公司)'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DIM.HIS_DIM_BRAND;
CREATE TABLE IF NOT EXISTS DIM.HIS_DIM_BRAND(
BRAND_ID                      STRING                             COMMENT  '品牌ID',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
CUST_ID                       STRING                             COMMENT  '客户ID',
CUST_NAME                     STRING                             COMMENT  '客户名称',
SOURCE_CODE                   STRING                             COMMENT  '来源',
WD_INSERT_DT                  STRING                             COMMENT  '数据仓库记录插入时间 ',
WD_UPDATE_DT                  STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '品牌(公司)'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;