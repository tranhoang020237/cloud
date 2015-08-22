-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-08-22 00:52:15.97




-- tables
-- Table TNhanvien
CREATE TABLE TNhanvien (
    MaNV int    NOT NULL ,
    TenNV varchar(30)    NOT NULL ,
    NgaySinh date    NOT NULL ,
    Gioitinh varchar(10)    NOT NULL ,
    Email varchar(50)    NOT NULL ,
    Mucluong int    NOT NULL ,
    MaPhong int    NOT NULL ,
    TPhongBan_MaPhong int    NOT NULL ,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (MaNV)
);

-- Table TPhongBan
CREATE TABLE TPhongBan (
    MaPhong int    NOT NULL ,
    Tenphong varchar(50)    NOT NULL ,
    CONSTRAINT TPhongBan_pk PRIMARY KEY (MaPhong)
);





-- foreign keys
-- Reference:  TNhanvien_TPhongBan (table: TNhanvien)


ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongBan FOREIGN KEY TNhanvien_TPhongBan (TPhongBan_MaPhong)
    REFERENCES TPhongBan (MaPhong);



-- End of file.

