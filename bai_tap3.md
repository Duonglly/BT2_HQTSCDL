#BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 30/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

#ẢNH DEMO QUÁ TRÌNH LÀM BÀI TẬP 3
##  Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu Đề bài
![Ảnh chụp màn hình 2025-03-28 143327](https://github.com/user-attachments/assets/5a7b0818-3ab1-4e9d-b699-1c0e55facd28)
## Nhập dữ liệu demo cho các bảng
![Ảnh chụp màn hình 2025-03-28 150235](https://github.com/user-attachments/assets/321d2118-55b7-4e83-b6ac-28f5ce6507fa)
##  Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
![Ảnh chụp màn hình 2025-03-28 150212](https://github.com/user-attachments/assets/938c036c-d20d-404b-947e-94df079021a6)
## Chụp ảnh màn hình các bảng có đường nối một nhiều
  1.sinhvien → dkmh: Một sinh viên (1) có thể đăng ký nhiều môn học (nhiều), nhưng mỗi môn học chỉ thuộc về một sinh viên.
  ![Ảnh chụp màn hình 2025-03-30 221248](https://github.com/user-attachments/assets/12f04115-6dc5-4be6-bc3d-7324224db2a0)
  2. lop → lopsv: Một lớp học (1) có thể chứa nhiều sinh viên (nhiều), nhưng mỗi sinh viên chỉ thuộc về một lớp.
  ![image](https://github.com/user-attachments/assets/d9b47419-6319-4760-bf55-acda2b84ff2b)
  3. lop → gvcn: Một lớp học (1) chỉ có một giáo viên chủ nhiệm (1), nhưng một giáo viên có thể chủ nhiệm nhiều lớp học (nhiều).
  ![image](https://github.com/user-attachments/assets/45a3fd6e-e294-45bd-9071-37884331497c)
  4.lop → dkmh: Một lớp học (1) có thể liên quan đến nhiều môn học mà sinh viên trong lớp đăng ký (nhiều).
  ![image](https://github.com/user-attachments/assets/348d8774-fa25-44da-a153-cd475a3c6f7f)
  5. lop → diem: Một lớp học (1) sẽ chứa điểm của nhiều sinh viên trong lớp (nhiều).
  ![image](https://github.com/user-attachments/assets/4be195c7-5d63-4f39-81a6-5bc6215dbdb3)
  7. lop → lopphp: Một lớp học (1) có thể liên quan đến nhiều lớp phụ huynh - phụ trách (nhiều).
  ![image](https://github.com/user-attachments/assets/d69a33f2-9000-4320-83d7-3e34742c3612)
  8.lopphp → monhoc: Một lớp phụ trách (1) có thể quản lý nhiều môn học (nhiều).
  ![image](https://github.com/user-attachments/assets/570c403d-dad5-44f0-b485-e0a43696716d)
  9. giaovien → gvcn: Một giáo viên (1) có thể chủ nhiệm nhiều lớp (nhiều)
  ![image](https://github.com/user-attachments/assets/86c1b402-af71-40d4-a3cd-c0b49b17d51a)
  9.giaovien → bomon: Một giáo viên (1) có thể tham gia nhiều bộ môn (nhiều)
  ![image](https://github.com/user-attachments/assets/d4f7a2d0-c820-4696-a750-8fa3a3e4b445)
  10.bomon → khoa: Một bộ môn (1) thuộc về một khoa (1), nhưng một khoa có thể bao gồm nhiều bộ môn (nhiều).
  ![image](https://github.com/user-attachments/assets/d2470858-8636-4624-a30a-2618d33acacc)


