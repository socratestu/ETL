DROP TABLE IF EXISTS DMK.DMK_TP_ORDERQTY_D;
CREATE TABLE IF NOT EXISTS DMK.DMK_TP_ORDERQTY_D(
PERIOD_WID  STRING COMMENT '期间ID', 
OC_ID  STRING COMMENT '运营中心ID', 
RGN_ID  STRING COMMENT '大区ID', 
BASE_ID  STRING COMMENT '基地ID', 
PROJ_ID  STRING COMMENT '项目ID', 
SOURCE_LOCATION_TYPE  STRING COMMENT '始发地类型', 
SOURCE_LOCATION_ID  STRING COMMENT '始发地ID', 
SRC_PRVN_ID  STRING COMMENT '始发地省份ID', 
SRC_CITY_ID  STRING COMMENT '始发地城市ID', 
DEST_LOCATION_TYPE  STRING COMMENT '目的地类型', 
DEST_LOCATION_ID  STRING COMMENT '目的地ID', 
DEST_PRVN_ID  STRING COMMENT '目的地省份ID', 
DEST_CITY_ID  STRING COMMENT '目的地城市ID', 
CUST_ID  STRING COMMENT '客户', 
BRAND_ID  STRING COMMENT '品牌', 
MODEL_ID  STRING COMMENT '车型', 
TPMODE_ID  STRING COMMENT '运输方式(第一段)', 
SUPPLIER_ID  STRING COMMENT '承运商(第一段)', 
FINANCING_FLAG  STRING COMMENT '融资车标记', 
CNT_FLAG  STRING COMMENT '联运车标记', 
PLAN_TYPE  STRING COMMENT '计划类型(1,发运计划,2,移库计划)', 
TICKET_QTY  BIGINT COMMENT '起票量', 
ALLOT_QTY  BIGINT COMMENT '已分配订单量', 
SHIPPING_QTY  BIGINT COMMENT '订单已发运量', 
ARRIVE_QTY  BIGINT COMMENT '订单到达量', 
W_INSERT_DT  STRING COMMENT '数据仓库插入时间', 
W_UPDATE_DT  STRING COMMENT '数据仓库修改时间'
)COMMENT '运输订单业务量'
PARTITIONED BY (PART_SC STRING COMMENT '数据来源', PART_DT STRING COMMENT '分区时间')
