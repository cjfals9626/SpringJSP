<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="org.spring.spring.boot.vo.StudyVo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    StudyVo studyVo = (StudyVo) request.getAttribute("studyVo");
%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>

<%@include file="../common/header.jsp"%>

<main class="text-center">
    <form name="frm_study_modify" action="/study_reg/modify_exe" method="post" >
        KeyId : <input type="text" name="keyId" value="<%= studyVo.getKeyId()%>" readonly class="m-3"><br>
        Study Day : <input type="text" name="studyDay" value="<%= studyVo.getStudyDay()%>" class="m-3"><br>
        Contents : <input type="text" name="contents" value="<%= studyVo.getContents()%>" class="m-3"><br>

        <input type="submit" value="수정하기">
    </form>
</main>

<%@include file="../common/footer.jsp"%>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>