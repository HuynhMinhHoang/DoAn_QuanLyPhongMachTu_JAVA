# DoAn_QuanLyPhongMachTu_JAVA

# Họ tên: Huỳnh Minh Hoàng
# MSSV: 2051052046 


# HỆ THỐNG QUẢN LÝ PHÒNG MẠCH TƯ

## Cài đặt và Chạy

### Yêu cầu

- JDK: Bạn có thể tải JDK từ trang chính của Oracle hoặc sử dụng một phiên bản OpenJDK. Đảm bảo tương thích với NetBeans IDE mà bạn đang sử dụng
- NetBeans IDE: Dự án được phát triển bằng NetBeans, vì vậy bạn nên cài đặt NetBeans IDE để mở và quản lý mã nguồn của dự án.
- MySQL: Để sử dụng cơ sở dữ liệu, bạn cần cài đặt và cấu hình MySQL Server trên máy tính của bạn.

### Cài đặt

1. **Sao chép mã nguồn**: 
   - Trong cửa sổ dòng lệnh, di chuyển đến thư mục mà bạn muốn sao chép mã nguồn vào bằng lệnh cd (change directory). Ví dụ: cd /đường-dẫn-đến-thư-mục-đích.
   - Sau đó, sử dụng lệnh sau để sao chép mã nguồn từ kho lưu trữ GitHub: git clone <URL-kho-lưu-trữ-GitHub>. Trong đó, <URL-kho-lưu-trữ-GitHub> là đường dẫn của kho lưu trữ GitHub

2. **Mở dự án trên NetBeans**:
   - Mở NetBeans IDE.
   - Chọn File -> Open Project và chọn thư mục chứa mã nguồn của dự án.
   - Dự án sẽ được tải vào NetBeans.

3. **Cấu hình cơ sở dữ liệu**:
   - Mở MySQL Workbench hoặc một công cụ quản lý cơ sở dữ liệu khác để tạo cơ sở dữ liệu mới có tên bất kì. Sau đó, kết nối cơ sở dữ liệu mới tạo kết nối vào cơ sở dữ liệu từ kho lưu trữ GitHub có tên là db.sql
   - Cập nhật thông tin kết nối đến cơ sở dữ liệu MySQL trong tệp `database.properties` của dự án. :
      - Tìm tệp `database.properties`trong dự án của bạn thường thì tệp này được đặt trong thư mục src/main/resources hoặc một vị trí tương tự.
      - Mở tệp `database.properties`
      - Bên trong tệp database.properties, bạn cần thay đổi:
         - database.username=your_username: Thay thế your_username bằng tên người dùng MySQL của bạn.
         - database.password=your_password: Thay thế your_password bằng mật khẩu MySQL của bạn.
      - Lưu tệp database.properties sau khi bạn đã cập nhật thông tin.

4. **Chạy dự án**:
   - Mở NetBeans:
      - Khởi động NetBeans IDE trên máy tính của bạn.
   - Mở dự án:
      - Mở dự án mà bạn muốn chạy bằng cách nhấp vào "File" và sau đó chọn "Open Project" (Mở Dự án).
      - Tìm và chọn thư mục chứa dự án của bạn, sau đó nhấp vào nút "Open Project" (Mở Dự án).
   - Chọn Configurations (Tùy chỉnh):
      - Trước khi chạy dự án, bạn nên đảm bảo rằng bạn đã chọn cấu hình cần thiết cho dự án của mình (chẳng hạn như Debug hoặc Release). Điều này thường nằm ở phía trên cửa sổ NetBeans, gần nút "Run" (Chạy). Bạn có thể chọn tùy chỉnh này trong danh sách thả xuống.
   - Chạy dự án:
      - Bấm chuột phải vào dự án trong thanh dự án (Project Explorer) của NetBeans. Dự án thường được liệt kê ở phía bên trái cửa sổ.
      - Chọn "Run" (Chạy) từ menu ngữ cảnh mà hiện ra sau khi bạn bấm chuột phải. Hoặc bạn cũng có thể nhấp vào biểu tượng "Run" (mũi tên xanh) trên thanh công cụ hoặc sử dụng phím tắt Ctrl+F6.
   - Đợi cho ứng dụng triển khai và chạy:
      - NetBeans sẽ tiến hành biên dịch và triển khai ứng dụng của bạn. Sau khi hoàn tất, ứng dụng sẽ tự động chạy trên máy tính của bạn. Bạn sẽ thấy kết quả trong cửa sổ Output (Kết quả) hoặc Output Console (Bảng điều khiển Kết quả).

### Ghi chú
- Dự án này sử dụng JDK 11, vui lòng đảm bảo rằng NetBeans đang sử dụng JDK này để chạy ứng dụng.
- Để thực hiện kiểm duyệt dữ liệu của hệ thống, bạn cần thực hiện đăng nhập với vai trò "Admin" bằng vai trò "Người quản lý".
- Bạn cần kết nối cơ sở dữ liệu trước khi bắt đầu chạy dự án.

## Đóng góp
Chúng tôi rất hoan nghênh đóng góp từ cộng đồng. Nếu bạn muốn đóng góp vào dự án này, vui lòng tạo một yêu cầu kéo (pull request) hoặc báo cáo sự cố (issue).

## Liên hệ
Nếu bạn cần hỗ trợ hoặc có bất kỳ câu hỏi nào liên quan đến dự án này, vui lòng liên hệ qua email: 2051052046hoang@ou.edu.vn, số điện thoại: 0336334143



