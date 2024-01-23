<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header class="p-3 text-bg-dark">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <img src="/img/puppy.jpg" alt="puppy" width="40" height="40" class="me-3">

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="/" class="nav-link px-2 text-secondary">Home</a></li>
                <li><a href="/study_reg" class="nav-link px-2 text-white">공부일지</a></li>
                <li><a href="/member_list" class="nav-link px-2 text-white">회원 목록</a></li>
                <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
                <li><a href="#" class="nav-link px-2 text-white">About</a></li>
            </ul>


            <div class="text-end">
                <button type="button" class="btn btn-outline-light me-2" onclick="location.href='/account/login'">Login</button>
                <button type="button" class="btn btn-warning" onclick="location.href='/account/sign_up'">Sign-up</button>
            </div>
        </div>
    </div>
</header>