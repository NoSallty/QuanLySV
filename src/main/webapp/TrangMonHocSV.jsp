<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang môn học</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

        <!-- Thư viện của content -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        
<style type="text/css">
	<%@ include file="/assets/css/style.css" %>
	<%@ include file="/assets/css/table.css" %>
</style>
        
</head>
<body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark" style="background-color: rgba(var(--bs-dark-rgb), var(--bs-bg-opacity)) !important;">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" style="padding: 5px 0px 5px 16!important;
            font-family: var(--bs-body-font-family);
            font-weight: var(--bs-body-font-weight);
            line-height: var(--bs-body-line-height);"
             href="Home.jsp">Quản lý sinh viên</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion"
                style="font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size);font-weight: var(--bs-body-font-weight);">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Chính</div>
                            <a class="nav-link" href="Home.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Trang chủ
                            </a>
                            <div class="sb-sidenav-menu-heading">Quản trị</div>
                            <a class="nav-link collapsed" href="show" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Sinh viên
                            </a>
                            <a class="nav-link collapsed" href="showSubject" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Chương trình đào tạo
                            </a>
                            <a class="nav-link collapsed" href="showDSHP" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Lớp học phần
                            </a>
                            
                           <!--  <div class="sb-sidenav-menu-heading">Thêm</div>
                            <a class="nav-link" href="charts.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Biểu đồ
                            </a> -->
                            <!-- <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Tables
                            </a> -->
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <div class="table-responsive">
                            <div class="table-wrapper">
                                <div class="table-title">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <h2>Danh sách môn học: <c:out value="${hoten}"/> - MSV: <c:out value="${masv}"/></h2>
                                        </div>
                                        <div class="col-sm-6">	
                                            <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm môn học mới</span></a>				
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>Mã học phần</th>
                                            <th>Tên học phần</th>
                                            <th>Mã lớp</th>
                                            <th>Học kì</th>
                                            <th>Số tín chỉ</th>
                                            <th>Điểm thi</th>
                                            <th>Trạng thái học</th>
                                            <!-- <th>Sửa / Xóa</th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="x" items="${ListDSMH }">
											<tr>
												<td><c:out value="${x.mahp }"/></td>
												<td><c:out value="${x.tenhp }"/></td>
												<td><a href="showDSDiemHP?malop=<c:out value="${x.malop }"/>"><c:out value="${x.malop }"/></a></td>
												<td><a href="showSubject"><c:out value="${x.hocki }"/></a></td>
												<td><c:out value="${x.sotinchi }"/></td>
												<td><c:out value="${x.diem }"/></td>
												<td><c:out value="${x.trangthaihoc }"/></td>
											</tr>
										</c:forEach>
										
                                    </tbody>
                                    <tr>
											<td colspan="2">Tổng số tín chỉ tích lũy: <c:out value="${tongTinTL}"/></td>
											<td colspan="5">Trung bình chung tích lũy: <c:out value="${tBTL }"/></td>
									</tr>
                                </table>
                            </div>
                        </div>      
                        <!-- Edit Modal HTML -->
                        <div id="addEmployeeModal" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form>
                                        <div class="modal-header">						
                                            <h4 class="modal-title">Thêm môn học</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        </div>
                                        <div class="modal-body">					
                                            <div class="form-group">
                                                <label>Mã học phần</label>
                                                <input type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Tên học phần</label>
                                                <input type="email" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Mã lớp</label>
                                                <input type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Học kì</label>
                                                <input type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Số tín chỉ</label>
                                                <input type="text" class="form-control" required>
                                            </div>		
                                            <div class="form-group">
                                                <label>Điểm</label>
                                                <input type="text" class="form-control" required>
                                            </div>		
                                            <div class="form-group">
                                                <label>Trạng thái học</label>
                                                <input type="text" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                                            <input type="submit" class="btn btn-success" value="Thêm">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- Edit Modal HTML -->
                        <div id="editEmployeeModal" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form>
                                        <div class="modal-header">						
                                            <h4 class="modal-title">Sửa thông tin môn học</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        </div>
                                        <div class="modal-body">					
                                            <div class="form-group">
                                                <label>Mã học phần</label>
                                                <input type="text" class="form-control" readonly="readonly" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Tên học phần</label>
                                                <input type="email" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Mã lớp</label>
                                                <input type="text" class="form-control" readonly="readonly" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Học kì</label>
                                                <input type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Số tín chỉ</label>
                                                <input type="text" class="form-control" required>
                                            </div>		
                                            <div class="form-group">
                                                <label>Điểm</label>
                                                <input type="text" class="form-control" required>
                                            </div>		
                                            <div class="form-group">
                                                <label>Trạng thái học</label>
                                                <input type="text" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                                            <input type="submit" class="btn btn-info" value="Lưu">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- Delete Modal HTML -->
                        <div id="deleteEmployeeModal" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form>
                                        <div class="modal-header">						
                                            <h4 class="modal-title">Xóa môn học</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        </div>
                                        <div class="modal-body">					
                                            <p>Bạn chắc chắn muốn xóa môn học này ?</p>
                                            <p class="text-warning"><small>Hành động này không thể được hoàn tác.</small></p>
                                        </div>
                                        <div class="modal-footer">
                                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy bỏ">
                                            <input type="submit" class="btn btn-danger" value="Xóa">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2023</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>