<#include "security.ftlh">
<#import "login.ftlh" as l>
<header id="header" id="home">

    <div class="container main-menu">
        <div class="row align-items-center justify-content-between d-flex">
            <div id="logo">
                <a href="/"><img class="logo-size" height="70px" src="/static/img/IGMU_namedlogo.svg" alt=""
                                          title="" /></a>
            </div>
            <nav id="nav-menu-container">
                <ul class="nav-menu">
                    <li><a href="/">Home</a></li>
                    <li class="menu-has-children"><a href="#">Univercity</a>
                        <ul>
                            <li><a href="/rectorsword">Rector's Word</a></li>
                            <li><a href="/vicerectors-welcome">Vice-rector's welcome</a></li>
                            <li><a href="/ismu-history">ISMU History</a></li>
                            <li><a href="/administration">Administration</a></li>
                            <li><a href="/faculties">Faculties</a></li>
                        </ul>
                    </li>
                    <li class="menu-has-children"><a href="#">For students</a>
                        <ul>
                            <li><a href="/migration-rules">Rules of migration control</a></li>
                            <li><a href="/internal-regulations">ISMU internal regulations</a></li>
                            <li><a href="https://mir.ismu.baikal.ru/ismu/internet_acquiring.php">Tuition fee</a></li>
                            <li><a href="/preparatory-training-program">Preparatory training program</a></li>
                            <li><a href="/student-life">Student life</a></li>
                            <li><a href="/student-campus">Student campus</a></li>
                        </ul></li>
                    <li class="menu-has-children"><a href="#">International Relations Department</a>
                        <ul>
                            <li><a href="/team">Team</a></li>
                            <li><a href="/students-geography">Students geography</a></li>
                            <li><a href="/graduates">Graduates</a></li>
                        </ul>

                    <li><a href="/gallery">Gallery</a></li>
                    <li><a href="/contact">Contact</a></li>
                    <#if isAdmin>
                    <li><a href="/user">Userlist</a></li>
                    </#if>
                    <li><div class="ml-3 " >${name}</div></li>
                    <li><#if name != "unknown">
                            <@l.logout/>
                        <#else>
                            <a href="/login" class="btn btn-primary" role="button" aria-pressed="true">Login</a>
                        </#if></li>
                    </li>


                    <!-- <li class="menu-has-children"><a href="">Pages</a>
                        <ul>
                            <li><a href="course-details.ftlh">Course Details</a></li>
                            <li><a href="event-details.ftlh">Event Details</a></li>
                            <li><a href="elements.ftlh">Elements</a></li>
                            <li class="menu-has-children"><a href="">Level 2 </a>
                        <ul>
                          <li><a href="#">Item One</a></li>
                          <li><a href="#">Item Two</a></li>
                        </ul>
                      </li>
                        </ul>
                    </li>-->


                </ul>

            </nav><!-- #nav-menu-container -->
        </div>
    </div>
</header>
