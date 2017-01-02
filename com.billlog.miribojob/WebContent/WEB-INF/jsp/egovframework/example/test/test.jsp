<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Sidebar Menu Example</title>
</head>

<body>
	<div id="chart1"></div>

	<script type="text/javascript" src="/js/jui/lib/core.js"></script>
	<script type="text/javascript" src="/js/jui/dist/chart.js"></script>
	<script type="text/javascript">
	jui.ready([ "chart.builder" ], function(chart) {

        c = chart("#chart1", {
            //padding: 100,
            width: 400,
            height : 400,
            theme : "jennifer",
            axis : {
                data: []
            },
            brush : [{
                type : "donut",
                showText : "outside",
                size : 30,
                active : [ "red" ],
                activeEvent : "click",
                showValue : true
            }],
            widget : [{
                type : "tooltip"
            }, {
                type : "legend"
            }]
        });

        setTimeout(function() {
            c.axis(0).update([ { ie: 4, ff: 6 } ]);
            c.render(true);
        }, 300);
    })
	</script>
</body>

</html>
