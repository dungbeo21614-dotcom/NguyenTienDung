import axios from 'axios';

const API_BASE_URL = 'https://mockapi.io/api/6a1cd8178858a003817c1561/category';

export interface Category {
  id: string;
  name: string;
}

const apiClient = axios.create({
  baseURL: API_BASE_URL,
  headers: {
    'Content-Type': 'application/json'
  }
});

// Error handling
apiClient.interceptors.response.use(
  response => response,
  error => {
    console.error('API Error:', error.message);
    return Promise.reject(error);
  }
);

export const categoryApi = {
  // Hiển thị danh sách
  getAll: () => apiClient.get<Category[]>('/'),
  
  // Lấy chi tiết
  getById: (id: string) => apiClient.get<Category>(`/${id}`),
  
  // Thêm mới
  create: (data: Omit<Category, 'id'>) => apiClient.post<Category>('/', data),
  
  // Sửa
  update: (id: string, data: Omit<Category, 'id'>) => 
    apiClient.put<Category>(`/${id}`, data),
  
  // Xóa
  delete: (id: string) => apiClient.delete(`/${id}`)
};