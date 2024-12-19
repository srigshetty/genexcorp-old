<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>


<head>
<title>National Insurance</title>



<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<META name="GENERATOR" content="IBM WebSphere Page Designer V4.0 for Windows">
<META http-equiv="Content-Style-Type" content="text/css">

<LINK href="files/style.css" rel=stylesheet>
<STYLE type="text/css">
<!--
U{
  text-align : left;
}
IMG{
  position : relative;
}
-->
</STYLE>
<SCRIPT language=JavaScript
src="files/mm.js"></SCRIPT>

<SCRIPT language=JavaScript
src="files/buildmenu.js"></SCRIPT>

<SCRIPT language=JavaScript
src="files/fw_menu.js"></SCRIPT>

<SCRIPT language=JavaScript
src="files/buildmenu.js"></SCRIPT>

<SCRIPT language=JavaScript
src="files/fw_menu.js"></SCRIPT>

<SCRIPT language=JavaScript src="files/checkBrowser.js"></SCRIPT>
<SCRIPT language=JavaScript ></SCRIPT>

<script language="JavaScript" src="files/script.js"></script>
<script>
function findlayer(n, d) 
{ //v3.0
	var p,i,x;  
	if(!d) d=document; 
	if((p=n.indexOf("?"))>0&&parent.frames.length) 
		{
		d=parent.frames[n.substring(p+1)].document;
		n=n.substring(0,p);
		}
	if(!(x=d[n])&&d.all) x=d.all[n];
	for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
	for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=findlayer(n,d.layers[i].document);
	return x;
}
function layerViewer() 
{ //v3.0
	var i,p,v,obj,args=layerViewer.arguments;
	for (i=0; i<(args.length-2); i+=3) 
	if ((obj=findlayer(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v='hide')?'hidden':v; } obj.visibility=v; }
}
</script>


<SCRIPT language=JavaScript>
var NN4 = document.layers ? true : false; 
var speed = 10 ;
var VarPix = 1 ;
var browserInfo = navigator.userAgent ;
var isMacAOL = (browserInfo.indexOf("AOL") != -1 && browserInfo.indexOf("Mac") != -1) ;
var isMacIE45 = (browserInfo.indexOf("MSIE 4.5") != -1 && browserInfo.indexOf("Mac") != -1) ;

function GetClip(name) {
	var clip = new Array() ;
	if (document.all) {
		var clipzone = eval('document.all.' + name + '.style.clip') ;
		r = /rect\(/g ;
		clipzone=clipzone.replace(r, "") ;
		r = /\)/g ;
		clipzone=clipzone.replace(r, "") ;
		r = / /g ;
		clipzone=clipzone.replace(r, "") ;
		cliparray = clipzone.split("px") ;

		clip.top = new Number(cliparray[0]) ;
		clip.right = new Number(cliparray[1]) ;

		clip.bottom = new Number(cliparray[2]) ;
		clip.left = new Number(cliparray[3]) ;

	}
	if (document.layers) {
		clip.top = eval("document.layers." + name + ".clip.top") ;
		clip.right = eval("document.layers." + name + ".clip.right") ;
		clip.bottom = eval("document.layers." + name + ".clip.bottom") ;
		clip.left = eval("document.layers." + name + ".clip.left") ;
	}
	return clip ;
}

function setClip(name,cliptop,clipright,clipbottom,clipleft) {
	if (document.all) {
		eval('document.all.' + name + '.style.clip = "rect(' + cliptop + ', ' + clipright + ', ' + clipbottom  + ', ' + clipleft  + ')"') ;
	}
	if (document.layers) {
		eval("document.layers." + name + ".clip.top = " + cliptop) ;
		eval("document.layers." + name + ".clip.right = " + clipright) ;
		eval("document.layers." + name + ".clip.bottom = " + clipbottom) ;
		eval("document.layers." + name + ".clip.left = " + clipleft) ;
	}
}

function GetLyrObj(LyrName) {
	var temparray = new Array() ;
		temparray.name = LyrName ;
		temparray.top = NN4 ? document.layers[LyrName].top : document.all[LyrName].style.pixelTop ;
		temparray.height = NN4 ? document.layers[LyrName].document.height : document.all[LyrName].offsetHeight ;
		temparray.visibility = NN4 ? document.layers[LyrName].visibility : document.all[LyrName].style.visibility ;
	return temparray ;
}

function SetupLyrObj(LyrName,visi) {
	var LyrObj = NN4 ? 'document.layers["' + LyrName.name +'"]' : 'document.all["' + LyrName.name + '"]' ;
	var TopStr = NN4 ? '.top' : '.style.pixelTop' ;
	var VisibilityStr = NN4 ? '.visibility' : '.style.visibility' ;

	eval( LyrObj + TopStr + ' = ' + LyrName.top );
	eval( LyrObj + VisibilityStr + ' = "' + visi + '"') ;
}

var scrolldownid = false ;
function scrollDOWN() {
	var LayerName = 'description' ;
	var LayerObj = GetLyrObj(LayerName) ;
	var LayerClip = GetClip(LayerName) ;
	var CheckToScroll = LayerObj.height - LayerClip.top+VarPix - ( LayerClip.bottom - LayerClip.top ) ;
	if ( CheckToScroll >= 0 ) {
		LayerObj.top -= VarPix ;
		LayerClip.bottom += VarPix ;
		LayerClip.top += VarPix ;
		SetupLyrObj(LayerObj,'visible') ;
		setClip(LayerName,LayerClip.top,LayerClip.right,LayerClip.bottom,LayerClip.left)
		scrolldownid=window.setTimeout('scrollDOWN()',speed) ;
	}
}

function StopScrollDOWN() {
	if ( scrolldownid ) clearTimeout(scrolldownid);
}

var scrollUPid = false ;
function scrollUP() {
	var LayerName = 'description' ;
	var LayerObj = GetLyrObj(LayerName) ;
	var LayerClip = GetClip(LayerName) ;
	var CheckToScroll = LayerClip.top-VarPix ;
	if ( LayerClip.top > 0 ) {
		LayerObj.top += VarPix ;
		LayerClip.bottom -= VarPix ;
		LayerClip.top -= VarPix ;
		SetupLyrObj(LayerObj,'visible') ;
		setClip(LayerName,LayerClip.top,LayerClip.right,LayerClip.bottom,LayerClip.left)
		scrollUPid=window.setTimeout('scrollUP()',speed) ;
	}
}

function StopScrollUP() {
	if ( scrollUPid ) clearTimeout(scrollUPid);
}
</SCRIPT><SCRIPT>
<!--HPB_SCRIPT_INFO_40
//HPB_VFX_EVT Element:BODY Event:OnLoad Handler:HpbVfxinit('Layer1','HpbVfx0201','F422',1000,1000,1); 
//HPB_VFX_PAR Element:BODY Event:OnLoad LayerID:Layer1 Entry:HpbVfx0201 Param:F422 1stDelay:1000 NxtDelay:1000 Loop:1 
//-->
</SCRIPT><SCRIPT language="JavaScript">

<!--HPB_SCRIPT_VFX_40
//
//  Licensed Materials - Property of IBM
//
//  11K7694, 11K7983
//
//  (C) Copyright IBM Corp. 1998, 2000 All Rights Reserved.
//  US Government Users Restricted Rights -
//  Use, duplication or disclosure restricted
//  by GSA ADP Schedule Contract with IBM Corp.
//
var layerId       =  0; var func          =  1; var effectPattern =  2; 
var startTime     =  3; var nextLayerIdx  =  4; var nextStartTime =  5; 
var intervalTime  =  6; var repeat        =  7; var endVisibility =  8;
var posX          =  9; var posY          = 10; var posStartX     = 11;
var posStartY     = 12; var posEndX       = 13; var posEndY       = 14;
var stepX         = 15; var stepY         = 16; var frame         = 17;
var accelerationX = 18; var accelerationY = 19; var angle         = 20;
var fixedX        = 21; var fixedY        = 22; 

var appVer = parseInt(navigator.appVersion);
var isNC=false,isN6=false,isIE=false;
if (document.all && appVer >= 4) isIE=true; else
  if (document.getElementById && appVer > 4) isN6=true; else
    if (document.layers && appVer >= 4) isNC=true;
var elt;
elt = new Array;
var layerobj;
layerobj = new Array;
var lastobj;

function HpbVfxinit() {
  var w_str;
  if (isNC||isN6||isIE) {
    var n_div = arguments.length / 6;
    for (var div = 0; div < n_div; div++) {
      var args = 6 * div;
      var arg1 = arguments[args];
      var arg2 = arguments[args+1];
      var arg3 = arguments[args+2];
      var arg4 = arguments[args+3];
      var arg5 = arguments[args+4];
      var arg6 = arguments[args+5];
      elt[div] = new Array(arg1,arg2,arg3,arg4,-1,arg5,0,arg6,true,-32767,-32767,-32767,-32767,-32767,-32767,-32767,-32767,40,1.0,1.0,0,-1,-1);
  } }

  if (isNC) {
    for (i=0; i < elt.length; i++) {
      w_str = "document." + elt[i][layerId];
      layerobj[i] = eval(w_str);
      if (layerobj[i]) {
        layerobj[i].init = false;
        layerobj[i].innerH = window.innerHeight;
        layerobj[i].innerW = window.innerWidth;
        layerobj[i].pos_x = layerobj[i].left;
        layerobj[i].pos_y = layerobj[i].top;
        layerobj[i].pos_w = layerobj[i].clip.width;
        layerobj[i].pos_h = layerobj[i].clip.height;
  } } }
  if (isN6) {
    for (i=0; i < elt.length; i++) {
      layerobj[i] = document.getElementById(elt[i][layerId]);
      if (layerobj[i]) {
        layerobj[i].init = false;
        layerobj[i].innerH = window.innerHeight;
        layerobj[i].innerW = window.innerWidth;
        layerobj[i].pos_x = parseInt(layerobj[i].style.left);
        layerobj[i].pos_y = parseInt(layerobj[i].style.top);
        layerobj[i].pos_w = parseInt(layerobj[i].style.width);
        layerobj[i].pos_h = parseInt(layerobj[i].style.height);
  } } }
  if (isIE) {
    for (i=0; i < elt.length; i++) {
      w_str = "document.all.item(\"" + elt[i][layerId] + "\")";
      if (eval(w_str)) {
        w_str = "document.all.item(\"" + elt[i][layerId] + "\").style";
        layerobj[i] = eval(w_str);
        if (layerobj[i]) {
          layerobj[i].init = false;
          layerobj[i].innerH = document.body.clientHeight;
          layerobj[i].innerW = document.body.clientWidth;
          layerobj[i].pos_x = layerobj[i].pixelLeft;
          layerobj[i].pos_y = layerobj[i].pixelTop;
          layerobj[i].pos_w = layerobj[i].pixelWidth;
          layerobj[i].pos_h = layerobj[i].pixelHeight;
  } } } }

  if (isNC||isN6||isIE) {
    for (i=0; i < elt.length; i++) {
      if (layerobj[i]) {
        if (elt[i][posX] == -32767) elt[i][posX] = layerobj[i].pos_x;
        if (elt[i][posY] == -32767) elt[i][posY] = layerobj[i].pos_y;
        if (elt[i][effectPattern].charAt(0) == "A") {
          if (elt[i][posX] != -32767) elt[i][posEndX] = elt[i][posX];
          if (elt[i][posY] != -32767) elt[i][posEndY] = elt[i][posY];
          if (elt[i][effectPattern].charAt(1) == "1") {
            elt[i][posStartX] = layerobj[i].pos_w * -1;
            if (elt[i][posY] != -32767) elt[i][posStartY] = elt[i][posY];
          }
          if (elt[i][effectPattern].charAt(1) == "3") {
            if (elt[i][posX] != -32767) elt[i][posStartX] = elt[i][posX];
            elt[i][posStartY] = layerobj[i].pos_h * -1;
          }
          if (elt[i][effectPattern].charAt(1) == "5") {
            elt[i][posStartX] = layerobj[i].pos_w * -1;
            elt[i][posStartY] = layerobj[i].pos_h * -1;
          }
          if (elt[i][effectPattern].charAt(1) == "8") {
            elt[i][posStartX] = layerobj[i].pos_w * -1;
            elt[i][posStartY] = layerobj[i].innerH;
        } }
        if (elt[i][effectPattern].charAt(0) == "B") {
          if (elt[i][posX] != -32767) elt[i][posStartX] = elt[i][posX];
          if (elt[i][posY] != -32767) elt[i][posStartY] = elt[i][posY];
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][posEndX] = layerobj[i].pos_w * -1;
            if (elt[i][posY] != -32767) elt[i][posEndY] = elt[i][posY];
          }
          if (elt[i][effectPattern].charAt(1) == "4") {
            if (elt[i][posX] != -32767) elt[i][posEndX] = elt[i][posX];
            elt[i][posEndY] = layerobj[i].pos_h * -1;
          }
          if (elt[i][effectPattern].charAt(1) == "6") {
            elt[i][posEndX] = layerobj[i].pos_w * -1;
            elt[i][posEndY] = layerobj[i].pos_h * -1;
          }
          if (elt[i][effectPattern].charAt(1) == "7") {
            elt[i][posEndX] = layerobj[i].pos_w * -1;
            elt[i][posEndY] = layerobj[i].innerH;
        } }
        if (elt[i][effectPattern].charAt(0) == "C") {
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][posStartX] = layerobj[i].innerW;
            elt[i][posEndX] = layerobj[i].pos_w * -1;
            if (elt[i][posY] != -32767) {
              elt[i][posStartY] = elt[i][posY];
              elt[i][posEndY] = elt[i][posY];
            }
          }
          if (elt[i][effectPattern].charAt(1) == "1") {
            elt[i][posStartX] = layerobj[i].pos_w * -1;
            elt[i][posEndX] = layerobj[i].innerW;
            if (elt[i][posY] != -32767) {
              elt[i][posStartY] = elt[i][posY];
              elt[i][posEndY] = elt[i][posY];
            }
          }
          if (elt[i][effectPattern].charAt(1) == "3") {
            if (elt[i][posX] != -32767) {
              elt[i][posStartX] = elt[i][posX];
              elt[i][posEndX] = elt[i][posX];
            }
            elt[i][posStartY] = layerobj[i].pos_h * -1;
            elt[i][posEndY] = layerobj[i].innerH;
          }
          if (elt[i][effectPattern].charAt(1) == "4") {
            if (elt[i][posX] != -32767) {
              elt[i][posStartX] = elt[i][posX];
              elt[i][posEndX] = elt[i][posX];
            }
            elt[i][posStartY] = layerobj[i].innerH;
            elt[i][posEndY] = layerobj[i].pos_h * -1;
          }
          if (elt[i][effectPattern].charAt(1) == "7") {
            elt[i][posStartX] = layerobj[i].innerW;
            elt[i][posStartY] = layerobj[i].pos_h * -1;
            elt[i][posEndX] = layerobj[i].pos_w * -1;
            elt[i][posEndY] = layerobj[i].innerH;
          }
          if (elt[i][effectPattern].charAt(1) == "5") {
            elt[i][posStartX] = layerobj[i].pos_w * -1;
            elt[i][posStartY] = layerobj[i].pos_h * -1;
            elt[i][posEndX] = layerobj[i].innerW;
            elt[i][posEndY] = layerobj[i].innerH;
          }
          if (elt[i][effectPattern].charAt(1) == "6") {
            elt[i][posStartX] = layerobj[i].innerW;
            elt[i][posStartY] = layerobj[i].innerH;
            elt[i][posEndX] = layerobj[i].pos_w * -1;
            elt[i][posEndY] = layerobj[i].pos_h * -1;
          }
          if (elt[i][effectPattern].charAt(1) == "8") {
            elt[i][posStartX] = layerobj[i].pos_w * -1;
            elt[i][posStartY] = layerobj[i].innerH;
            elt[i][posEndX] = layerobj[i].innerW;
            elt[i][posEndY] = layerobj[i].pos_h * -1;
        } }
        if (elt[i][effectPattern].charAt(0) == "D") {
          if (elt[i][effectPattern].charAt(1) == "1") {
            elt[i][stepX] = 4;  elt[i][stepY] = 0;
          }
          if (elt[i][effectPattern].charAt(1) == "3") {
            elt[i][stepX] = 0;  elt[i][stepY] = 4;
        } }
        if (elt[i][effectPattern].charAt(0) == "F") {
          if (elt[i][effectPattern].charAt(1) == "4") {
            if (elt[i][posX] != -32767) {
              elt[i][posStartX] = elt[i][posX];
              elt[i][posEndX] = elt[i][posX] + layerobj[i].pos_w;
            }
            if (elt[i][posY] != -32767) {
              elt[i][posStartY] = elt[i][posY];
              if (elt[i][effectPattern].charAt(3) == "1") elt[i][posEndY] = elt[i][posY] + 80;
              if (elt[i][effectPattern].charAt(3) == "2") elt[i][posEndY] = elt[i][posY] + 160;
              if (elt[i][effectPattern].charAt(3) == "3") elt[i][posEndY] = elt[i][posY] + 320;
            }
            elt[i][stepX] = 0;  elt[i][stepY] = 4;
          }
          if (elt[i][effectPattern].charAt(1) == "2") {
            if (elt[i][posX] != -32767) {
              elt[i][posStartX] = elt[i][posX];
              if (elt[i][effectPattern].charAt(3) == "1") elt[i][posEndX] = elt[i][posX] + 80;
              if (elt[i][effectPattern].charAt(3) == "2") elt[i][posEndX] = elt[i][posX] + 160;
              if (elt[i][effectPattern].charAt(3) == "3") elt[i][posEndX] = elt[i][posX] + 320;
            }
            if (elt[i][posY] != -32767) {
              elt[i][posStartY] = elt[i][posY];
              elt[i][posEndY] = elt[i][posY] + layerobj[i].pos_h;
            }
            elt[i][stepX] = 4;  elt[i][stepY] = 0;
        } }
        if (elt[i][effectPattern].charAt(0) == "G") {
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][posStartX] = 0;
            if (elt[i][effectPattern].charAt(3) == "1") elt[i][posStartY] = 80;
            if (elt[i][effectPattern].charAt(3) == "2") elt[i][posStartY] = 160;
            if (elt[i][effectPattern].charAt(3) == "3") elt[i][posStartY] = 320;
            elt[i][posEndX] = 1;  elt[i][posEndY] = 1;
        } }
        if (elt[i][effectPattern].charAt(0) == "H") {
          if (elt[i][effectPattern].charAt(3) == "1") {
            elt[i][stepX] = 8;  elt[i][stepY] = 8;
          }
          if (elt[i][effectPattern].charAt(3) == "2") {
            elt[i][stepX] = 16;  elt[i][stepY] = 16;
          }
          if (elt[i][effectPattern].charAt(3) == "3") {
            elt[i][stepX] = 32;  elt[i][stepY] = 32;
          }
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][stepX] = 0;  elt[i][fixedX] = true;  elt[i][fixedY] = true;
          }
          if (elt[i][effectPattern].charAt(1) == "1") {
            elt[i][stepY] = 0;  elt[i][fixedX] = true;  elt[i][fixedY] = true;
          }
          if (elt[i][effectPattern].charAt(1) == "3") {
            elt[i][fixedX] = false;  elt[i][fixedY] = false;
        } }
        if (elt[i][effectPattern].charAt(0) == "I") {
          if (elt[i][effectPattern].charAt(3) == "1") {
            elt[i][posStartX] = 40;  elt[i][posStartY] = 40;
          }
          if (elt[i][effectPattern].charAt(3) == "2") {
            elt[i][posStartX] = 80;  elt[i][posStartY] = 80;
          }
          if (elt[i][effectPattern].charAt(3) == "3") {
            elt[i][posStartX] = 160;  elt[i][posStartY] = 160;
          }
          elt[i][posEndX] = 1;  elt[i][posEndY] = 1;  elt[i][stepX] = -32767;
          if (elt[i][effectPattern].charAt(1) == "1") {
            elt[i][posY] += elt[i][posStartY];
            elt[i][stepY] = Math.PI * 3 / 2;
            elt[i][frame] = 40;
          }
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][posY] -= elt[i][posStartY];
            elt[i][stepY] = Math.PI * 1 / 2;
            elt[i][frame] = 40;
          }
          if (elt[i][effectPattern].charAt(1) == "3") {
            elt[i][posX] -= elt[i][posStartX];
            elt[i][stepY] = Math.PI * 0 / 2;
            elt[i][frame] = 40;
          }
          if (elt[i][effectPattern].charAt(1) == "4") {
            elt[i][posX] += elt[i][posStartX];
            elt[i][stepY] = Math.PI * 2 / 2;
            elt[i][frame] = 40;
          }
          if (elt[i][effectPattern].charAt(1) == "5") {
            elt[i][posY] += elt[i][posStartY];
            elt[i][stepY] = Math.PI * 3 / 2;
            elt[i][frame] = -40;
          }
          if (elt[i][effectPattern].charAt(1) == "6") {
            elt[i][posY] -= elt[i][posStartY];
            elt[i][stepY] = Math.PI * 1 / 2;
            elt[i][frame] = -40;
          }
          if (elt[i][effectPattern].charAt(1) == "7") {
            elt[i][posX] -= elt[i][posStartX];
            elt[i][stepY] = Math.PI * 0 / 2;
            elt[i][frame] = -40;
          }
          if (elt[i][effectPattern].charAt(1) == "8") {
            elt[i][posX] += elt[i][posStartX];
            elt[i][stepY] = Math.PI * 2 / 2;
            elt[i][frame] = -40;
        } }
        if (elt[i][effectPattern].charAt(0) == "J") {
          if (elt[i][effectPattern].charAt(3) == "1") {
            elt[i][posStartX] = 0;  elt[i][posStartY] = 80;
          }
          if (elt[i][effectPattern].charAt(3) == "2") {
            elt[i][posStartX] = 0;  elt[i][posStartY] = 160;
          }
          if (elt[i][effectPattern].charAt(3) == "3") {
            elt[i][posStartX] = 0;  elt[i][posStartY] = 320;
          }
          elt[i][posEndX] = 1;  elt[i][posEndY] = 1;
          elt[i][stepX] = -32767;  elt[i][stepY] = 0;
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][accelerationY] = 0.99;  elt[i][frame] = 40;
        } }
        if (elt[i][effectPattern].charAt(0) == "K") {
          if (elt[i][effectPattern].charAt(3) == "1") {
            elt[i][posStartX] = 40;  elt[i][posStartY] = 40;
          }
          if (elt[i][effectPattern].charAt(3) == "2") {
            elt[i][posStartX] = 80;  elt[i][posStartY] = 80;
          }
          if (elt[i][effectPattern].charAt(3) == "3") {
            elt[i][posStartX] = 160;  elt[i][posStartY] = 160;
          }
          elt[i][stepX] = -32767;  elt[i][stepY] = 0;
          if (elt[i][effectPattern].charAt(1) == "1") {
            elt[i][posEndX] = 13;  elt[i][posEndY] = 12;  elt[i][frame] = 160;
          }
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][posEndX] = 7;  elt[i][posEndY] = 2;  elt[i][frame] = 160;
          }
          if (elt[i][effectPattern].charAt(1) == "3") {
            elt[i][posEndX] = 11;  elt[i][posEndY] = 4;  elt[i][frame] = 160;
          }
          if (elt[i][effectPattern].charAt(1) == "4") {
            elt[i][posEndX] = 7;  elt[i][posEndY] = 4;  elt[i][frame] = 160;
        } }
        if (elt[i][effectPattern].charAt(2) == "1") elt[i][intervalTime] = 200;
        if (elt[i][effectPattern].charAt(2) == "2") elt[i][intervalTime] = 100;
        if (elt[i][effectPattern].charAt(2) == "3") elt[i][intervalTime] = 50;
        if ( elt[i][startTime] >= 0 ) setTimeout( "HpbVfxtimer(" + i + ")", elt[i][startTime] );
} } } }

function HpbVfxtimer(tid) {
  if (isNC||isN6||isIE) {
    if (layerobj[tid]) {
      var func_str;
      func_str = elt[tid][func] + "( tid, elt[tid], layerobj[tid] )";
      eval(func_str);
} } }

function HpbVfxshowobj(obj) {
  if (obj) {
    if (isNC) obj.visibility = "show";
    if (isN6) obj.style.visibility = "visible";
    if (isIE) obj.visibility = "visible";
    lastobj = obj;
} }

function HpbVfxhideobj(obj) {
  if (obj) {
    if (isNC) obj.visibility = "hide";
    if (isN6) obj.style.visibility = "hidden";
    if (isIE) obj.visibility = "hidden";
} }

function HpbVfxmoveobj(obj,x,y) {
  if (obj) {
    if (isNC) {obj.left=x;obj.top=y;}
    if (isN6) {obj.style.left=x+"px";obj.style.top=y+"px";}
    if (isIE) {obj.left=x;obj.top=y;}
} }

function HpbVfxclipobj(obj,t,r,b,l) {
  if (obj) {
    if (isNC) {obj.clip.left=l;obj.clip.top=t;obj.clip.right=r;obj.clip.bottom=b;}
    if (isN6) obj.style.clip = "rect(" + t + "px," + (r-l) + "px," + (b-t) + "px," + l + "px)";
    if (isIE) obj.clip = "rect(" + t + "," + r + "," + b + "," + l + ")";
} }

function HpbVfx0001(tid,et,ob) {
  var x;  var y;
  if (ob) {
    if (ob.init == false) {
      if (et[stepX] != -32767) ob.stepX = et[stepX] * Math.cos(et[angle]);
      else ob.stepX = (et[posEndX] - et[posStartX]) / et[frame];
      if (et[stepY] != -32767) ob.stepY = et[stepY] * Math.sin(et[angle]);
      else ob.stepY = (et[posEndY] - et[posStartY]) / et[frame];
      if (ob.stepX > 0 && ob.stepX < 1) ob.stepX = 1;
      if (ob.stepX < 0 && ob.stepX > -1) ob.stepX = -1;
      if (ob.stepY > 0 && ob.stepY < 1) ob.stepY = 1;
      if (ob.stepY < 0 && ob.stepY > -1) ob.stepY = -1;
      if (et[posStartX] != -32767) ob.x = et[posStartX];
      else if (ob.stepX > 0) ob.x = 0 - ob.pos_w; else ob.x = ob.innerW - ob.pos_w;
      if (et[posStartY] != -32767) ob.y = et[posStartY];
      else if (ob.stepY > 0) ob.y = 0 - ob.pos_h; else ob.y = ob.innerH - ob.pos_h;
      if (et[posEndX] != -32767) ob.posEndX = et[posEndX];
      else if (ob.stepX > 0) ob.posEndX = ob.innerW - ob.pos_w; else ob.posEndX = 0 - ob.pos_w;
      if (et[posEndY] != -32767) ob.posEndY = et[posEndY];
      else if (ob.stepY > 0) ob.posEndY = ob.innerH - ob.pos_h; else ob.posEndY = 0 - ob.pos_h;
      HpbVfxshowobj(ob);
      ob.init = true;  ob.frame = 0;
    }
    ob.stepX = ob.stepX * et[accelerationX];
    if (ob.stepX > 0 && ob.stepX < 1) ob.stepX = 1;
    if (ob.stepX < 0 && ob.stepX > -1) ob.stepX = -1;
    ob.stepY = ob.stepY * et[accelerationY];
    if (ob.stepY > 0 && ob.stepY < 1) ob.stepY = 1;
    if (ob.stepY < 0 && ob.stepY > -1) ob.stepY = -1;
    ob.x += ob.stepX;  ob.y += ob.stepY;
    var endX;  var endY;
    endX = false;  endY = false;
    if (ob.stepX > 0) if (ob.x >= ob.posEndX) {endX = true;  ob.x = ob.posEndX;}
    if (ob.stepX < 0) if (ob.x <= ob.posEndX) {endX = true;  ob.x = ob.posEndX;}
    if (ob.stepX == 0) endX = true;
    if (ob.stepY > 0) if (ob.y >= ob.posEndY) {endY = true;  ob.y = ob.posEndY;}
    if (ob.stepY < 0) if (ob.y <= ob.posEndY) {endY = true;  ob.y = ob.posEndY;}
    if (ob.stepY == 0) endY = true;
    HpbVfxmoveobj(ob,Math.round( ob.x ),Math.round(ob.y));
    if (endX == true && endY == true) {
      if (et[endVisibility] == false) HpbVfxhideobj(ob);
      ob.init = false;
      if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
      else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
    } else setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
} }

function HpbVfx0101(tid,et,ob) {
  var cl;  var cr;  var ct;  var cb;  var tm;  var x;  var y;
  if (ob) {
    if (ob.init == false) {
      if (et[stepX] != -32767) ob.cs_x = et[stepX]; else ob.cs_x = ob.pos_w / et[frame];
      if (et[stepY] != -32767) ob.cs_y = et[stepY]; else ob.cs_y = ob.pos_h / et[frame];
      ob.c_x = 0;  ob.c_y = 0;
      HpbVfxshowobj(ob);
      ob.init = true;
    }
    tm = false;
    cl = 0;  cr = ob.pos_w;  ct = 0;  cb = ob.pos_h;
    x = ob.pos_x;  y = ob.pos_y;
    if (et[fixedX] == false) {
      if (ob.cs_x > 0) {
        ob.c_x += ob.cs_x;
        if (cr > ob.c_x) {
          cl = cr - ob.c_x;  tm = true;  x = ob.pos_x - ob.pos_w + ob.c_x;
      } }
      if (ob.cs_x < 0) {
        ob.c_x += ob.cs_x;  cr = ob.c_x * -1;
        if (cr < ob.pos_w) {
          tm = true;  x = ob.pos_x + ob.pos_w + ob.c_x;
        } else cr = ob.pos_w;
      }
    } else {
      if (ob.cs_x > 0) {
        ob.c_x += ob.cs_x;
        if (cr > ob.c_x) {cr = ob.c_x;  tm = true;}
      }
      if (ob.cs_x < 0) {
        ob.c_x += ob.cs_x;  cl = ob.c_x * -1;
        if (cl < ob.pos_w) {tm = true;  cl = ob.pos_w - cl;} else cl = 0;
    } }
    if (et[fixedY] == false) {
      if (ob.cs_y > 0) {
        ob.c_y += ob.cs_y;
        if (cb > ob.c_y) {ct = cb - ob.c_y;  tm = true;  y = ob.pos_y - ob.pos_h + ob.c_y;}
      }
      if (ob.cs_y < 0) {
        ob.c_y += ob.cs_y;  cb = ob.c_y * -1;
        if ( cb < ob.pos_h ) {tm = true;  y = ob.pos_y + ob.pos_h + ob.c_y;} else cb = ob.pos_h;
      }
    } else {
      if (ob.cs_y > 0) {
        ob.c_y += ob.cs_y;
        if (cb > ob.c_y) {cb = ob.c_y;  tm = true;}
      }
      if (ob.cs_y < 0) {
        ob.c_y += ob.cs_y;  ct = ob.c_y * -1;
        if (ct < ob.pos_h) {tm = true;  ct = ob.pos_h - ct;} else ct = 0;
    } }
    HpbVfxclipobj(ob,ct,cr,cb,cl);
    HpbVfxmoveobj(ob,x,y);
    if (tm) setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
    else {
      if (et[endVisibility] == false) HpbVfxhideobj(ob);
      ob.init = false;
      if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
      else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
} } }

function HpbVfx0201(tid,et,ob) {
  var cl;  var cr;  var ct;  var cb;  var tm;  var x;  var y;
  if (ob) {
    if (ob.init == false) {
      if (et[stepX] != -32767) ob.cs_x = et[stepX]; else ob.cs_x = ob.pos_w / et[frame];
      if (et[stepY] != -32767) ob.cs_y = et[stepY]; else ob.cs_y = ob.pos_h / et[frame];
      ob.c_w = et[posEndX] - et[posStartX];  ob.c_h = et[posEndY] - et[posStartY];
      ob.c_x = 0;  ob.c_y = 0;
      HpbVfxshowobj(ob);
      ob.init = true;
    }
    tm = false;
    cl = 0;  cr = ob.pos_w;  ct = 0;  cb = ob.pos_h;
    x = et[posStartX];  y = et[posStartY];
    if (ob.cs_x > 0) {
      ob.c_x += ob.cs_x;
      if (ob.c_x < (ob.pos_w - ob.c_w)) {
        cl = ob.c_x;  cr = cl + ob.c_w;
        tm = true;
      } else cl = ob.pos_w - ob.c_w;
    }
    if (ob.cs_x < 0) {
      ob.c_x += ob.cs_x;  cr = ob.pos_w + ob.c_x;
      if (cr > ob.c_w) {cl = cr - ob.c_w;  tm = true;}
      else cr = ob.c_w;
    }
    if (ob.cs_y > 0) {
      ob.c_y += ob.cs_y;
      if (ob.c_y < (ob.pos_h - ob.c_h)) {
        ct = ob.c_y;  cb = ct + ob.c_h;
        tm = true;
      } else ct = ob.pos_h - ob.c_h;
    }
    if (ob.cs_y < 0) {
      ob.c_y += ob.cs_y;  cb = ob.pos_h + ob.c_y;
      if (cb > ob.c_h) {ct = cb - ob.c_h;  tm = true;}
      else cb = ob.c_h;
    }
    HpbVfxclipobj(ob,ct,cr,cb,cl);
    x -= cl;  y -= ct;
    HpbVfxmoveobj(ob,x,y);
    if (tm) setTimeout( "HpbVfxtimer(" + tid + ")",et[intervalTime]);
    else {
      if (et[endVisibility] == false) HpbVfxhideobj(ob);
      ob.init = false;
      if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
      else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
} } }

function HpbVfx0301(tid,et,ob) {
  var x;  var y;  var tx;  var ty;
  if (ob) {
    if (ob.init == false) {
      if (et[stepX] != -32767) ob.step = et[stepX]; else ob.step = (Math.PI * 2) / et[frame];
      ob.boundX = et[posStartX];  ob.boundY = et[posStartY];
      ob.angle = 0.0;
      HpbVfxshowobj(ob);
      ob.init = true;
    }
    tx = Math.cos(ob.angle * et[posEndX]) * ob.boundX;  ty = Math.sin(ob.angle * et[posEndY]) * ob.boundY;
    if (et[fixedX] != 0) tx = Math.abs(tx) * et[fixedX];
    if (et[fixedY] != 0) ty = Math.abs(ty) * et[fixedY];
    x = et[posX];  y = et[posY];
    x += tx * Math.cos(et[angle]);  y += tx * Math.sin(et[angle]);
    x += ty * Math.cos(et[angle] + (Math.PI / 2));  y += ty * Math.sin(et[angle] + (Math.PI / 2));
    HpbVfxmoveobj(ob,Math.round(x),Math.round(y));
    if (et[accelerationX] != 1.0 || et[accelerationY] != 1.0) {
      ob.boundX *= et[accelerationX];  ob.boundY *= et[accelerationY];
      if (ob.boundX < 4  && ob.boundY < 4) {
        ob.init = false;
        if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
        else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
      } else {
        ob.angle += ob.step;
        setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
      }
    } else {
      if (ob.angle >= (2 * Math.PI)) {
        ob.init = false;
        if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
        else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
      } else {
        ob.angle += ob.step;
        setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
} } } }

function HpbVfx0311(tid,et,ob) {
  var x;  var y;  var ws;
  if (ob) {
    if (ob.init == false) {ob.setp = 0;  HpbVfxshowobj(ob);  ob.init = true;}
    x = et[posX];  y = et[posY];
    if (et[fixedX] == true) ws = ob.setp;
    else {
      ws = Math.round(Math.random() * 4);
      if (ws > 3) ws = 0;
    }
    if (ws == 1) x += et[stepX];
    if (ws == 3) x -= et[stepX];
    if (et[fixedY] == true) ws = ob.setp;
    else {
      ws = Math.round(Math.random() * 4);
      if (ws > 3) ws = 0;
    }
    if (ws == 1) y += et[stepY];
    if (ws == 3) y -= et[stepY];
    HpbVfxmoveobj(ob,Math.round(x),Math.round(y));
    ob.setp ++;
    if (ob.setp >= 4) {
      ob.init = false;
      if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
      else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
    } else setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
} }

function HpbVfx0401(tid,et,ob) {
  var x;  var y;  var tx;  var ty;
  if (ob) {
    if (ob.init == false) {
      if (et[stepX] != -32767) ob.step = et[stepX]; else ob.step = (Math.PI * 2) / et[frame];
      ob.angle = 0.0;
      HpbVfxshowobj(ob);
      ob.init = true;
    }
    tx = Math.cos((ob.angle * et[posEndX]) + et[stepY]) * et[posStartX];
    ty = Math.sin((ob.angle * et[posEndY]) + et[stepY]) * et[posStartY];
    x = et[posX];  y = et[posY];
    x += tx * Math.cos(et[angle]);  y += tx * Math.sin(et[angle]);
    x += ty * Math.cos(et[angle] + (Math.PI / 2));  y += ty * Math.sin(et[angle] + (Math.PI / 2));
    HpbVfxmoveobj(ob,Math.round(x),Math.round(y));
    if (Math.abs(ob.angle) >= (2 * Math.PI)) {
      ob.init = false;
      if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
      else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
    } else {
      ob.angle += ob.step;
      setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
} } }

function HpbVfx0501(tid,et,ob) {
  if (ob) {
    if (ob.init == false) {HpbVfxshowobj(ob);  ob.init = true;}
    var px;  var py;
    if (isNC) {px = window.pageXOffset;  py = window.pageYOffset;}
    if (isN6) {px = window.pageXOffset;  py = window.pageYOffset;}
    if (isIE) {px = document.body.scrollLeft;  py = document.body.scrollTop;}
    HpbVfxmoveobj(ob,Math.round(px + et[posX]),Math.round(py + et[posY]));
    setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
} }
//-->
</SCRIPT></head>

<BODY bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="MM_preloadImages('files/home_v.gif','files/ab_us_v.gif','files/pol_v.gif','files/down_v.gif','files/user_assist_v.gif','files/newsevents_v.gif','files/offices_v.gif','files/faq_v.gif','files/sitemap_v.gif','files/perline.gif','files/ruralin.gif','files/commline.gif','files/indline.gif','files/lg.gif'); HpbVfxinit('Layer1','HpbVfx0201','F422',1000,1000,1);">

<!--
<DIV style="width : 166px;height : 285px;top : 225px;left : 615px;
  position : absolute;
  z-index : 3;
  visibility : hidden;

" id="Layer1"><a href="/downloads/house.mpg"><IMG src="files/scroll.jpg" border="0" width="161" height="290"></DIV>

-->

<DIV style="width : 166px;height : 285px;top : 225px;left : 615px;
  position : absolute;
  z-index : 3;
  visibility : hidden; "id="Layer1" ><IMG src="files/scroll.jpg" border="0" width="161" height="290"></DIV>



<TABLE border="0" cellspacing="0" cellpadding="0" width="791">
  <tr>
      <TD width="788">
      <table width="780" border="0" cellspacing="0" cellpadding="0">
        <tr align="left" valign="top"> 

<td><SCRIPT language="JavaScript1.2">fwLoadMenus();</SCRIPT>
            <table width="780" border="0" cellspacing="0" cellpadding="0">
  <tr align="left" valign="top"> 
    <td> 
      <table width="780" border="0" cellspacing="0" cellpadding="0">
        <tr align="left" valign="top"> 
          <td width="37"><img src="files/logo.gif" usemap="#MapMap" border="0" width="63" height="44"><map name="MapMap"><AREA shape="rect" coords="11,4,48,39" href="file:///C:/Documents and Settings/Administrator/Application Data/IBM/WebSphere Studio/tmp/Home.jsp"></map></td>
          <td width="109"><img src="files/1_2.gif"></td>
          <td width="79"><img src="files/1_3.gif"></td>
          <td width="97"><img src="files/1_4.gif"></td>
          <td width="117"><img src="files/1_5.gif"></td>
          <td width="111"><img src="files/1_6.gif"></td>
          <td width="92"><img src="files/1_7.gif"></td>
          <td width="69"><img src="files/1_8.gif" width="69" height="44" border="0" usemap="#Map2Map"><map name="Map2Map"><area shape="rect" coords="44,8,69,21" href="hindi.jsp"><area shape="rect" coords="63,28,69,37" href="links.jsp"></map></td>
          <td width="71"><img src="files/1_9.gif" border="0" width="70" height="44" usemap="#Map3Map"><map name="Map3Map"><area shape="rect" coords="1,8,55,21" href="hindi.jsp"><area shape="rect" coords="1,27,63,39" href="links.jsp"></map></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr align="left" valign="top"> 
    <td> 
      <table width="780" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><img src="files/whitel.gif"></td>
        </tr>
      </table>
    </td>
  </tr>
                <tr align="left" valign="top"> 
    <td> 
      <table width="780" border="0" cellspacing="0" cellpadding="0">
        <tr align="left" valign="top"> 
          <td width="64" height="2"><A href="file:///C:/Documents and Settings/Administrator/Application Data/IBM/WebSphere Studio/tmp/Home.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('home11','','files/home_v.gif',1)"><img
      border=0  name=home11
      src="files/home.gif"></A></td>
          <td width="82" height="2"><a href="CCompProf"
      onMouseOut="MM_swapImgRestore();FW_startTimeout(); "
      onMouseOver="MM_swapImage('ab_us11','','files/ab_us_v.gif',1);window.FW_showMenu(window.fw_menu_0,70,70)"><img
      border=0  name=ab_us11
      src="files/ab_us.gif"
      ></a></td>
          <td width="79" height="2"><a href="policy.jsp"
      onMouseOut="MM_swapImgRestore();FW_startTimeout(); "
      onMouseOver="MM_swapImage('pol11','','files/pol_v.gif',1);window.FW_showMenu(window.fw_menu_1,97,70)"><img
      border=0  name=pol11
      src="files/pol.gif"  ></a></td>
          <td width="97" height="2"><a href="CDownload?grpid=1"
      onMouseOut="MM_swapImgRestore();FW_startTimeout(); "
      onMouseOver="MM_swapImage('down11','','files/down_v.gif',1);window.FW_showMenu(window.fw_menu_2,137,70)"><img
      border=0  name=down11
      src="files/down.gif"></a></td>
          <td width="111" height="2"><a href="CShowOffice"
      onMouseOut=MM_swapImgRestore()
      onMouseOver="MM_swapImage('offices11','','files/offices_v.gif',1)"><img
      border=0  name=offices11
      src="files/offices.gif"
     ></a></td>
          <td width="117" height="2"><a href="user_assistance.jsp"
      onMouseOut="MM_swapImgRestore();FW_startTimeout(); "
      onMouseOver="MM_swapImage('user_assist11','','files/user_assist_v.gif',1);window.FW_showMenu(window.fw_menu_3,405,70)"><img
      border=0  name=user_assist11
      src="files/user_assist.gif" 
      ></a></td>
          <td width="111" height="2"><a href="CNewsBranch"
      onMouseOut=MM_swapImgRestore()
      onMouseOver="MM_swapImage('newsevents11','','files/newsevents_v.gif',1)"><img
      border=0  name=newsevents11
      src="files/newsevents.gif" width="111" height="21"></a></td>
          <td width="70" height="2"> <a href="FaqHome.jsp"
      onMouseOut="MM_swapImgRestore();FW_startTimeout(); "
      onMouseOver="MM_swapImage('faq11','','files/faq_v.gif',1);window.FW_showMenu(window.fw_menu_4,620,70)"><img
      border=0  name=faq11
      src="files/faq.gif" ></a></td>

          <td width="71" height="2"><a href="sitemap.jsp"
      onMouseOut=MM_swapImgRestore()
      onMouseOver="MM_swapImage('sitemap11','','files/sitemap_v.gif',1)"><img
      border=0  name=sitemap11
      src="files/sitemap.gif" width="70" height="21"
     ></a></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</td>

          </tr>
      </table>
    </TD>
    </tr>
  <tr>
      <TD width="788">
<!--      <FORM name="search" action="CFetchValues"></FORM> -->
      <table width="780" border="0" cellspacing="0" cellpadding="0">
        

<tr align="left" valign="top"> 
          <form name="search" action="CFetchValues">
            <td width="142"><img src="files/register.gif" width="142" height="44" border="0" usemap="#Map9Map"><map name="Map9Map"><area shape="rect" coords="14,4,121,20" href="CRegistration" alt="Register for FREE" title="Register for FREE"><area shape="rect" coords="14,20,80,35" href="newLogin.jsp" alt="Login"></map></td>
            <td width="39"><img src="files/div.gif" width="39" height="44"></td>
            <td width="103"><img src="files/insurewhat.gif" width="103" height="44"></td>
            <td width="136" align="center" valign="middle" background="files/searchbg.gif"> 
              <input type="text" name="textfield" size="12">
            </td>
            <td width="43"><A href="javascript:calling()"><img src="files/go.gif" width="43" height="44" border=0 alt="Go"></A></td>
             <!--     <td width="129"><img src="files/prem_cal.gif" width="129" height="44" usemap="#Map10Map" border="0" alt="Calculate Premium"><map name="Map10Map"><area shape="rect" coords="2,2,126,39" href="Premium_Calculation.jsp"></map></td>-->
       <td width="129"><img src="files/prem_cal.gif" width="129" height="44" usemap="#Map10Map" border="0" alt="Calculate Premium-Under Construction"><map name="Map10Map"></map></td>
            <td width="24"><img src="files/cur1.gif" width="24" height="44"></td>
            <td width="166" align="left"><img src="files/howto.gif" width="164" height="44" usemap="#Map11Map" border="0"><map name="Map11Map"><area shape="rect" coords="21,9,154,28" href="howtopolicy.jsp" alt="How to Take a Policy"><area shape="rect" coords="25,36,149,55" href="howtoclaim.jsp" alt="How to Lodge a claim"></map></td>
          </form>
        </tr>




<!-- -->

        <tr align="left" valign="top"> 
          <td><map name="Map4"><area shape="rect" coords="22,2,150,14" href="howtoclaim.jsp"></map></td>
          <td><map name="Map4"><area shape="rect" coords="22,2,150,14" href="howtoclaim.jsp"></map></td>
          <td><map name="Map4"><area shape="rect" coords="22,2,150,14" href="howtoclaim.jsp"></map></td>
          <td></td>
          <td colspan="2" align="center" valign="middle"><FONT face="Arial, Helvetica, sans-serif" size="1"><B>&nbsp;</B></FONT></td>
          <td><img src="files/cur2.gif" width="24" height="21" ></td>
          <td><img src="files/hindiver.gif" usemap="#Map4" border="0"><map name="Map4"><area shape="rect" coords="22,2,150,14" href="howtoclaim.jsp"></map></td>
        </tr>
<!-- -->

      </table>
    </TD>
    </tr>
  <tr>
      <TD height="188" width="788">
      <TABLE width="780" border="0" cellspacing="0" cellpadding="0">
        <tr align="left" valign="top">
            <TD rowspan="5" width="192">
            <TABLE border="0" cellspacing="0" cellpadding="0">
              <tr align="left" valign="top">
<!--                  <TD width="192"><FONT face="Arial, Helvetica, sans-serif" size="1"><B><A href="file:///C:/newHome/nic/cmdnewyear.htm"><blink><font color="#000099"><U style="clear : right;text-align : right;float : none;position : normal;color : blue;">1.CMD's New Year Message</U></font></blink></A><br>
            <A href="file:///C:/newHome/nic/marutipublicity.htm"><blink><font color="#000099"><u>2.Tender-Maruti Publicity</u></font></blink></A><A href="file:///C:/newHome/nic/newphonepublic.htm"><blink><font color="#000099"><U style="text-align : center;"><BR>
                  3.New Telephone nos.</U></font></blink></A>
            </B>
-->
           </FONT>

<!--
<marquee WIDTH=100% BEHAVIOR=SCROLL> <A href="recruit-advertisement2006.pdf"> <FONT SIZE="4" FACE="courier" COLOR=Red><B>Recruitment of Administrative Officer (SCALE-I) in Specialised disciplines</B>  </FONT></marquee>  <BR> -->
<!--<A href="aao_intvw_call_05.htm"><blink><font color=GREEN size=2><U style="text-align : center;"><B>* Interview Schedule (AAO - 2005)</B></U></font></blink></A>
<BR>
<A href="result_aao05.htm"><blink><font color=#888899 size=2><U style="text-align : center;"><B>* Recruitment of AAO - 2005 (Shortlisted for Interview)</B></U></font></blink></A>

<A href="hindi_recrt.htm"><blink><font color=BLUE size=2><U style="text-align : center;"><B>* Internal Selection-Hindi Officer </B></U></font></blink></A><BR>

<A href="hindi_appl.doc"><blink><font color=BLUE size=2><U style="text-align : center;"><B>* Application Form-Hindi Officer</B></U></font></blink></A><BR>

<A href="aao_rcrt_04.htm"><blink><font color=RED size=2><U style="text-align : center;"><B>* Recruitment of AAO</B></U></font></blink></A><BR>

<A href="\aao_appl.doc"><blink><font color=RED size=2><U style="text-align : center;"><B>* App. Format-AAO Recruitment</B></U></font></blink></A>
<BR>

<A href="intclr.htm"><blink><font color=RED size=2><U style="text-align : center;"><B>* Clarifications-INT. WORKS</B></U></font></blink></A>

<BR>
<A href="promotion05.htm"><blink><font color=RED size=2><U style="text-align : center;"><B> * Promotion List</B></U></font></blink></A>

<BR>
<A href="csdoff.jsp"><blink><font color=RED size=2><U style="text-align : center;"><B> * Customer Care</B></U></font></blink></A>
<BR>
<A href="ifc.jsp"><blink><font color=RED size=2><U style="text-align : center;"><B> * Info. & Facilitation Counter</B></U></font></blink></A>-->

<BR>
<!--
<A href="cmd'smessage.htm"><blink><font color=RED size=2><U style="text-align : center;"><B> * CMD's Message </B></U></font></blink></A>

<A href="check_off_notice_13042006.htm"><blink><font color=RED size=2><U style="text-align : center;"><B> * Notice - Check off - Dt.12-04-06</B></U></font></blink></A>

<A href="Notice 060403.htm"><blink><font color=RED size=2><U style="text-align : center;"><B> * Notice - Check off - Dt.04-04-06</B></U></font></blink></A>

<A href="Notice-Wage.htm"><blink><font color=RED size=2><U style="text-align : center;"><B> * Notice - Wage Revision </B></U></font></blink></A>
<BR> -->

<A href="cmd-mess.jsp"><blink><font color=RED size=2><U style="text-align : center;"><B> * CMD's Message </B></U></font></blink></A>
<BR>

<A href="Check20Off20Notice.pdf"><blink><font color=RED size=2><U style="text-align : center;"><B> * Notice - Check off - Dt. 21-06-06</B></U></font></blink></A>

<BR>



<!-- 
<A href="final selection listof AAO specialist 2005.htm"><blink><font color=RED size=2><U style="text-align : center;"><B> * Final List AAO Specialist 2005 </B></U></font></blink></A>
<BR> -->
  <A href="grievance.jsp"><blink><font color=RED size=2><U style="text-align : center;"><B> * Grievance Redressal</B></U></font></blink></A>
  
<BR>  
 <BR>
  			 
            
<!-- 

<A href="promo1410.htm"><blink><font color=RED size=2><U style="text-align : center;"><B> * Promotion List</B></U></font></blink></A>
<BR>
<BR>
<A href="nepal.htm"><blink><font color=RED size=2><U style="text-align : center;"><B> * Policy for Tourists visiting Nepal</B></U></font></blink></A>-->



				  


<!--                   <BR><A href="no1.htm"><blink><font color=RED size=2><U style="text-align : center;"><B>We have become No.1</B></U></font></blink></A>

				  
                 <A href="csd.htm"><blink><font color="#000099" size=2><U style="text-align : center;">
                  3.Customer Care Services Contacts</U></font></blink></A>				-->
   
                  
                  </TD>
                </tr>
              <tr align="left" valign="top">
                  <TD width="192"><IMG src="files/online_newsletter.gif" width="191" height="19" alt="Read news online!!! Click on news headlines to read the news in details."></TD>
                </tr>
              <tr align="left" valign="top">
                  <TD width="192"><IMG src="files/newsarea.gif" width="192" height="108" alt="Read news online!!! Click on news headlines to read the news in details."></TD>
                </tr>
<tr align="left" valign="top">
                  <TD width="192"><IMG src="files/building(59).gif" width="192" height="108" alt="NIC HEAD OFFICE"></TD>
                </tr>
            </TABLE>
            <MAP 
name=scrolls> <AREA alt="Read news online!!! Scroll through the news headlines and click on news headlines to read the news in details. "  coords=0,75,24,91 href="" onclick="alert('Click on the News Headlines inside the Online Newsletter\nto know more about Insurance news.\n\nScroll Up or Down For more headlines using the arrow heads.');return false;" 
  onmouseout=StopScrollDOWN(); onmouseover=scrollDOWN(); shape=RECT><AREA alt="Read news headlines online!!! Scroll through the news and click on news headlines to read the news in details. " 
  coords=0,0,16,16 href="" onclick="alert('Click on the News Headlines inside the Online Newsletter\nto know more about Insurance news.\n\nScroll Up or Down For more headlines using the arrow heads.');return false;" onmouseout=StopScrollUP(); 
  onmouseover=scrollUP(); shape=RECT></MAP>
            <DIV id="description" style="CLIP: rect(0px 186px 66px 0px); LEFT: 1px; POSITION: absolute; TOP: 270px; WIDTH: 143px; height: 35px;
  z-index : 1;
" name="description">

<p><FONT class=a6x6 size=1>


 <table cellpadding='0' cellspacing='1' width='170'><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=105' alt='Click to read the news in details'>Whats New?<img src="images/new1.gif" width="28" height="11" border="0"></A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=571' alt='Click to read the news in details'>Oriental Insurance has no room for the aged</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=570' alt='Click to read the news in details'>Insurers come together to combat fraud</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=569' alt='Click to read the news in details'>JNPT purchased Rs7,000 crore cover from NIC</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=567' alt='Click to read the news in details'>NIC to launch four policies</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=568' alt='Click to read the news in details'>NIC premium income rises</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=566' alt='Click to read the news in details'>NIC and UCO Bank launches UCO Medi + Care Bima</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=565' alt='Click to read the news in details'>NIC bags mandate from GMR, SpiceJet</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=548' alt='Click to read the news in details'>Mr. V.Ramasaamy, new CMD of National Insurance Co. Ltd.</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=547' alt='Click to read the news in details'>AWAAZ-CNBC CONSUMER AWARD 2005</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=546' alt='Click to read the news in details'>Irda rejigs insurance advisory panel</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=545' alt='Click to read the news in details'>Infosys places Rs.4,600 -cr cover with NIC</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=544' alt='Click to read the news in details'>State-owned insurance cos jointly bid for A-I account</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=543' alt='Click to read the news in details'>Life, non-life cos show identical growth</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=533' alt='Click to read the news in details'>National Insurance Academy of Pune takes expertise to foreign shores</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=534' alt='Click to read the news in details'>Third-party liability to make two-wheelers dearer</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=525' alt='Click to read the news in details'>Non_life insurers want cap on motor third party liabilities</A></td></tr><tr align='left' valign='top'><td><img src='files/bullet.gif' border=0'></td><td><font face='Arial, Helvetica, sans-serif' size='1'><A href='CDispNews?val=526' alt='Click to read the news in details'>IRDA calls for liability risks cover</A></td></tr></table>
</font></DIV>

          <FONT class=a6x6 size=1> </font><font class=a6x6 size=1>
          <div id=scrollbars style="LEFT: 170px; POSITION: absolute; TOP: 270px; width: 21px; height: 91px" 
 z-index : 2;
name="scrollbars"><img alt="" border=0 height=91 
src="files/scrollbar.gif" usemap=#scrolls width=14></div>
          </font> </td>

<!--

            <DIV id="scrollbars" style="LEFT: 170px; POSITION: absolute; TOP: 299px; width: 21px; height: 91px;
  z-index : 2;
" name="scrollbars"><font class=a6x6 size=1><img alt="" border=0 height=91 
src="files/scrollbar.gif" usemap=#scrolls width=14></font></DIV>  

-->
            </TD>
            <!-- -->
            <TD rowspan="5" width="424">
            <TABLE border="0" cellspacing="0" cellpadding="0">
              <tr align="left" valign="top">
                  <TD rowspan="4" width="319"></TD>
                </tr>


              <tr align="left" valign="top">
                </tr>


              <tr align="left" valign="top">
                </tr>


              <tr align="left" valign="top">
                </tr>
              <tr align="left" valign="top">

				<TD width="319"><a href="downloads/center.jpg"><IMG src="files/center.jpg" border "0" width="379" height="390"></TD>  

<!--            <TD width="319"><a href="/downloads/house.mpg"><IMG src="files/center.jpg" border "0" width="379" height="390"></TD>                

				<TD width="319"><a href="/downloads/centenaryadeng.jpg"><IMG src="files/center.jpg" border "0" width="379" height="390"></TD>
-->
               </tr>
            </TABLE>
            </TD>
            <TD rowspan="5" width="154">
            <table width="164" border "0" cellspacing="0" cellpadding="0"> 
              <tr align="left" valign="top"> 
           		<td><a href="tendermain.jsp"><img src= "files/tender.gif"></td>
			  </tr>
			  <tr align="left" valign="top"> 
            	<td><a href="recruitmain.jsp"><img src= "files/recruit.gif"></td>
              </tr>
			  <tr align="left" valign="top"> 
  <!--              <td><a href="pio.jsp"><img src= "files/pio.gif"></td> -->
					<td><a href="rtia.jsp"><img src= "files/rtia.gif"></td>
		      </tr>
            </table>
          </TD>
          </tr>
        <tr align="left" valign="top"> </tr>
        <tr align="left" valign="top"> </tr>
        <tr align="left" valign="top"> </tr>
        <tr align="left" valign="top"> </tr>
      </TABLE>
      </TD>
    </tr>
  <tr>
      <TD width="788">&nbsp;</TD>
    </tr>
  <tr>
      <TD width="788">
<!-- -->


<table width="711" border="0" cellspacing="0" cellpadding="0">
  <tr align="center" valign="top"> 
<!--
<td colspan="5" height="6" nowrap><b><font face="Arial, Helvetica, sans-serif" size="3"><font color="#FF00FF"> 
      <I>NATIONAL INSURANCE WISHES YOU ALL A VERY HAPPY GANESH CHATURTHI</I></font></font></b></td>

<tr align="center" valign="top"> 
<marquee WIDTH=100% BEHAVIOR=SCROLL SCROLLDELAY=90> <A href="recruit-advertisement2006.pdf"> <FONT SIZE="4" FACE="courier" COLOR=Red><B>Recruitment of Administrative Officer (SCALE-I) in Specialised disciplines</B>  </FONT></marquee>  <BR>
</tr> -->
    <td colspan="5" height="6" nowrap><b><font face="Arial, Helvetica, sans-serif" size="1"><font color="#0000CC"> 
      &nbsp;&nbsp;&nbsp;&nbsp;<A href="file:///C:/Documents and Settings/Administrator/Application Data/IBM/WebSphere Studio/tmp/Home.jsp">Home</A>&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;<a href="CCompProf">About Us</a> &nbsp;&nbsp;&nbsp;| 
      &nbsp;&nbsp;&nbsp;<a href="policy.jsp">Policies</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| 
      &nbsp;&nbsp;&nbsp;<a href="CDownload?grpid=1">Downloads</a> 
      &nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;&nbsp;<a href="user_Assistance.jsp">User 
      Assistance</a> &nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;&nbsp;<a href="CNewsBranch">News 
      &amp; Events</a> &nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;&nbsp;<a href="CShowOffice">Our 
      Offices</a> &nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;&nbsp;<a href="FaqHome.jsp">FAQs</a> 
      &nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;&nbsp;Calculate Premium</a> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</font></font></b></td>
  </tr>
  <tr align="center" valign="top"> 
    <td colspan="5" height="12" nowrap><b><font face="Arial, Helvetica, sans-serif" size="1"> 
      <font color="#0000CC"><a href="hindi.jsp">Hindi Version</a>&nbsp;&nbsp;&nbsp;&nbsp; 
      </font><a href="sitemap.jsp">|</a> <font color="#0000CC">&nbsp;&nbsp;&nbsp;<a href="CRegistration">Free 
      Registration</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="newLogin.jsp">User 
      Login</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="howtopolicy.jsp">How 
      to take a Policy</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="howtoclaim.jsp">How 
      to lodge a Claim</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="sitemap.jsp">Site 
      Map</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="disclaimer.jsp">Disclaimer</a></font><a href="disclaimer.jsp"><font color="#0000CC"> 
      </font></a></font></b></td>
  </tr>
  
  <tr align="center" valign="top"> 
    <td colspan="5" height="10" nowrap><b><font face="Arial, Helvetica, sans-serif" size="1"></font></b><b><font face="Arial, Helvetica, sans-serif" size="1"></font></b><b><font face="Arial, Helvetica, sans-serif" size="1"></font></b><b><font face="Arial, Helvetica, sans-serif" size="1"></font></b><b><font face="Arial, Helvetica, sans-serif" size="2"><br>
      IRDA Registration Number : 58</font></b></td>
  </tr>

  <tr align="center" valign="top"> 
    <td colspan="5" height="10" nowrap><b><font face="Arial, Helvetica, sans-serif" size="1"></font></b><b><font face="Arial, Helvetica, sans-serif" size="1"></font></b><b><font face="Arial, Helvetica, sans-serif" size="1"></font></b><b><font face="Arial, Helvetica, sans-serif" size="1"></font></b><b><font face="Arial, Helvetica, sans-serif" size="1"><br>
      Best Viewed using Microsoft Internet Explorer 5 and above &amp; Netscape 
      4.5 and above. &copy; 2001-2002 National Insurance Company Limited. All 
      rights reserved</font></b></td>
  </tr>

  <tr align="center" valign="top"> 
    <td colspan="5" height="10" nowrap><b><font face="Arial, Helvetica, sans-serif" size="1"></font></b><b><font face="Arial, Helvetica, sans-serif" size="1"></font></b><b><font face="Arial, Helvetica, sans-serif" size="1"></font></b><b><font face="Arial, Helvetica, sans-serif" size="1"></font></b><b><font face="Arial, Helvetica, sans-serif" size="1"><br>
      Site Developed by NIIT Limited and Maintained by National Insurance Company Limited</font></b></td>
  </tr>


</table>


<!-- -->



    </TD>
    </tr>
</TABLE>

</BODY>
</html>
