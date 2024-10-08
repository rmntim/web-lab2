<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>First Lab</title>
    <link rel="stylesheet" href="styles/reset.css">
    <link rel="stylesheet" href="styles/main.css">
    <script src="scripts/index.js" defer></script>
    <script src="scripts/canvas.js" defer></script>
    <script src="scripts/utils.js" defer></script>
</head>
<body>
<nav class="navbar">
    <div id="info">
        Timoshkin Roman
        <br/>
        P3231
        <br/>
        <span>v. <span class="fire">666</span></span>
    </div>
    <a href="https://github.com/rmntim" target="_blank" id="github">github</a>
</nav>
<main class="container">
    <section class="input-section">
        <div id="error" hidden>
        </div>

        <form action="${pageContext.request.contextPath}/controller" method="post" id="data-form">
            <label for="xs">Select X:</label>
            <fieldset id="xs">
                <label><input type="checkbox" name="x" onclick="checkX(this)" value="-2">-2</label>
                <label><input type="checkbox" name="x" onclick="checkX(this)" value="-1.5">-1.5</label>
                <label><input type="checkbox" name="x" onclick="checkX(this)" value="-1">-1</label>
                <label><input type="checkbox" name="x" onclick="checkX(this)" value="-0.5">-0.5</label>
                <label><input type="checkbox" name="x" onclick="checkX(this)" value="0">0</label>
                <label><input type="checkbox" name="x" onclick="checkX(this)" value="0.5">0.5</label>
                <label><input type="checkbox" name="x" onclick="checkX(this)" value="1">1</label>
                <label><input type="checkbox" name="x" onclick="checkX(this)" value="1.5">1.5</label>
                <label><input type="checkbox" name="x" onclick="checkX(this)" value="2">2</label>
                <label><input type="checkbox" name="x" id="custom-x" disabled>Custom</label>
            </fieldset>

            <label for="y">Enter Y:</label>
            <input type="number" id="y" name="y" required>

            <label for="rs">Select R:</label>
            <fieldset id="rs">
                <label><input type="radio" name="r" value="1">1</label>
                <label><input type="radio" name="r" value="1.5">1.5</label>
                <label><input type="radio" name="r" value="2">2</label>
                <label><input type="radio" name="r" value="2.5">2.5</label>
                <label><input type="radio" name="r" value="3">3</label>
            </fieldset>

            <div>
                <button type="submit">Submit</button>
                <button id="result-button">
                    <a href="result.jsp">Table</a>
                </button>
                <input type="file" id="image-upload" onchange="upload(this)" name="image" accept="image/*">
            </div>
        </form>
    </section>
    <section>
    <div style="position: relative; width: 600px; height: 600px;">
        <img id="canvas-bg" style="z-index: -1; position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
        <canvas id="graph" width="600" height="600"></canvas>
    </div>
    </section>
</main>
<footer id="copyright">all rights belong to ur mom,&nbsp;
    <a href="http://www.wtfpl.net/txt/copying/"
       target="_blank">WTFPL</a>
    , 2024
</footer>
</body>
</html>