CREATE TABLE B2C_BRAND (
 id INT AUTO_INCREMENT PRIMARY KEY,
 NAME VARCHAR(200),
 CREATION_DATE DATETIME
);

###

CREATE TABLE B2C_COLOR (
 id INT AUTO_INCREMENT PRIMARY KEY,
 NAME VARCHAR(100) NOT NULL,
 CODE VARCHAR(10) NOT NULL
);

###

CREATE TABLE B2C_PRODUCT_CATEGORY (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  NAME VARCHAR(250) NOT NULL
);

###
CREATE TABLE B2C_PRODUCT(
  id INT AUTO_INCREMENT  PRIMARY KEY,
  NAME VARCHAR(250) NOT NULL,
  QUANTITY INT NOT NULL,
  SIZE VARCHAR(5) NOT NULL,
  PRICE INT NOT NULL,
  FK_BRAND_ID INT NOT NULL,
  foreign key (FK_BRAND_ID) references B2C_BRAND(ID),
  FK_COLOR_ID INT NOT NULL,
  foreign key (FK_COLOR_ID) references B2C_COLOR(ID),
  FK_PRODUCT_CTGR_ID INT NOT NULL,
  foreign key (FK_PRODUCT_CTGR_ID) references B2C_PRODUCT_CATEGORY(ID)
);

#####
