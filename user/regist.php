<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0032)http://localhost/user/login.html -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="verydows-baseurl" content="http://localhost">
<meta name="keywords" content="用户登录">
<meta name="description" content="用户登录">
<title>用户注册</title>
<link rel="stylesheet" type="text/css" href="../images/general.css">
<link rel="stylesheet" type="text/css" href="../images/login.css">
<script type="text/javascript" src="../images/jquery.js"></script>
<script type="text/javascript" src="../images/general.js"></script>

</head>
<body>
<!-- 头部开始 -->
<div class="header">
  <div class="w900 mt30 cut">
    <div class="logo"><a href="http://localhost/index.php"><img src="../images/logo.gif"></a></div>
  </div>
</div>
<!-- 头部结束 -->
<!-- 主体开始 -->
<div class="container w900 mt20">
  <div class="wbox cut">
    <div class="login-banner fl cut"></div>
    <form method="post" action="/user/doregist.php" id="login-form">
      <input type="password" value="" class="hide">
      <div class="login ml530">
        <h2 class="c666">用户注册</h2>
        <dl class="username mt20">
          <a>用户名</a>
          <dd><input name="username" id="username" type="text" placeholder="请输入用户名"></dd>
        </dl>
        <dl class="pwd mt20">
          <a>密码</a>
          <dd><input name="password" id="password" type="password" placeholder="请输入密码"></dd>
        </dl>
        <dl class="pwd mt20">
          <a>手机号</a>
          <dd><input name="tel"  type="text" placeholder="手机号"></dd>
        </dl>
        <dl class="pwd mt20">
          <a>性别</a>
          <dd><input name="sex" type="text" placeholder="性别"></dd>
        </dl>
        <dl class="pwd mt20">
          <a>邮箱</a>
          <dd><input name="email"  type="text" placeholder="邮箱"></dd>
        </dl>
        <dl class="pwd mt20">
          <a>地址</a>
          <dd><input name="address"  type="text" placeholder="地址"></dd>
        </dl>
        <!--  -->
        <div class="ck module mt20 cut">
          <div class="fl"></div>
          <div class="fr"></div>
        </div>
        <input class="form-submit aln-c radius4 mt20" type="submit" value="注册">


      </div>
    </form>
  </div>
</div>
<!-- 主体结束 -->
<div class="cl"></div>
<!-- 页脚开始 -->
<div class="footer mt20">
  <div class="links radius4 mt20">

      </div>

</div><!-- 页脚结束 -->
<script type="text/javascript" src="../images/md5.js"></script>


</body></html>