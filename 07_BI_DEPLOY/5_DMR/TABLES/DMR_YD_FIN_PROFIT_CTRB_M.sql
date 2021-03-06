DROP TABLE IF EXISTS DMR.DMR_YD_FIN_PROFIT_CTRB_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_YD_FIN_PROFIT_CTRB_M(
MONTH_ID    STRING    COMMENT    '月份ID'
,RNG_ID    STRING    COMMENT    '大区ID'
,RNG_NAME    STRING    COMMENT    '大区名称'
,BASE_ID    STRING    COMMENT    '基地ID'
,BASE_NAME    STRING    COMMENT    '基地名称'
,BRAND_ID    STRING    COMMENT    '品牌ID'
,BRAND_NAME    STRING    COMMENT    '品牌名称'
,BIZ_TYPE_ID    STRING    COMMENT    '业务属性ID'
,BIZ_TYPE_NAME    STRING    COMMENT    '业务属性名称'
,CUR_M_FIN_INCOME    DECIMAL(32,8)    COMMENT    '当期财务收入'
,LST_M_FIN_INCOME    DECIMAL(32,8)    COMMENT    '上期财务收入'
,CUR_M_FIN_PROFIT    DECIMAL(32,8)    COMMENT    '当期财务利润'
,LST_M_FIN_PROFIT    DECIMAL(32,8)    COMMENT    '上期财务利润'
,CUR_M_INCOME_CTRB_RATE    DECIMAL(32,8)    COMMENT    '当期收入贡献率'
,LST_M_INCOME_CTRB_RATE    DECIMAL(32,8)    COMMENT    '上期收入贡献率'
,CUR_M_PROFIT_CTRB_RATE    DECIMAL(32,8)    COMMENT    '当期利润贡献率'
,LST_M_PROFIT_CTRB_RATE    DECIMAL(32,8)    COMMENT    '上期利润贡献率'
,FIN_PROFIT_RATE    DECIMAL(32,8)    COMMENT    '利润率'
,INSERT_TIME    STRING    COMMENT    '插入时间'
,UPDATE_TIME    STRING    COMMENT    '更新时间'
) COMMENT '整车物流财务利润贡献'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;