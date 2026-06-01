@echo off
chcp 65001 >nul
cls
echo ============================================================
echo      🚀 TỰ ĐỘNG THIẾT LẬP VÀ CHẠY DỰ ÁN NGUYỄN TIẾN DŨNG
echo ============================================================
echo.

REM Kiểm tra Node.js
echo 📋 Kiểm tra Node.js...
node --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Node.js chưa cài đặt!
    echo 📥 Tải từ: https://nodejs.org/
    echo ⏳ Vui lòng cài đặt Node.js rồi chạy file này lại
    pause
    exit /b 1
) else (
    for /f "tokens=*" %%i in ('node --version') do echo ✅ Node.js: %%i
)

echo.
echo 📋 Kiểm tra Git...
git --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Git chưa cài đặt!
    echo 📥 Tải từ: https://git-scm.com/
    echo ⏳ Vui lòng cài đặt Git rồi chạy file này lại
    pause
    exit /b 1
) else (
    for /f "tokens=*" %%i in ('git --version') do echo ✅ %%i
)

echo.
echo 📁 Đang clone repository...
if exist "NguyenTienDung" (
    echo ⚠️  Thư mục NguyenTienDung đã tồn tại
    echo 🗑️  Xóa thư mục cũ...
    rmdir /s /q "NguyenTienDung"
)

git clone https://github.com/dungbeo21614-dotcom/NguyenTienDung.git
if errorlevel 1 (
    echo ❌ Clone thất bại!
    pause
    exit /b 1
)
echo ✅ Clone thành công!

echo.
echo 📁 Vào thư mục dự án...
cd NguyenTienDung
if errorlevel 1 (
    echo ❌ Không thể vào thư mục!
    pause
    exit /b 1
)
echo ✅ Đã vào thư mục NguyenTienDung

echo.
echo 📦 Đang cài đặt dependencies (npm install)...
echo ⏳ Đây có thể mất 2-3 phút, vui lòng chờ...
npm install
if errorlevel 1 (
    echo ❌ npm install thất bại!
    pause
    exit /b 1
)
echo ✅ npm install hoàn tất!

echo.
echo ============================================================
echo      ✅ TẤT CẢ ĐÃ HOÀN TẤT!
echo ============================================================
echo.
echo 🚀 Đang khởi động ứng dụng...
echo 📱 Truy cập: http://localhost:5173/
echo.
echo ⏳ Chương trình sẽ mở trong vài giây...
echo.
timeout /t 3 /nobreak

npm run dev

pause