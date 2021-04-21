<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="<?php echo base_url();?>img/favicon.ico">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Control Access | 1.0</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<?php echo base_url();?>bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url();?>bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<?php echo base_url();?>bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url();?>dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="<?php echo base_url();?>plugins/iCheck/square/blue.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
<div id="inicio" class="wrapper wrapper-100vh wrapper-darkest text-center wrapper-overflow-hidden effect-mouse-main" id="start" data-top="background-position: 50% 50%;" data-top-bottom="background-position: 50% 0%;">

<!-- <div id="inicio" class="wrapper wrapper-100vh wrapper-darkest text-center wrapper-overflow-hidden effect-mouse-main" style="background-image: url(<?php echo base_url();?>img/intro-bg.jpg);  background-size:cover; background-position: center center;" id="start" data-top="background-position: 50% 50%;" data-top-bottom="background-position: 50% 0%;">-->


<div class="login-box">
    <div class="login-logo">
        <a href="#"><b>Control Access </b>1.0</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">

        <p class="login-box-msg">Entre para iniciar sua sessão</p>

        <form role="form" id="formLogin" method="post" action="<?php echo base_url()?>index.php/sistema/verificarLogin">
            <?php if($this->session->flashdata('error') != null){?>
                <div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <?php echo $this->session->flashdata('error');?>
                </div>
            <?php }?>

            <div class="form-group has-feedback">
                <input  id="email" name="email" type="text" class="form-control" placeholder="Email">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>

            <div class="form-group has-feedback">
                <input  name="senha" type="password" class="form-control" placeholder="Password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>

            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox"> Remember Me
                        </label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

        <!--   <a href="#">I forgot my password</a><br> -->
         <!--  <a href="register.html" class="text-center">Register a new membership</a>-->

    </div>
    <!-- /.login-box-body -->
</div>
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="<?php echo base_url()?>bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url()?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="<?php echo base_url()?>plugins/iCheck/icheck.min.js"></script>
<script src="<?php echo base_url()?>assets/js/bootstrap.min.js"></script>
<script src="<?php echo base_url()?>assets/js/validate.js"></script>


<script type="text/javascript">
    $(document).ready(function(){

        $('#email').focus();
        $("#formLogin").validate({
            rules :{
                email: { required: true, email: true},
                senha: { required: true}
            },
            messages:{
                email: { required: 'Campo Requerido.', email: 'Insira Email válido'},
                senha: {required: 'Campo Requerido.'}
            },
            submitHandler: function( form ){
                var dados = $( form ).serialize();


                $.ajax({
                    type: "POST",
                    url: "<?php echo base_url();?>index.php/sistema/verificarLogin?ajax=true",
                    data: dados,
                    dataType: 'json',
                    success: function(data)
                    {
                        if(data.result == true){
                            window.location.href = "<?php echo base_url();?>index.php/sistema/";
                        }
                        else{
                            $('#call-modal').trigger('click');
                        }
                    }
                });

                return false;
            },

            errorClass: "help-inline",
            errorElement: "span",
            highlight:function(element, errorClass, validClass) {
                $(element).parents('.control-group').addClass('error');
            },
            unhighlight: function(element, errorClass, validClass) {
                $(element).parents('.control-group').removeClass('error');
                $(element).parents('.control-group').addClass('success');
            }
        });

    });

</script>



<a href="#notification" id="call-modal" role="button" class="btn" data-toggle="modal" style="display: none ">notification</a>

<div class="modal fade" id="notification" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">

    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Control Access | 1.0</</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>

                </button>
            </div>
            <div class="modal-body">

                <h5 style="text-align: center">Os dados de acesso estão incorretos, por favor tente novamente!</h5>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Fechar</button>
            </div>
        </div>
    </div>

</div>


</body>
</html>


