<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="headcommon.jsp" />

<body id="index2">

<jsp:include page="auth.jsp" />

<header>
    <jsp:include page="header.jsp" />
</header>

<!--======================== content ===========================-->
<div id="content">
    <div class="container">
        <div class="row">
            <div class="grid_12 m_13" style="text-align: center;">
                <h4 class="m_69">Выберите модель сотрудничества</h4>
                <div style="width: 100%; text-align: center; height: 220px;">
                    <style type="text/css">
                        .reg_btn{
                            display: inline-block;
                            margin: 20px;
                            text-decoration:none;
                            width: 299px;
                            height: 95px;
                        }
                        .reg_btn:hover{
                            background-position:0px -96px;
                        }
                        .uptop_i {
                            background:url(resources/images/uptop_i.png) no-repeat;"
                        }
                        .money_i {
                            background:url(resources/images/money_i.png) no-repeat;"
                        }
                    </style>
                    <a href="indexregw" class="money_i reg_btn">

                    </a>

                    <a href="indexregc" class="uptop_i reg_btn">

                    </a>
                </div>
            </div>
        </div>


    </div>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>