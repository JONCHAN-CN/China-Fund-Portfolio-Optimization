--create DATABASE fund;
--use fund;


DROP TABLE IF  EXISTS fund_info ;
CREATE TABLE IF NOT EXISTS `fund_info` (
  `fund_code` varchar(255) NOT NULL COMMENT '�������',
  `fund_name` varchar(255) DEFAULT NULL COMMENT '����ȫ��',
  `fund_abbr_name` varchar(255) DEFAULT NULL COMMENT '������',
  `fund_type` varchar(255) DEFAULT NULL COMMENT '��������',
  `issue_date` varchar(255) DEFAULT NULL COMMENT '��������',
  `establish_date` varchar(255) DEFAULT NULL COMMENT '��������',
  `establish_scale` varchar(255) DEFAULT NULL COMMENT '�������ڹ�ģ',
  `asset_value` varchar(255) DEFAULT NULL COMMENT '�����ʲ���ģ',
  `asset_value_date` varchar(255) DEFAULT NULL COMMENT '�����ʲ���ģ����',
  `units` varchar(255) DEFAULT NULL COMMENT '���·ݶ��ģ',
  `units_date` varchar(255) DEFAULT NULL COMMENT '���·ݶ��ģ����',
  `fund_manager` varchar(255) DEFAULT NULL COMMENT '���������',
  `fund_trustee` varchar(255) DEFAULT NULL COMMENT '�����й���',
  `funder` varchar(255) DEFAULT NULL COMMENT '��������',
  `total_div` varchar(255) DEFAULT NULL COMMENT '�������ֺ�',
  `mgt_fee` varchar(255) DEFAULT NULL COMMENT '��������',
  `trust_fee` varchar(255) DEFAULT NULL COMMENT '�йܷ���',
  `sale_fee` varchar(255) DEFAULT NULL COMMENT '���۷������',
  `buy_fee` varchar(255) DEFAULT NULL COMMENT '����Ϲ�����',
  `buy_fee2` varchar(255) DEFAULT NULL COMMENT '����깺����',
  `benchmark` varchar(1000) DEFAULT NULL COMMENT 'ҵ���Ƚϻ�׼',
  `underlying` varchar(500) DEFAULT NULL COMMENT '���ٱ��',
  `data_source` varchar(255) DEFAULT 'eastmoney' COMMENT '������Դ',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `updated_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `created_by` varchar(255) DEFAULT 'eastmoney' COMMENT '������',
  `updated_by` varchar(255) DEFAULT 'eastmoney' COMMENT '������',
  PRIMARY KEY (`fund_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���������Ϣ��';
 
 
DROP TABLE IF  EXISTS fund_managers_chg; 
CREATE TABLE IF NOT EXISTS `fund_managers_chg` (
	`fund_code` varchar(255) NOT NULL COMMENT '�������',
	`start_date` varchar(255) NOT NULL COMMENT '��ʼ��',
	`end_date` varchar(255) DEFAULT NULL COMMENT '��ֹ��', 
	`fund_managers` varchar(255) DEFAULT NULL COMMENT '������',
	`term` varchar(255) DEFAULT NULL COMMENT '��ְ�ڼ�',
	`return_rate` varchar(255) DEFAULT NULL COMMENT '��ְ�ر�',
	`created_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	`updated_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	`data_source` varchar(255) DEFAULT NULL COMMENT '������Դ',
	PRIMARY KEY (`fund_code`,`start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�������䶯һ����';
 
 
DROP TABLE IF  EXISTS fund_managers_info;
CREATE TABLE IF NOT EXISTS `fund_managers_info` (
	`manager_id` varchar(255) NOT NULL COMMENT '������ID',
	`url` varchar(255) DEFAULT NULL COMMENT '����',
	`manager_name` varchar(255) DEFAULT NULL COMMENT '������',
	`created_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	`updated_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	`data_source` varchar(255) DEFAULT 'eastmoney' COMMENT '����Դ',
	PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��������Ϣ����'; 
 
 
DROP TABLE IF  EXISTS fund_nav ;
CREATE TABLE IF NOT EXISTS `fund_nav` (
  `date` varchar(255) NOT NULL,
  `nav` varchar(255) DEFAULT NULL,
  `add_nav` varchar(255) DEFAULT NULL,
  `nav_chg_rate` varchar(255) DEFAULT NULL,
  `buy_state` varchar(255) DEFAULT NULL,
  `sell_state` varchar(255) DEFAULT NULL,
  `div_record` varchar(255) DEFAULT NULL,
  `fund_code` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
   PRIMARY KEY (`the_date`,`fund_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ǻ��һ���ֵ��';
 
 
DROP TABLE IF  EXISTS fund_nav_currency ;
CREATE TABLE IF NOT EXISTS  `fund_nav_currency` (
  `date` varchar(255) NOT NULL,
  `fund_code` varchar(255) NOT NULL,
  `profit_per_units` varchar(255) DEFAULT NULL,
  `profit_rate` varchar(255) DEFAULT NULL,
  `buy_state` varchar(255) DEFAULT NULL,
  `sell_state` varchar(255) DEFAULT NULL,
  `div_record` varchar(255) DEFAULT NULL,
 
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`the_date`,`fund_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���һ���ֵ��';


DROP TABLE IF  EXISTS fund_managers_his;
CREATE TABLE IF NOT EXISTS `fund_managers_his` (
	`manager_id` varchar(255) NOT NULL COMMENT '������ID',
	`manager_url` varchar(255) DEFAULT NULL COMMENT '����',
	`manager_name` varchar(255) DEFAULT NULL COMMENT '����������',
	`cum_on_duty_term` varchar(255) NOT NULL COMMENT '�ۼ���ְʱ��',
	`fund_code` varchar(255) NOT NULL COMMENT '����ID',
	`fund_name` varchar(255) DEFAULT NULL COMMENT '��������',
	`fund_type` varchar(255) DEFAULT NULL COMMENT '��������',
	`fund_scale` varchar(255) DEFAULT NULL COMMENT '�����ģ����Ԫ��',
	`start_date` varchar(255) NOT NULL COMMENT '��ʼ��',
	`end_date` varchar(255) DEFAULT NULL COMMENT 'ֹ��',
	`term` varchar(255) DEFAULT NULL COMMENT '����ʱ��',
	`return_rate` varchar(255) DEFAULT NULL COMMENT '�ر���',	
	`updated_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	`data_source` varchar(255) DEFAULT 'eastmoney' COMMENT '����Դ',
	PRIMARY KEY (`manager_id`,`fund_code`,`start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������������'; 


DROP TABLE IF  EXISTS fund_nav_quantity ;
CREATE TABLE IF NOT EXISTS `fund_nav_quantity` (
  `fund_code` varchar(255) NOT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
   PRIMARY KEY (`fund_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����ֵ������'; 


CREATE TABLE `fund_portfolio_3` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `fundCode_0` varchar(255) NOT NULL,
  `fundCode_1` varchar(255) NOT NULL,
  `fundCode_2` varchar(255) NOT NULL,
  `portfolio_0` float NOT NULL,
  `portfolio_1` float NOT NULL,
  `portfolio_2` float NOT NULL,
  `returns` float NOT NULL,
  `risks` float NOT NULL,
  `sharpeRatio` float NOT NULL,
   `annual_return_score` float NOT NULL,
  `cum_on_duty_term_pct` float NOT NULL,
  `annual_return_fund` float NOT NULL,
  `term` float NOT NULL,
  `weighted_annual_return_score` float NOT NULL,
  `mode` varchar NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `train_date` datetime NOT NULL,
  `expire_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�������ʱ���3λ��'


CREATE TABLE `fund_backtest_3` (
  `id` int(15) NOT NULL,
  `est_returns` float NOT NULL,
  `act_returns` float NOT NULL,
  `time_delay` int(11) NOT NULL,
  `backtest_date` datetime NOT NULL,
  `expire_flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`backtest_date`),
  CONSTRAINT `fund_backtest_3_ibfk_1` FOREIGN KEY (`id`) REFERENCES `fund_portfolio_3` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����ز����3λ��'


-- side to asist
replace into fund_nav select * from fund_nav_slave;
replace into fund_nav_currency select * from fund_nav_currency_slave;

truncate table fund_nav_currency_slave;
truncate table fund_nav_slave;

select fund_code,count(*) from fund_nav_slave group by fund_code;
select * from fund_nav_slave;
select count(*) from fund_nav_slave where fund_code =501053;

select fund_code,count(*) from fund_nav_currency_slave group by fund_code;
select * from fund_nav_currency_slave;



select fund_code,count(*) from fund_nav group by fund_code;
select count(*) from fund_nav where fund_code =671030;
select * from fund_nav where fund_code =005784;

select * from fund_info where fund_type ='������';

show global variables like '%timeout%';
set global net_read_timeout =100;
show global variables like '%packet%';
set global net_read_timeout =256*1024*1024;

SELECT *
FROM fund.fund_nav
where nav != add_nav
and fund_code = 202001;