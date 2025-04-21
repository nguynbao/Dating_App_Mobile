lib/
├── app/                           # Khởi chạy và cấu hình gốc của ứng dụng
│   ├── app.dart                   # Tạo MaterialApp, định nghĩa theme, route
│   └── run.dart                   # Hàm khởi động runApp()
|
├── core/                          # Cốt lõi của app, dùng chung toàn dự án
│   ├── constant/                  # Các hằng số và định tuyến
│   │   ├── app_constants.dart     # Hằng số toàn ứng dụng (padding, spacing...)
│   │   ├── app_navigation.dart    # Điều hướng thủ công (Navigator)
│   │   └── app_routes.dart        # Định nghĩa các route tên
│   |
│   ├── permission/                # Xử lý quyền truy cập (camera, location...)
│   │   └── app_permissions.dart
│   | 
│   ├── services/                  # Dịch vụ dùng chung (gọi API...)
│   │   └── api_service.dart
│   |
│   ├── theme/                     # Cấu hình theme (màu, font...)
│   │   ├── app_colors.dart
│   │   ├── app_theme.dart
│   │   └── typography.dart
│   |
│   └── utils/                     # Các hàm tiện ích, mở rộng, kiểm tra dữ liệu
│       ├── date_utils.dart
│       ├── extensions.dart        # Extension methods
│       ├── globals.dart           # Biến toàn cục
│       ├── logger.dart            # Ghi log cho debug
│       └── validation.dart        # Hàm kiểm tra dữ liệu nhập
|
├── data/                          # Quản lý và lấy dữ liệu
│   ├── database/                  # Cơ sở dữ liệu cục bộ (SQLite, Hive,...)
│   │   ├── app_database.dart
│   │   └── app_keys.dart          # Các key lưu trữ (shared_preferences,...)
│   |
│   └── network/                   # Giao tiếp với API
│       ├── api_client.dart        # Cấu hình HTTP client
│       ├── api_endpoint.dart      # Danh sách endpoint
│       └── network_exceptions.dart# Xử lý lỗi mạng
|
├── features/                      # Các tính năng của ứng dụng (chia theo module)
│   └── home/                      # Mô-đun tính năng Home
│       ├── component/             # Các widget riêng cho màn hình home
│       ├── model/                 # Dữ liệu dùng trong home
│       ├── provider/              # Quản lý state của home (dùng Provider)
│       ├── state/                 # Trạng thái logic riêng
│       └── view/                  # UI chính của Home (HomeView)
|
├── gen/                           # File được sinh tự động (như FlutterGen)
│   └── assets.gen.dart            # Tự sinh các đường dẫn asset (ảnh, font,...)
|
├── widgets/                       # Các widget dùng lại trong nhiều nơi
│   ├── common/                    # Nhóm các widget chung
│   │   ├── greenButton.dart
│   │   ├── sn_button.dart
│   │   ├── sn_navbar.dart
│   │   ├── sn_text.dart
│   │   ├── sn_text_field.dart
│   │   └── sn_widgets.dart
│
├── screen/                        # Các màn hình phụ hoặc đặc biệt
│   └── error_screen.dart          # Màn hình lỗi (404, không có mạng...)

