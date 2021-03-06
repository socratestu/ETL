DROP TABLE IF EXISTS DMR.DMR_PC_OV_OPERATE_DTD_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_PC_OV_OPERATE_DTD_M(
PERIOD_WID	STRING	COMMENT	'期间ID'
,BRAND_ID	STRING	COMMENT	'品牌ID'
,BRAND_NAME	STRING	COMMENT	'品牌名称'
,PROJ_ID	STRING	COMMENT	'项目ID'
,PROJ_NAME	STRING	COMMENT	'项目名称'
,TPMODE_ID	STRING	COMMENT	'运输方式(第一段运输方式)'
,TPMODE_NAME	STRING	COMMENT	'运输方式名称'
,DTD	DECIMAL(32,8)	COMMENT	'DTD时长'
,DTD_YOY	DECIMAL(32,8)	COMMENT	'DTD同比'
,DTD_MOM	DECIMAL(32,8)	COMMENT	'DTD环比'
,ORDER_ALLOC	DECIMAL(32,8)	COMMENT	'接单-分配时长'
,ORDER_ALLOC_TGT	DECIMAL(32,8)	COMMENT	'接单-分配时长标准时长'
,ORDER_ALLOC_YOY	DECIMAL(32,8)	COMMENT	'接单-分配时长同比'
,ORDER_ALLOC_MOM	DECIMAL(32,8)	COMMENT	'接单-分配时长环比'
,ALLOC_OUTSTORE	DECIMAL(32,8)	COMMENT	'分配-出库时长'
,ALLOC_OUTSTORE_TGT	DECIMAL(32,8)	COMMENT	'分配-出库时长标准时长'
,ALLOC_OUTSTORE_YOY	DECIMAL(32,8)	COMMENT	'分配-出库时长同比'
,ALLOC_OUTSTORE_MOM	DECIMAL(32,8)	COMMENT	'分配-出库时长环比'
,OUTSTORE_SHIPPING	DECIMAL(32,8)	COMMENT	'出库-发运时长'
,OUTSTORE_SHIPPING_TGT	DECIMAL(32,8)	COMMENT	'出库-发运时长标准时长'
,OUTSTORE_SHIPPING_YOY	DECIMAL(32,8)	COMMENT	'出库-发运时长同比'
,OUTSTORE_SHIPPING_MOM	DECIMAL(32,8)	COMMENT	'出库-发运时长环比'
,SHIPPING_DELIVER	DECIMAL(32,8)	COMMENT	'发运-交付时长'
,SHIPPING_DELIVER_TGT	DECIMAL(32,8)	COMMENT	'发运-交付时长标准时长'
,SHIPPING_DELIVER_YOY	DECIMAL(32,8)	COMMENT	'发运-交付时长同比'
,SHIPPING_DELIVER_MOM	DECIMAL(32,8)	COMMENT	'发运-交付时长环比'
,RECEIPT_BALANCE	DECIMAL(32,8)	COMMENT	'回单-结算时长'
,RECEIPT_BALANCE_TGT	DECIMAL(32,8)	COMMENT	'回单-结算时长标准时长'
,RECEIPT_BALANCE_YOY	DECIMAL(32,8)	COMMENT	'回单-结算时长同比'
,RECEIPT_BALANCE_MOM	DECIMAL(32,8)	COMMENT	'回单-结算时长环比'
,OT_ARRIVE_QTY	BIGINT	COMMENT	'准时到达数'
,TOTAL_ARRIVE_QTY	BIGINT	COMMENT	'总到达量'
,STOCK_OUT_OT_QTY	BIGINT	COMMENT	'准时出库量'
,OUT_STORE_QTY	BIGINT	COMMENT	'总出库量'
,ON_PASSAGE_LOSS_QTY	BIGINT	COMMENT	'在途质损数'
,ON_PASSAGE_QTY	BIGINT	COMMENT	'在途数'
,IN_STORE_LOSS_QTY	BIGINT	COMMENT	'在库质损数'
,IN_STORE_QTY	BIGINT	COMMENT	'在库数'
,INSERT_DATE	STRING	COMMENT	'插入时间'
,UPDATE_DATE	STRING	COMMENT	'更新时间'
)COMMENT'PC端运营概览DTD分析'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;