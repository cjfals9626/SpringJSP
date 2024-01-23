<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="org.spring.spring.boot.vo.StudyVo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<StudyVo> studyList = (List<StudyVo>) request.getAttribute("studyList");
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

<%@include file="common/header.jsp"%>

<div class="container text-center">
    <button type="button" class="btn btn-primary" onclick="location.href='/study_reg/insert'">공부등록</button>
    <div class="row pt-3">
        <div class="col">
            Key_ID
        </div>
        <div class="col">
            공부일자
        </div>
        <div class="col">
            공부내용
        </div>
        <div class="col">
            등록일자
        </div>
        <div class="col">
            수정
        </div>
        <div class="col">
            삭제
        </div>
    </div>

    <% for (StudyVo study : studyList) { %>
        <div class="row pt-3">
            <div class="col">
                <%= study.getKeyId()%>
            </div>
            <div class="col">
                <%= study.getStudyDay()%>
            </div>
            <div class="col">
                <%= study.getContents()%>
            </div>
            <div class="col">
                <%= study.getRegDay()%>
            </div>
            <div class="col">
                <a href="/study_reg/modify?studyId=<%= study.getKeyId()%>">
                    수정
                </a>
            </div>
            <div class="col">
                <a href="/study_reg/delete?studyId=<%= study.getKeyId()%>">
                    삭제
                </a>
            </div>
        </div>
    <% } %>
</div>


<%@include file="common/footer.jsp"%>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>