<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="vi">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Quản lý bạn bè</title>
      <!-- Bootstrap CSS -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
      <!-- CSS của DataTables -->
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" />
    </head>

    <body>
      <div class="container mt-5">
        <h1 class="text-center mb-4">Quản lý xe máy</h1>

        <!-- Form quản lý bạn bè -->
        <form id="friend-form" class="mb-5" action="../xemay/add" method="post"
          onsubmit="return confirm('Bạn có muốn thêm không')">
          <div class="row mb-3">
            <div class="col-md-6">
              <label for="ma" class="form-label">Mã:</label>
              <input type="text" class="form-control" id="ma" name="ma" required>
            </div>
            <div class="col-md-6">
              <label for="ten" class="form-label">Tên:</label>
              <input type="text" class="form-control" id="ten" name="ten" required>
            </div>
          </div>
          <div class="row mb-3">
            <div class="col-md-6">
              <label for="so-luong" class="form-label">Số lượng:</label>
              <input type="number" class="form-control" id="so-luong" name="so-luong" required>
            </div>
            <div class="col-md-6">
              <label class="form-label">Trạng thái:</label>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="trang-thai" id="cu" value="Loại đểu" checked>
                <label class="form-check-label" for="nam">Cũ</label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="trang-thai" id="moi" value="Loại tốt">
                <label class="form-check-label" for="nu">Mới</label>
              </div>
            </div>
          </div>
          <button type="submit" class="btn btn-success">ADD</button>
        </form>

        <!-- Bảng quản lý bạn bè -->
        <table class="table table-bordered" id="myTable">
          <thead class="table-light">
            <tr>
              <th>STT</th>
              <th>Mã</th>
              <th>Tên</th>
              <th>Số lượng</th>
              <th>Trạng thái</th>
              <th>Hành động</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="entity" items="${list }" varStatus="status">
              <tr>
                <td>${status.count }</td>
                <td>${entity.ma }</td>
                <td>${entity.ten }</td>
                <td>${entity.soLuong }</td>
                <td>${entity.moTa }</td>
                <td>
                  <form action="../xemay/remove" method="post" onsubmit="return confirm('Bạn có muốn xóa không')">
                    <input type="hidden" name="id" value="${entity.id }">
                    <button type="submit" class="btn btn-danger btn-sm">Remove</button>
                  </form>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>

      <!-- Bootstrap JS và các thư viện kèm theo -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

      <!-- jQuery -->
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

      <!-- JS của DataTables -->
      <script type="text/javascript" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

      <script>
        $(document).ready(function () {
          $("#myTable").DataTable({
            paging: true, // Bật phân trang
            pageLength: 5, // Số dòng trên mỗi trang
            lengthMenu: [5, 10, 25, 50], // Tùy chọn số dòng trên mỗi trang
            pagingType: "full_numbers", // Kiểu phân trang đầy đủ
          });
        });
      </script>

    </body>

    </html>