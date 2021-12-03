<%-- 
    Document   : home
    Created on : Nov 19, 2021, 9:01:49 AM
    Author     : piryandyp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@include file="include.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">LAPORAN KAS BULANAN</h1>
        <!--<h2>status:${msg}</h2>-->
        <p>
         <table class="table table-striped table-bordered">
             <tr class="thead-dark">
                <th>No</th>
                <th>Hari/tanggal</th>
                <th>Keterangan</th>
                <th>Debit</th>
                <th>Kredit</th>
                <th>Saldo Akhir</th>
                <th>Aksi</th>
             </tr>
             <c:forEach items="${listKas}" var="kas">
                 <tr>
                    <td>${kas.id}</td>
                    <td>${kas.tanggal}</td>
                    <td>${kas.keterangan}</td>
                    <td>${kas.debit}</td>
                    <td>${kas.kredit}</td>
                    <td>${kas.saldo}</td>
                    <td>
                        <button class="btn-primary" onclick="window.location.href='kas-formedit.html?action=edit&id=${kas.id}'">Edit</button>
                        <button class="btn-danger" onclick="window.location.href='kas-form.html?action=delete&id=${kas.id}'">Delete</button>
                    </td>
                 </tr>
             </c:forEach>
         </table>
         </p>
         <p>
            <button class="btn btn-primary" onclick="window.location.href='kas-form.html'" >
                Masukan Kas
            </button>
        </p>
    </body>
</html>
