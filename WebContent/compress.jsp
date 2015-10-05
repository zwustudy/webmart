<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JavaScript字符串之压缩与还原</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
<!--
/**
 * 压缩
 */
function Compress(strNormalString) {
    alert("压缩前长度：" + strNormalString.length);
    var strCompressedString = "";

    var ht = new Array();
    for(i = 0; i < 128; i++) {
        ht[i] = i;
    }

    var used = 128;
    var intLeftOver = 0;
    var intOutputCode = 0;
    var pcode = 0;
    var ccode = 0;
    var k = 0;

    for(var i=0; i<strNormalString.length; i++) {
        ccode = strNormalString.charCodeAt(i);
        k = (pcode << 8) | ccode;
        if(ht[k] != null) {
            pcode = ht[k];
        } else {
            intLeftOver += 12;
            intOutputCode <<= 12;
            intOutputCode |= pcode;
            pcode = ccode;
            if(intLeftOver >= 16) {
                strCompressedString += String.fromCharCode( intOutputCode >> ( intLeftOver - 16 ) );
                intOutputCode &= (Math.pow(2, (intLeftOver - 16)) - 1);
                intLeftOver -= 16;
            }
            if(used < 4096) {
                used ++;
                ht[k] = used - 1;
            }
        }
    }

    if(pcode != 0) {
        intLeftOver += 12;
        intOutputCode <<= 12;
        intOutputCode |= pcode;
    }

    if(intLeftOver >= 16) {
        strCompressedString += String.fromCharCode( intOutputCode >> ( intLeftOver - 16 ) );
        intOutputCode &= (Math.pow(2,(intLeftOver - 16)) - 1);
        intLeftOver -= 16;
    }

    if( intLeftOver > 0) {
        intOutputCode <<= (16 - intLeftOver);
        strCompressedString += String.fromCharCode( intOutputCode );
    }

    alert("压缩后长度：" + strCompressedString.length);
    return strCompressedString;
}

/**
 * 解压缩
 */
function Decompress(strCompressedString) {
    var strNormalString = "";
    var ht = new Array();

    for(i = 0; i < 128; i++) {
        ht[i] = String.fromCharCode(i);
    }

    var used = 128;
    var intLeftOver = 0;
    var intOutputCode = 0;
    var ccode = 0;
    var pcode = 0;
    var key = 0;

    for(var i=0; i<strCompressedString.length; i++) {
        intLeftOver += 16;
        intOutputCode <<= 16;
        intOutputCode |= strCompressedString.charCodeAt(i);

        while(1) {
            if(intLeftOver >= 12) {
                ccode = intOutputCode >> (intLeftOver - 12);
                if( typeof( key = ht[ccode] ) != "undefined" ) {
                     strNormalString += key;
                    if(used > 128) {
                        ht[ht.length] = ht[pcode] + key.substr(0, 1);
                    }
                     pcode = ccode;
                } else {
                    key = ht[pcode] + ht[pcode].substr(0, 1);
                    strNormalString += key;
                    ht[ht.length] = ht[pcode] + key.substr(0, 1);
                    pcode = ht.length - 1;
                }

                used ++;
                intLeftOver -= 12;
                intOutputCode &= (Math.pow(2,intLeftOver) - 1);
            } else {
                break;
            }
        }
    }
    return strNormalString;
}
//-->
</script>
</head>
<body>
压缩前：

<input type="text" id="txtNormal" value="" />
<input type="button" value="↓压缩" onclick="document.getElementById('txtCompressed').value=Compress(document.getElementById('txtNormal').value);" />
<input type="button" value="清除" onclick="document.getElementById('txtNormal').value='';" />


压缩后：<br>
<input type="text" id="txtCompressed" value="" />
<input type="button" value="↑解压" onclick="document.getElementById('txtNormal').value=Decompress(document.getElementById('txtCompressed').value);" />
<input type="button" value="清除" onclick="document.getElementById('txtCompressed').value='';" />
</body>