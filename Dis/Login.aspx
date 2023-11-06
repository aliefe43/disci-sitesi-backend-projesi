<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Dis.Login" %>

<!DOCTYPE html>
<html lang="tr">
<head>
    <title>Admin Giriş</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="ad/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="ad/vendor/bootstrap/css/bootstrap.min.css">
    <!--=============================================ad/==================================================-->
    <link rel="stylesheet" type="text/css" href="ad/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--=============================================ad/==================================================-->
    <link rel="stylesheet" type="text/css" href="ad/vendor/animate/animate.css">
    <!--=============================================ad/==================================================-->
    <link rel="stylesheet" type="text/css" href="ad/vendor/css-hamburgers/hamburgers.min.css">
    <!--=============================================ad/==================================================-->
    <link rel="stylesheet" type="text/css" href="ad/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="ad/css/util.css">
    <link rel="stylesheet" type="text/css" href="ad/css/main.css">
    <!--===============================================================================================-->
</head>
<body>

    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-pic js-tilt" data-tilt>
                    <img src="ad/images/img-01.png" alt="IMG">
                </div>

                <form class="login100-form validate-form" runat="server">
                    <span class="login100-form-title">Bilgilerinizi Giriniz
                    </span>

                    <div class="wrap-input100 validate-input" data-validate="Kullanıcı adı gerekli">
                        <asp:TextBox ID="txtUserName" CssClass="input100" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Şifre gerekli">
                        <asp:TextBox ID="txtSifre" CssClass="input100" runat="server" placeholder="Şifre"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="container-login100-form-btn">
                        <asp:Button ID="Button1" CssClass="login100-form-btn" runat="server" Text="Giriş Yap" OnClick="Button1_Click" />
                    </div>
                    <br />
                    <hr />
                    <p>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </p>
                </form>
            </div>
        </div>
    </div>




    <!--===============================================================================================-->
    <script src="ad/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="ad/vendor/bootstrap/js/popper.js"></script>
    <script src="ad/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="ad/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="ad/vendor/tilt/tilt.jquery.min.js"></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>
    <!--===============================================================================================-->
    <script src="ad/js/main.js"></script>

    <!-- Code injected by live-server -->
    <script>
        // <![CDATA[  <-- For SVG support
        if ('WebSocket' in window) {
            (function () {
                function refreshCSS() {
                    var sheets = [].slice.call(document.getElementsByTagName("link"));
                    var head = document.getElementsByTagName("head")[0];
                    for (var i = 0; i < sheets.length; ++i) {
                        var elem = sheets[i];
                        var parent = elem.parentElement || head;
                        parent.removeChild(elem);
                        var rel = elem.rel;
                        if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
                            var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
                            elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
                        }
                        parent.appendChild(elem);
                    }
                }
                var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
                var address = protocol + window.location.host + window.location.pathname + '/ws';
                var socket = new WebSocket(address);
                socket.onmessage = function (msg) {
                    if (msg.data == 'reload') window.location.reload();
                    else if (msg.data == 'refreshcss') refreshCSS();
                };
                if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
                    console.log('Live reload enabled.');
                    sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
                }
            })();
        }
        else {
            console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
        }
	// ]]>
    </script>
</body>
</html>
