<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>demo upload file in springboot</title>
</head>
<body onload="updateSize();">
<form action="/" name="uploadingForm" enctype="multipart/form-data" method="post">
    <input type="file" name="uploadingFiles" id="fileInput" onchange="updateSize();" multiple/>
    File selected: <span id="fileNum">0</span>
    Total file: <span id="fileSize">0</span>
    <input type="submit" value="upload file"/>
</form>

<div>Uploaded files:</div>
<#list files as file>
    <div>
        ${file.getName()}
    </div>
</#list>
<script type="text/javascript">
    function updateSize(){
        var nBytes = 0,
            oFiles = document.getElementById("fileInput").files,
            nFiles = oFiles.length;
        for (var nFileId = 0; nFileId < nFiles; nFileId++) {
            nBytes += oFiles[nFileId].size;
        }

        var sOutput = nBytes + " bytes";
// optional code for multiples approximation
        for (var aMultiples = ["KiB", "MiB", "GiB", "TiB", "PiB", "EiB", "ZiB", "YiB"], nMultiple = 0, nApprox = nBytes / 1024; nApprox > 1; nApprox /= 1024, nMultiple++) {
            sOutput = nApprox.toFixed(3) + " " + aMultiples[nMultiple] + " (" + nBytes + " bytes)";
        }
// end of optional code

        document.getElementById("fileNum").innerHTML = nFiles;
        document.getElementById("fileSize").innerHTML = sOutput;
    }
</script>
</body>
</html>