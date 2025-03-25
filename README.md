# BT2_HQTSCDL
## Bài tập 02 của sv: K225480106045 - Dương Thị Ly - Môn Hệ quản trị csdl

## DEADLINE: 23H59 NGÀY 25/03/2025

## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.

## BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

## YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql


## HÌNH THỨC LÀM BÀI:
1. Tạo repository mới, tạo file readme.md (có hướng dẫn trên zalo group)
2. Sinh viên thao tác trên máy tính cá nhân, chụp màn hình quá trình làm, chỉ cần chụp active window, thi thoảng chụp full màn hình để thấy sự cá nhân hoá.
3. Hình sau khi chụp paste trực tiếp vào file readme trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. upload các file liên quan: Script_DML.sql
5. Update link của repository vào cột bài tập 2 trên file excel online của thầy (đã ghim link trên zalo group)

## Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.

# ẢNH DEMO QUÁ TRÌNH LÀM
## Thực hiện các hành động trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán 
  1. Chuột phải vào Databases → Chọn New Database... để tạo cơ sở dữ liệu mới.
     ![image](https://github.com/user-attachments/assets/af9ff7c0-db84-40c3-adce-5dc3fe67af8b)
  2. Chuột phải vào Tables → Chọn New → Table... để tạo bảng mới.
     ![Ảnh chụp màn hình 2025-03-25 165417](https://github.com/user-attachments/assets/f070a158-a25e-4f80-8a04-b54167a6ad48)
  3. Tạo bảng BOMON với các cột MABM, TENBM, MAKHOA và thiết lập kiểu dữ liệu.
     ![Ảnh chụp màn hình 2025-03-22 110756](https://github.com/user-attachments/assets/cd2322ee-1ddd-438f-aad5-2e3fbd22801d)
  4. Tạo bảng DKMH với các cột MALOPHP, MASV, DIEMTP, DIEMTHI, PHANTRAMTHI và thiết lập kiểu dữ liệu.
     ![Ảnh chụp màn hình 2025-03-22 110811](https://github.com/user-attachments/assets/86d8f94a-b6ab-4732-935c-08010a2dfc4c)
  5. Tạo bảng GIAOVIEN với các cột MAGV, HOTEN, NGAYSINH, MABM và thiết lập kiểu dữ liệu. 
     ![Ảnh chụp màn hình 2025-03-22 110823](https://github.com/user-attachments/assets/23f3bbbb-563c-4148-874c-5c528f8d4905)
  6. Tạo bảng GVCN với các cột MALOP, MAGV, HOCKY và thiết lập kiểu dữ liệu.
     ![Ảnh chụp màn hình 2025-03-22 110833](https://github.com/user-attachments/assets/251d0feb-438b-4054-aee5-7c6034f3ae0e)
  7. Tạo bảng KHOA với các cột MAKHOA, TENKHOA và thiết lập kiểu dữ liệu.
     ![Ảnh chụp màn hình 2025-03-22 110843](https://github.com/user-attachments/assets/dd155652-b734-485c-92dc-84a01905414a)
  8. Tạo bảng LOP với các cột MALOP, TENLOP và thiết lập kiểu dữ liệu.
     ![Uploading Ảnh chụp màn hình 2025-03-22 110852.png…]()
  9. Tạo bảng LOPHP với các cột MALOPHP, TENLOPHP, HOCKY, MAMON, MAGV và thiết lập kiểu dữ liệu.
     ![Ảnh chụp màn hình 2025-03-22 110902](https://github.com/user-attachments/assets/116a27b6-dd5d-4897-8a57-29a8d921b82a)
  10. Tạo bảng LOPSV với các cột MALOP, MASV, CHUCVU và thiết lập kiểu dữ liệu.
      ![Ảnh chụp màn hình 2025-03-22 110912](https://github.com/user-attachments/assets/47ca1dcc-effb-4b20-aa82-9943a6bb79da)
  11. Tạo bảng MONHOC với các cột MAMON, TENMON, SOTINCHI và thiết lập kiểu dữ liệu.
      ![Ảnh chụp màn hình 2025-03-22 110923](https://github.com/user-attachments/assets/87ad8ddf-d1eb-4b37-86c4-40259bdf6e23)
  12. Tạo bảng SINHVIEN với các cột MSV, HOTEN, NGAYSINH và thiết lập kiểu dữ liệu.
      ![Ảnh chụp màn hình 2025-03-22 110937](https://github.com/user-attachments/assets/2e64e273-f88f-499b-8b47-a8f410a63b15)
  13. 







