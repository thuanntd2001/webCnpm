USE kinhdoanh;    
    drop table if exists chucvu
; 
    
    drop table if exists ctddh
; 
    
    drop table if exists ctpn
; 
    
    drop table if exists dondathang
; 
    
    drop table if exists giohang
; 
    
    drop table if exists khachhang
; 
    
    drop table if exists loaisp
; 
    
    drop table if exists nhanvien
; 
    
    drop table if exists nhanvien_chucvu
; 
    
    drop table if exists phieunhap
; 
    
    drop table if exists sanpham
; 
    
    create table chucvu (
       id bigint not null auto_increment,
        tenchucvu varchar(255),
        primary key (id)
    ) 
; 
    
    create table ctddh (
       id bigint not null auto_increment,
        danhgia longtext,
        diem integer,
        soluong integer,
        tongtien integer,
        maddh bigint,
        sanpham bigint,
        primary key (id)
    ) 
; 
    
    create table ctpn (
       id bigint not null auto_increment,
        dongia integer,
        soluong integer,
        mapn bigint,
        sanpham bigint,
        primary key (id)
    ) 
; 
    
    create table dondathang (
       maddh bigint not null auto_increment,
        ngaythuchien datetime,
        tinhtrang integer,
        makh bigint,
        nvxacnhan bigint,
        primary key (maddh)
    ) 
; 
    
    create table giohang (
       id bigint not null auto_increment,
        soluong integer,
        makh bigint,
        sanpham bigint,
        primary key (id)
    ) 
; 
    
    create table khachhang (
       makh bigint not null auto_increment,
        diachi varchar(255),
        email varchar(255),
        gioitinh bit,
        hoten varchar(255),
        icon varchar(255),
        maxacthuc varchar(255),
        ngaydangky datetime,
        ngaysinh date,
        passwd varchar(255),
        sdt varchar(255),
        trangthai integer,
        username varchar(255),
        primary key (makh)
    ) 
; 
    
    create table loaisp (
       id bigint not null auto_increment,
        tenloai varchar(255),
        primary key (id)
    ) 
; 
    
    create table nhanvien (
       manv bigint not null auto_increment,
        cmnd varchar(255),
        diachi varchar(255),
        email varchar(255),
        gioitinh bit,
        hoten varchar(255),
        icon varchar(255),
        luong integer,
        ngaysinh date,
        ngayvaolam date,
        passwd varchar(255),
        sdt varchar(255),
        trangthai integer,
        username varchar(255),
        primary key (manv)
    ) 
; 
    
    create table nhanvien_chucvu (
       manv bigint not null,
        id bigint not null
    ) 
; 
    
    create table phieunhap (
       mapn bigint not null auto_increment,
        nhacc varchar(255),
        ngay datetime,
        tinhtrang integer,
        manv bigint,
        primary key (mapn)
    ) 
; 
    
    create table sanpham (
       id bigint not null auto_increment,
        donvitinh varchar(255),
        gia integer,
        icon varchar(255),
        mota longtext,
        soluongton integer,
        ten varchar(255),
        trangthai integer,
        loai bigint,
        primary key (id)
    ) 
; 
    
    alter table ctddh 
       add constraint FKsatyalm5q2x0cjbu5sym2sdq1        
       foreign key (maddh) 
       references dondathang (maddh)
; 
    
    alter table ctddh 
       add constraint FKed6n2lqsbtxppbldx6fb3nw74 
       foreign key (sanpham) 
       references sanpham (id)
; 
    
    alter table ctpn 
       add constraint FKki3d22dbnowolcgqtxvgd62jm 
       foreign key (mapn) 
       references phieunhap (mapn)
; 
    
    alter table ctpn 
       add constraint FK7lohmspvlm93o2i6cr6ehox14 
       foreign key (sanpham) 
       references sanpham (id)
; 
    
    alter table dondathang 
       add constraint FK7mfty2m79o98uk1b6vmht5pn8 
       foreign key (makh) 
       references khachhang (makh)
; 
    
    alter table dondathang 
       add constraint FKqu0hxpglbow8gvmc6rco62crm 
       foreign key (nvxacnhan) 
       references nhanvien (manv)
; 
    
    alter table giohang 
       add constraint FK3a5g8iyvgpwxy37062hwv5339 
       foreign key (makh) 
       references khachhang (makh)
; 
    
    alter table giohang 
       add constraint FKh66e48rmycmnjfbsmfo3ir9ce 
       foreign key (sanpham) 
       references sanpham (id)
; 
    
    alter table nhanvien_chucvu 
       add constraint FKg6tteauf5w8dqa32dyxusminy 
       foreign key (id) 
       references chucvu (id)
; 
    
    alter table nhanvien_chucvu 
       add constraint FKa5xmthd9pd8qn9w5l45nyn74h 
       foreign key (manv) 
       references nhanvien (manv)
; 
    
    alter table phieunhap 
       add constraint FKkedc0d3kfjdphsqb31rkvjebw 
       foreign key (manv) 
       references nhanvien (manv)
; 
    
    alter table sanpham 
       add constraint FKp0v5lxmnu2m8aer5y79jn1xr3 
       foreign key (loai) 
       references loaisp (id)
