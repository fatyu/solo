<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="robots" content="none" />
        <title>${blogTitle} - 403 Forbidden!</title>
        <link type="text/css" rel="stylesheet" href="${staticServePath}/css/default-init${miniPostfix}.css?${staticResourceVersion}" charset="utf-8" />
        <link rel="icon" type="image/png" href="${staticServePath}/favicon.png" />
		<style type="text/css">
			canvas {
				display: block;
			}
		</style>
    </head>
    <body>
		<canvas id="canvas"></canvas>
               <div class="footerWrapper">
            <div class="footer">
                &copy; ${year}
                Powered by <a href="https://www.xiayi.ren" target="_blank">xiayi.ren-荣耀使用Solo::</a>, ver ${version}
            </div>
        </div>
		<script>
			function $(id) {
				return document.getElementById(id);
			}
			//画布 的大小设置
			var mywindow = window.screen;
			var canvas = $("canvas");
			canvas.width = mywindow.width;
			canvas.height = mywindow.height;
			//要输出的信息
			var str = "404";
			str = str.split("");
			var fontSize = 24;//输出字体的大小
			//每列显示多少个信息
			var cols = canvas.width / fontSize;
			//数组，统计下落的位置
			var drops = [];
			for (var i = 0; i < cols; i++) {
				drops[i] = 1;
			}
			var ctx = canvas.getContext("2d");
			function draw() {
				ctx.fillStyle = "rgba(0,0,0,0.05)";
				ctx.fillRect(0, 0, canvas.width, canvas.height);
				ctx.fillStyle = "green";
				ctx.font = fontSize + "px arial";
				for (var i = 0; i < cols; i++) {
					var text = str[Math.floor(Math.random() * (str.length))];
					// console.info("x-"+i*fontSize);
					// console.info("y-"+drops[i]*fontSize);
					ctx.fillText(text, i * fontSize, drops[i] * fontSize);
					if (drops[i] * fontSize > canvas.height || Math.random() > 0.95)
						drops[i] = 0;//把位置恢复到最上面
						//控制下落的位置
					drops[i]++;
				}
			}
			setInterval(draw, 33);
		</script>
    </body>
</html>
