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
      
  13. Tạo khóa chính cho các bảng bằng cách chọn hàng muốn thiết lập làm khóa chính->nhấp vào biểu tượng chìa khóa trên thanh công cụ-> làm tương tự với các bảng còn lại
      ![Ảnh chụp màn hình 2025-03-22 110923](https://github.com/user-attachments/assets/a65a1801-d12b-4611-80ae-390d90838cdf)
      
  14. Thiết lập khóa ngoại cho bảng dkmh: Nhấn Add → chọn quan hệ tương ứng→ mở Tables And Columns Spec → đặt khóa ngoại phù → nhấn OK.
     ![Ảnh chụp màn hình 2025-03-25 083202](https://github.com/user-attachments/assets/fa9de307-72f9-43ba-86c5-5833741bb768)

  15. Thiết lập khóa ngoại cho bảng gvcn ràng buộc với bảng giáo viên và bảng lop-> làm tương tự trên
      ![Ảnh chụp màn hình 2025-03-25 084040](https://github.com/user-attachments/assets/7f621b40-1b68-49fe-b3d4-d426ec250ba2)

  16.  Thiết lập khóa ngoại cho bảng lophp ràng buộc với bảng dkmh,giaovien,monhoc-> làm tương tự trên
      ![Ảnh chụp màn hình 2025-03-25 085454](https://github.com/user-attachments/assets/8f254ab2-fce8-4da9-9170-0bf7956e5021)

  17. Thiết lập khóa ngoại cho bảng lopsv ràng buộc với bảng lop-> làm tương tự như trên
      ![Ảnh chụp màn hình 2025-03-25 085830](https://github.com/user-attachments/assets/90dd3ad6-4e53-4c03-a56a-1f79459f3eb9)
    
  18. Đặt điều kiện cho thuộc tính: chuột phải chọn checkconstraints-> đặt điều kiện ở ô expression
      ![Ảnh chụp màn hình 2025-03-22 121222](https://github.com/user-attachments/assets/f980df47-bb09-4659-8645-2a930f76a612)

## Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương

  1. Nhấn tổ hợp phím ctr+N để tạo data base mới
      ![Ảnh chụp màn hình 2025-03-25 211055](https://github.com/user-attachments/assets/f8adfb7f-987a-4658-b952-32a6978a3042)

  3. Tạo data base QLSV tại vị trí mong muốn
      ![Ảnh chụp màn hình 2025-03-25 091727](https://github.com/user-attachments/assets/099ce28a-c947-459d-af84-3082472fb371)

  5. Sử dụng data base
      ![Ảnh chụp màn hình 2025-03-25 091734](https://github.com/user-attachments/assets/91b5a126-286f-4f91-932e-8b990b1e0b45)

  7. Tạo bảng khoa
      ![Ảnh chụp màn hình 2025-03-25 091738](https://github.com/user-attachments/assets/47fe9fd3-d323-476c-9de1-b1aa635c1e56)

  9. Tạo bảng bomon
      ![Ảnh chụp màn hình 2025-03-25 091742](https://github.com/user-attachments/assets/bc345e05-45e3-4689-8bd9-1a5bd937db35)

  6.Tạo bảng giaovien
      ![Ảnh chụp màn hình 2025-03-25 091747](https://github.com/user-attachments/assets/069e5bd5-02be-4429-97a8-511cd8f3d88c)

  7.Tạo bảng lop
      ![Ảnh chụp màn hình 2025-03-25 091750](https://github.com/user-attachments/assets/04ec7e0e-544d-4401-9ba7-213c8e7e3dcd)

  8.Tạo bảng sinhvien
      ![Ảnh chụp màn hình 2025-03-25 091757](https://github.com/user-attachments/assets/4e89b0a2-dfd4-494d-ae4a-afa35a0822fc)

  11. Tạo bảng gvcn
      ![Ảnh chụp màn hình 2025-03-25 091803](https://github.com/user-attachments/assets/a4f34b01-d55d-44ce-915a-4c5b4268aeb3)

  13. Tạo bảng lopsv
      ![Ảnh chụp màn hình 2025-03-25 091808](https://github.com/user-attachments/assets/802a32d0-03ae-4735-84da-b61bcf93a514)

  15. Tạo bảng monhoc
      ![Ảnh chụp màn hình 2025-03-25 091814](https://github.com/user-attachments/assets/85a7df4d-4bba-4e81-8e89-4ae509fa3442)

  12.Tạo bảng lophp
      ![Ảnh chụp màn hình 2025-03-25 091818](https://github.com/user-attachments/assets/e2408b6d-1e07-4a59-8d64-a1d19de26fbf)

  17. Tạo bảng dkmh
      ![Ảnh chụp màn hình 2025-03-25 091823](https://github.com/user-attachments/assets/41cb789a-71ae-4d8a-82b6-e24a0dd1c67e)

  19. Chạy code và kết quả tạo được 10 bảng như hình
      ![Ảnh chụp màn hình 2025-03-25 091905](https://github.com/user-attachments/assets/6a1b05d7-319d-4228-9fa7-ca7933264230)






