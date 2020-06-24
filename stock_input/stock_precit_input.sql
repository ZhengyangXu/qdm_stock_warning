CREATE TABLE `stock.stock_predict_input`(
`business_date` string COMMENT '营业日期',
`shop_number` string COMMENT '门店编号',
`item_number` string COMMENT '商品编码',
`item_name` string COMMENT '商品名称',
`third_category_number` string COMMENT '小分类编号',
`third_category_name` string COMMENT '小分类名称',
`second_category_number` string COMMENT '中分类编号',
`second_category_name` string COMMENT '中分类名称',
`first_category_number` string COMMENT '大分类编号',
`first_category_name` string COMMENT '大分类名称',
`purchase_qty` double COMMENT '订购数',
`receive_qty` double COMMENT '进货数',
`bf13_sale_qty` double COMMENT '13点前销售数'
`bf13_cust_num` double COMMENT '13点前客数',
`bf19_cust_num` double COMMENT '19点前客数',
`discount_amount` double COMMENT '折扣额',
`discount_rate` double COMMENT '折扣率',
`loss_rate` double COMMENT '损耗率',
`unknow_loss_qty` double COMMENT '未知损耗数量',
`unknow_loss_amount` double COMMENT '未知损耗金额',
`purchase_amount` double COMMENT '进货金额',
`forecast_sale_amount` double COMMENT '预期销售额',
`forecast_gpr` double COMMENT '预期毛利率',
`gpr_achieving_rate` double COMMENT '毛利达成率',
`forecast_discount_rate` double COMMENT '预期折扣率',
`forecast_loss_rate` double COMMENT '预期损耗率',
`total_sales_qty` double COMMENT '实际销售数',
`total_amount` double COMMENT '实际销售额',
`net_gross_profit` double COMMENT '净毛利',
`net_gross_profit_rate` double COMMENT '净毛利率',
`sales_profit` double COMMENT '销售毛利',
`sales_profit_rate` double COMMENT '销售毛利率',
`current_loss` double COMMENT '已知损耗',
`vip_discount_amount` double COMMENT '会员折扣额',
`promotion_discount_amount` double COMMENT '促销折扣额',
`time_discount_amount` double COMMENT '时段折扣额',
`before_discount_qty` double COMMENT '折扣前数量',
`after_discount_qty` double COMMENT '折扣后数量',
`before_discount_amount` double COMMENT '折扣前金额',
`after_discount_amount` double COMMENT '折扣后金额',
`burst_flag` string COMMNET '是否爆款'
`province` string COMMENT '省',
`city` string COMMENT '城市',
`city_area` string COMMENT '区',
`daytime_weather` string COMMENT '白天天气',
`night_weather` string COMMENT '夜间天气',
`daytime_temperature` string COMMENT '白天气温',
`night_temperature` string COMMENT '夜间气温',
`daytime_wind` string COMMENT '白天风向力',
`night_wind` string COMMENT '夜间风向力',
`promotion_vip_flag` int COMMENT '促销是否vip',
`promotion_discount_value` string COMMENT '折扣比例',
`future_3_temperature` string COMMENT '未来3天白天气温'
)
COMMENT '预测数据输入表'
PARTITIONED BY(`dt` string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.orc.OrcSerde'
WITH SERDEPROPERTIES (
'field.delim'='\t',
'escape.delim'='\\',
'serialization.null.format'=''
) STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
TBLPROPERTIES ('orc.compress'='SNAPPY');