CREATE DATABASE shoppingmalldb;

use shoppingmalldb;

CREATE TABLE `tbl_user` (
	`Key`	varchar(13)	NOT NULL PRIMARY KEY,
	`u_pw`	varchar(255)	NULL,
	`u_tel`	varchar(13)	NULL,
	`u_addr`	varchar(60)	NULL,
	`u_email`	varchar(40)	NULL,
	`u_name`	varchar(10)	NULL,
	`u_rnum`	varchar(14)	NULL,
	`u_point`	int	NULL
);

CREATE TABLE `tbl_ord` (
	`ord_seq`	VARCHAR(10)	NOT NULL PRIMARY KEY,
	`Key`	varchar(13)	NOT NULL,
	`ord_name`	VARCHAR(30)	NULL,
	`ord_postcode`	VARCHAR(5)	NULL,
	`ord_addr`	VARCHAR(100)	NULL,
	`ord_hp`	VARCHAR(50)	NULL,
	`ord_memo`	VARCHAR(100)	NULL,
	`ord_date`	VARCHAR(10)	NULL,
	`ord_tprice`	BIGINT	NULL,
	`ord_status`	INT	NULL,
	`ord__point`	INT	NULL
);

CREATE TABLE `product` (
	`p_seq`	bigint	NOT NULL PRIMARY KEY,
	`p_uid`	varchar(13)	NOT NULL,
	`p_name`	varchar(100)	NULL,
	`p_content`	text	NULL,
	`p_price`	int	NULL,
	`p_qty`	int	NULL,
	`p_category`	varchar(15)	NULL,
	`p_like`	int	NULL,
	`p_mainImage`	varchar(300)	NULL
);

CREATE TABLE `cart` (
	`c_seq`	bigint	NOT NULL PRIMARY KEY,
	`c_pseq`	bigint	NOT NULL,
	`c_uid`	varchar(13)	NOT NULL,
	`c_amount`	int	NULL,
	`c_checked`	int	NULL,
	`c_paid`	int	NULL
);

CREATE TABLE `tbl_pm` (
	`pm_seq`	VARCHAR(10)	NOT NULL PRIMARY KEY,
	`ord_seq`	VARCHAR(10)	NOT NULL,
	`pm_method`	INT	NULL,
	`pm_price`	BIGINT	NULL,
	`pm_ispayed`	INT	NULL
);

CREATE TABLE `review` (
	`r_num`	bigint	NOT NULL PRIMARY KEY,
	`r_pseq`	bigint	NOT NULL,
	`r_uid`	varchar(13)	NOT NULL,
	`r_content`	text	NULL,
	`r_date`	varchar(10)	NULL
);

CREATE TABLE `images` (
	`i_seq`	bigint	NOT NULL PRIMARY KEY,
	`i_pseq`	bigint	NOT NULL,
	`i_originalName`	varchar(100)	NULL,
	`i_imageName`	varchar(300)	NULL
);

CREATE TABLE `tbl_delivery` (
	`dv_seq`	VARCHAR(10)	NOT NULL PRIMARY KEY,
	`pm_seq`	VARCHAR(10)	NOT NULL,
	`ord_seq`	VARCHAR(10)	NOT NULL,
	`dv_status`	INT	NULL,
	`dv_date`	VARCHAR(10)	NULL
);

CREATE TABLE `tbl_product_out` (
	`po_seq`	VARCHAR(10)	NOT NULL PRIMARY KEY,
	`bu_seq`	VARCHAR(10)	NOT NULL,
	`p_seq`	bigint	NOT NULL,
	`po_qty`	INT	NULL,
	`po_status`	INT	NULL,
	`po_date`	VARCHAR(10)	NULL
);

CREATE TABLE `question` (
	`q_seq`	bigint	NOT NULL PRIMARY KEY,
	`q_pseq`	bigint	NOT NULL,
	`q_uid`	varchar(13)	NULL,
	`q_title`	varchar(50)	NULL,
	`q_content`	text	NULL,
	`q_date`	varchar(10)	NULL
);

CREATE TABLE `answer` (
	`a_seq`	bigint	NOT NULL PRIMARY KEY,
	`a_qseq`	bigint	NOT NULL,
	`a_content`	text	NULL,
	`a_date`	varchar(10)	NULL
);