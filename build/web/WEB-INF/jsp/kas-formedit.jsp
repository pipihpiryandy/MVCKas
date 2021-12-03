<%-- 
    Document   : kas-formedit
    Created on : Dec 1, 2021, 8:01:26 PM
    Author     : piryandyp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <!--<h1>Hello World!</h1>-->
        <div class="container" >
            <h2>UBAH KAS ${message} </h2>
            <div class="row">
                <div class="col-md-6" >
                    <form action="kas-formedit.html" modelAttribute="kas" method="POST" >                    
                        <div class="form-group">
                            <input type="text" class="form-container" name="tanggal" placeholder="Tanggal" value="${kas.tanggal}"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-container" name="keterangan" placeholder="Keterangan" value="${kas.keterangan}"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-container" name="debit" placeholder="Debit" value="${kas.debit}"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-container" name="kredit" placeholder="Kredit" value="${kas.kredit}"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-container" name="saldo" placeholder="Saldo" value="${kas.saldo}"/>
                        </div>
                            <input type="hidden" name="id" value="${kas.id}">
                            <button type="submit" class="btn btn-primary">Update</button>
                    </form>
                </div>
            </div>
            <a href="${pageContext.request.contextPath}/home.html">Back To List</a>
        </div>
    </body>
</html>
