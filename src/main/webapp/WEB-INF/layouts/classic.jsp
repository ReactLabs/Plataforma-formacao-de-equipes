<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>


<head>
    <title><tiles:getAsString name="title" /></title>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/assets/vendor/font-awesome/css/font-awesome.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/assets/vendor/linearicons/style.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/assets/vendor/chartist/css/chartist-custom.css" />">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/main.css" />">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/demo.CSS" />">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <!-- ICONS -->
    <link rel="apple-touch-icon" sizes="76x76" href="<c:url value="/resources/assets/img/apple-icon.png" />">
    <link rel="icon" type="image/png" sizes="96x96" href="<c:url value="/resources/assets/img/favicon.png" />">

</head>


<body>

    <!-- WRAPPER -->
    <div id="wrapper">
        <tiles:insertAttribute name="header" />

        <tiles:insertAttribute name="menu" />

        <!-- MAIN -->
        <div class="main">
            <!-- MAIN CONTENT -->
            <div class="main-content">
                <div class="container-fluid">
                    <tiles:insertAttribute name="body" />
                </div>
            </div>
            <!-- END MAIN CONTENT -->
        </div>

    </div>
    <tiles:insertAttribute name="footer" />
    <!-- Javascript -->

    <%--<script>
        $(function() {
            var data, options;

            // headline charts
            data = {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                series: [
                    [23, 29, 24, 40, 25, 24, 35],
                    [14, 25, 18, 34, 29, 38, 44],
                ]
            };

            options = {
                height: 300,
                showArea: true,
                showLine: false,
                showPoint: false,
                fullWidth: true,
                axisX: {
                    showGrid: false
                },
                lineSmooth: false,
            };

            new Chartist.Line('#headline-chart', data, options);


            // visits trend charts
            data = {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                series: [{
                    name: 'series-real',
                    data: [200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],
                }, {
                    name: 'series-projection',
                    data: [240, 350, 360, 380, 400, 450, 480, 523, 555, 600, 700, 800],
                }]
            };

            options = {
                fullWidth: true,
                lineSmooth: false,
                height: "270px",
                low: 0,
                high: 'auto',
                series: {
                    'series-projection': {
                        showArea: true,
                        showPoint: false,
                        showLine: false
                    },
                },
                axisX: {
                    showGrid: false,

                },
                axisY: {
                    showGrid: false,
                    onlyInteger: true,
                    offset: 0,
                },
                chartPadding: {
                    left: 20,
                    right: 20
                }
            };

            new Chartist.Line('#visits-trends-chart', data, options);


            // visits chart
            data = {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                series: [
                    [6384, 6342, 5437, 2764, 3958, 5068, 7654]
                ]
            };

            options = {
                height: 300,
                axisX: {
                    showGrid: false
                },
            };

            new Chartist.Bar('#visits-chart', data, options);


            // real-time pie chart
            var sysLoad = $('#system-load').easyPieChart({
                size: 130,
                barColor: function(percent) {
                    return "rgb(" + Math.round(200 * percent / 100) + ", " + Math.round(200 * (1.1 - percent / 100)) + ", 0)";
                },
                trackColor: 'rgba(245, 245, 245, 0.8)',
                scaleColor: false,
                lineWidth: 5,
                lineCap: "square",
                animate: 800
            });

            var updateInterval = 3000; // in milliseconds

            setInterval(function() {
                var randomVal;
                randomVal = getRandomInt(0, 100);

                sysLoad.data('easyPieChart').update(randomVal);
                sysLoad.find('.percent').text(randomVal);
            }, updateInterval);

            function getRandomInt(min, max) {
                return Math.floor(Math.random() * (max - min + 1)) + min;
            }

        });
    </script>--%>


</body>

<script src="<c:url value="/resources/assets/vendor/jquery/jquery.min.js" />"></script>
<script src="<c:url value="/resources/assets/vendor/bootstrap/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js" />"></script>
<script src="<c:url value="/resources/assets/vendor/jqueryeasy-pie-chart/jquery.easypiechart.min.js" />"></script>
<script src="<c:url value="/resources/assets/vendor/chartist/js/chartist.min.js" />"></script>
<script src="<c:url value="/resources/assets/scripts/klorofil-common.js" />"></script>

</html>