# 📦 Quản lý Loại sản phẩm - Bài Kiểm Tra Full-Stack

**Tác giả:** Nguyễn Tiến Dũng  
**Ngành:** Công nghệ thông tin  
**Thời gian:** 90 phút  

## 📋 Yêu cầu bài kiểm tra

✅ Sử dụng **Vue.js** để xây dựng trang danh sách loại sản phẩm  
✅ Sử dụng **MockAPI** để tạo fake API  
✅ Sử dụng **Axios** gọi API (Hiển thị, Thêm, Sửa, Xóa)  
✅ Sử dụng **Pinia** để quản lý state  
✅ Sử dụng **Vue Router** để điều hướng giữa các trang  
✅ **Error Handling** hiển thị trong Console  

## 🚀 Cách chạy dự án

### 1. Clone repository
```bash
git clone https://github.com/dungbeo21614-dotcom/NguyenTienDung.git
cd NguyenTienDung
```

### 2. Cài đặt dependencies
```bash
npm install
```

### 3. Chạy dự án
```bash
npm run dev
```

### 4. Mở trình duyệt
Truy cập: http://localhost:5173/

## 📁 Cấu trúc dự án

```
NguyenTienDung/
├── src/
│   ├── components/
│   │   ├── CategoryList.vue       # Danh sách loại sản phẩm
│   │   ├── CategoryForm.vue       # Form thêm/sửa
│   │   └── CategoryDetail.vue     # Chi tiết loại sản phẩm
│   ├── stores/
│   │   └── categoryStore.ts       # Pinia store
│   ├── router/
│   │   └── index.ts               # Vue Router config
│   ├── services/
│   │   └── api.ts                 # Axios API client
│   ├── App.vue                    # Root component
│   └── main.ts                    # Entry point
├── index.html
├── package.json
├── vite.config.ts
├── tsconfig.json
└── README.md
```

## 🔧 Công nghệ sử dụng

- **Vue 3** - Framework JavaScript
- **TypeScript** - Type safety
- **Vite** - Build tool
- **Pinia** - State management
- **Vue Router** - Client-side routing
- **Axios** - HTTP client
- **MockAPI** - Fake API service

## 📝 Các tính năng

### 1. Hiển thị danh sách loại sản phẩm
- Tải dữ liệu từ MockAPI khi trang load
- Hiển thị trong bảng HTML

### 2. Thêm mới loại sản phẩm
- Điều hướng đến trang form create
- Submit data qua API
- Cập nhật state Pinia

### 3. Sửa loại sản phẩm
- Click nút "Sửa" để mở form
- Pre-fill dữ liệu hiện tại
- Update qua API

### 4. Xóa loại sản phẩm
- Click nút "Xóa" với xác nhận
- Gọi API delete
- Update danh sách

### 5. Xem chi tiết
- Click nút "Xem" để xem chi tiết
- Hiển thị thông tin đầy đủ

### 6. Error Handling
- Tất cả lỗi API đều hiển thị trong Console
- Hiển thị thông báo lỗi trên giao diện

## 🌐 MockAPI

API URL: `https://mockapi.io/api/6a1cd8178858a003817c1561/category`

Resource: `category`
- **id** (String, Auto-increment)
- **name** (String)

## 📌 Lưu ý

- Tất cả lỗi sẽ được log ra Console (F12 → Console)
- State được quản lý tập trung bằng Pinia
- Navigation được xử lý bằng Vue Router
- API calls được intercepted để error handling

## 🎯 Kết quả

Dự án đã hoàn toàn memenuhi tất cả yêu cầu của bài kiểm tra:
- ✅ Vue.js
- ✅ MockAPI
- ✅ Axios
- ✅ Pinia
- ✅ Vue Router
- ✅ Error Handling

---

**Hoàn thành:** 2025  
**GitHub:** https://github.com/dungbeo21614-dotcom/NguyenTienDung