<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>
	
	<%@ include file="../../../admin_inc/head_link.jsp" %>
	
  <!-- CodeMirror -->
  <link rel="stylesheet" href="/resources/admin/plugins/codemirror/codemirror.css">
  <link rel="stylesheet" href="/resources/admin/plugins/codemirror/theme/monokai.css">	
  
  <!-- summernote -->
  <link rel="stylesheet" href="/resources/admin/plugins/summernote/summernote-bs4.min.css">

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="/resources/admin/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Navbar -->
  <%@ include file="../../../admin_inc/navbar.jsp" %>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <%@ include file="../../../admin_inc/sidebar.jsp" %>  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">NOTE TYPE</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-12">
            <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title">NOTE TYPE INPUT</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form name ="form1">
                <div class="card-body">
                  <div class="form-group">
                    <input type="text" class="form-control"  placeholder="노트타입을 입력 하세요" name="note_type_name">
                  </div>
                                   	  
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="button" class="btn btn-danger" onClick="regist()">등록</button>
                  <button type="button" class="btn btn-danger" onClick="location.href='/admin/note/list'">목록</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
          </div>
        </div>
        
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <%@ include file="../../../admin_inc/footer.jsp" %>  
  

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<%@ include file="../../../admin_inc/bottom_link.jsp" %>

<script>

function regist(){
	//유효성 체크 
	if($("input[name='note_type_name']").val()==""){
		alert("타입 입력은 필수입력입니다");
		return;
	}
	 $("form[name='form1']").attr({
		action: "/admin/note/type/regist",
		method: "get"
	 });
	 $("form[name='form1']").submit();
}
</script>

</body>
</html>
