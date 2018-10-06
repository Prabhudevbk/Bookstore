<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@include file="Header.jsp" %>
<html>
<head>
<c:url value="/Resources/Images" var="img"/>
<title>home</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

<c:url value="/Resources/Images" var="img"/>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
 footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
   .vl {
    border-left: 1px solid white;
    height: 100px;
  }
   body{ 
   background-color:#f2f2f2;
   } 

  </style>
</head>
<body>


<div style="margin-top:25px">
<script type="text/javascript">
!function(g,i,m,e,d,k,f){new(function(){});var c={D:m.PI,M:m.max,u:m.min,pb:m.ceil,ab:m.floor,qb:m.abs,tb:m.sin,Wb:m.cos,Dd:m.tan,Se:m.atan,Ub:m.sqrt,q:m.pow,H:m.round},h={Pe:function(a){return-c.Wb(a*c.D)/2+.5},pc:function(a){return a},Oe:function(a){return a*a},ud:function(a){return-a*(a-2)},mf:function(a){return(a*=2)<1?1/2*a*a:-1/2*(--a*(a-2)-1)},nf:function(a){return a*a*a},Jf:function(a){return(a-=1)*a*a+1},If:function(a){return(a*=2)<1?1/2*a*a*a:1/2*((a-=2)*a*a+2)},Hf:function(a){return a*a*a*a},Gf:function(a){return-((a-=1)*a*a*a-1)},Kf:function(a){return(a*=2)<1?1/2*a*a*a*a:-1/2*((a-=2)*a*a*a-2)},ng:function(a){return a*a*a*a*a},hf:function(a){return(a-=1)*a*a*a*a+1},of:function(a){return(a*=2)<1?1/2*a*a*a*a*a:1/2*((a-=2)*a*a*a*a+2)},pf:function(a){return 1-c.Wb(c.D/2*a)},qf:function(a){return c.tb(c.D/2*a)},rf:function(a){return-1/2*(c.Wb(c.D*a)-1)},sf:function(a){return a==0?0:c.q(2,10*(a-1))},tf:function(a){return a==1?1:-c.q(2,-10*a)+1},uf:function(a){return a==0||a==1?a:(a*=2)<1?1/2*c.q(2,10*(a-1)):1/2*(-c.q(2,-10*--a)+2)},vf:function(a){return-(c.Ub(1-a*a)-1)},wf:function(a){return c.Ub(1-(a-=1)*a)},xf:function(a){return(a*=2)<1?-1/2*(c.Ub(1-a*a)-1):1/2*(c.Ub(1-(a-=2)*a)+1)},zf:function(a){if(!a||a==1)return a;var b=.3,d=.075;return-(c.q(2,10*(a-=1))*c.tb((a-d)*2*c.D/b))},Af:function(a){if(!a||a==1)return a;var b=.3,d=.075;return c.q(2,-10*a)*c.tb((a-d)*2*c.D/b)+1},Bf:function(a){if(!a||a==1)return a;var b=.45,d=.1125;return(a*=2)<1?-.5*c.q(2,10*(a-=1))*c.tb((a-d)*2*c.D/b):c.q(2,-10*(a-=1))*c.tb((a-d)*2*c.D/b)*.5+1},Cf:function(a){var b=1.70158;return a*a*((b+1)*a-b)},Df:function(a){var b=1.70158;return(a-=1)*a*((b+1)*a+b)+1},Ef:function(a){var b=1.70158;return(a*=2)<1?1/2*a*a*(((b*=1.525)+1)*a-b):1/2*((a-=2)*a*(((b*=1.525)+1)*a+b)+2)},jd:function(a){return 1-h.Ic(1-a)},Ic:function(a){return a<1/2.75?7.5625*a*a:a<2/2.75?7.5625*(a-=1.5/2.75)*a+.75:a<2.5/2.75?7.5625*(a-=2.25/2.75)*a+.9375:7.5625*(a-=2.625/2.75)*a+.984375},Ff:function(a){return a<1/2?h.jd(a*2)*.5:h.Ic(a*2-1)*.5+.5},lf:c.pb,kf:c.ab};var b=new function(){var j=this,vb=/\S+/g,G=1,pb=2,sb=3,rb=4,Z=5,H,r=0,n=0,B=0,A=navigator,fb=A.appName,p=A.userAgent,q=parseFloat;function Eb(){if(!H){H={gd:"ontouchstart"in g||"createTouch"in i};var a;if(A.pointerEnabled||(a=A.msPointerEnabled))H.Nd=a?"msTouchAction":"touchAction"}return H}function u(h){if(!r){r=-1;if(fb=="Microsoft Internet Explorer"&&!!g.attachEvent&&!!g.ActiveXObject){var e=p.indexOf("MSIE");r=G;n=q(p.substring(e+5,p.indexOf(";",e)));/*@cc_on@*/}else if(fb=="Netscape"&&!!g.addEventListener){var d=p.indexOf("Firefox"),b=p.indexOf("Safari"),f=p.indexOf("Chrome"),c=p.indexOf("AppleWebKit");if(d>=0){r=pb;n=q(p.substring(d+8))}else if(b>=0){var i=p.substring(0,b).lastIndexOf("/");r=f>=0?rb:sb;n=q(p.substring(i+1,b))}else{var a=/Trident\/.*rv:([0-9]{1,}[\.0-9]{0,})/i.exec(p);if(a){r=G;n=q(a[1])}}if(c>=0)B=q(p.substring(c+12))}else{var a=/(opera)(?:.*version|)[ \/]([\w.]+)/i.exec(p);if(a){r=Z;n=q(a[2])}}}return h==r}function v(){return u(G)}function qb(){return u(sb)}function ub(){return u(Z)}function mb(){return qb()&&B>534&&B<535}function I(){u();return B>537||n>42||r==G&&n>=11}function nb(a){var b,c;return function(g){if(!b){b=d;var e=a.substr(0,1).toUpperCase()+a.substr(1);l([a].concat(["WebKit","ms","Moz","O","webkit"]),function(h,d){var b=a;if(d)b=h+e;if(g.style[b]!=f)return c=b})}return c}}function lb(b){var a;return function(c){a=a||nb(b)(c)||b;return a}}var L=lb("transform");function eb(a){return{}.toString.call(a)}var bb={};l(["Boolean","Number","String","Function","Array","Date","RegExp","Object"],function(a){bb["[object "+a+"]"]=a.toLowerCase()});function l(b,d){var a,c;if(eb(b)=="[object Array]"){for(a=0;a<b.length;a++)if(c=d(b[a],a,b))return c}else for(a in b)if(c=d(b[a],a,b))return c}function F(a){return a==e?String(a):bb[eb(a)]||"object"}function cb(a){for(var b in a)return d}function C(a){try{return F(a)=="object"&&!a.nodeType&&a!=a.window&&(!a.constructor||{}.hasOwnProperty.call(a.constructor.prototype,"isPrototypeOf"))}catch(b){}}function jb(b,a){setTimeout(b,a||0)}function ab(b,d,c){var a=!b||b=="inherit"?"":b;l(d,function(c){var b=c.exec(a);if(b){var d=a.substr(0,b.index),e=a.substr(b.index+b[0].length+1,a.length-1);a=d+e}});a&&(c+=(!a.indexOf(" ")?"":" ")+a);return c}function gb(a,b){if(a===f)a=b;return a}j.bd=Eb;j.Xd=v;j.Bg=qb;j.xg=I;nb("transform");j.ed=function(){return n};j.cc=jb;j.J=gb;j.bb=function(a,b){b.call(a);return z({},a)};function U(a){a.constructor===U.caller&&a.s&&a.s.apply(a,U.caller.arguments)}j.s=U;j.Ob=function(a){if(j.sg(a))a=i.getElementById(a);return a};function t(a){return a||g.event}j.tg=t;j.Rb=function(b){b=t(b);var a=b.target||b.srcElement||i;if(a.nodeType==3)a=j.uc(a);return a};j.Id=function(a){a=t(a);return a.relatedTarget||a.toElement};j.Md=function(a){a=t(a);return a.which||([0,1,3,0,2])[a.button]||a.charCode||a.keyCode};j.xc=function(a){a=t(a);return{x:a.clientX||0,y:a.clientY||0}};j.vg=function(b,a){return b.x>=a.x&&b.x<=a.x+a.w&&b.y>=a.y&&b.y<=a.y+a.h};j.Od=function(c,e){var a=b.wg(e),d=b.xc(c);return j.vg(d,a)};function w(c,d,a){if(a!==f)c.style[d]=a==f?"":a;else{var b=c.currentStyle||c.style;a=b[d];if(a==""&&g.getComputedStyle){b=c.ownerDocument.defaultView.getComputedStyle(c,e);b&&(a=b.getPropertyValue(d)||b[d])}return a}}function X(b,c,a,d){if(a===f){a=q(w(b,c));isNaN(a)&&(a=e);return a}if(a==e)a="";else d&&(a+="px");w(b,c,a)}function m(c,a){var d=a?X:w,b;if(a&4)b=lb(c);return function(e,f){return d(e,b?b(e):c,f,a&2)}}function zb(a){return q(a.style.opacity||"1")}function Bb(b,a){b.style.opacity=a==1?"":c.H(a*100)/100}var N={Z:["rotate"],eb:["rotateX"],jb:["rotateY"],Yb:["skewX"],Xb:["skewY"]};if(!I())N=z(N,{P:["scaleX",2],V:["scaleY",2],kb:["translateZ",1]});function M(c,a){var b="";if(a){if(v()&&n&&n<10){delete a.eb;delete a.jb;delete a.kb}l(a,function(d,c){var a=N[c];if(a){var e=a[1]||0;if(O[c]!=d)b+=" "+a[0]+"("+d+(["deg","px",""])[e]+")"}});if(I()){if(a.Db||a.Cb||a.kb!=f)b+=" translate3d("+(a.Db||0)+"px,"+(a.Cb||0)+"px,"+(a.kb||0)+"px)";if(a.P==f)a.P=1;if(a.V==f)a.V=1;if(a.P!=1||a.V!=1)b+=" scale3d("+a.P+", "+a.V+", 1)"}}c.style[L(c)]=b}j.zg=m("transformOrigin",4);j.Ag=m("backfaceVisibility",4);j.bc=m("transformStyle",4);j.Fg=m("perspective",6);j.Gg=m("perspectiveOrigin",4);j.ug=function(b,a){if(v()&&n<9)b.style.zoom=a==1?"":a;else{var c=L(b),f=a==1?"":"scale("+a+")",e=b.style[c],g=new RegExp(/[\s]*scale\(.*?\)/g),d=ab(e,[g],f);b.style[c]=d}};j.db=function(a,d,b,c){a=j.Ob(a);if(a.addEventListener){d=="mousewheel"&&a.addEventListener("DOMMouseScroll",b,c);a.addEventListener(d,b,c)}else if(a.attachEvent){a.attachEvent("on"+d,b);c&&a.setCapture&&a.setCapture()}};j.yb=function(a,c,d,b){a=j.Ob(a);if(a.removeEventListener){c=="mousewheel"&&a.removeEventListener("DOMMouseScroll",d,b);a.removeEventListener(c,d,b)}else if(a.detachEvent){a.detachEvent("on"+c,d);b&&a.releaseCapture&&a.releaseCapture()}};j.mc=function(a){a=t(a);a.preventDefault&&a.preventDefault();a.cancel=d;a.returnValue=k};j.lg=function(a){a=t(a);a.stopPropagation&&a.stopPropagation();a.cancelBubble=d};j.Y=function(d,c){var a=[].slice.call(arguments,2),b=function(){var b=a.concat([].slice.call(arguments,0));return c.apply(d,b)};return b};j.Of=function(a,b){if(b==f)return a.textContent||a.innerText;var c=i.createTextNode(b);j.hc(a);a.appendChild(c)};j.wg=function(b){var a=b.getBoundingClientRect();return{x:a.left,y:a.top,w:a.right-a.left,h:a.bottom-a.top}};j.Ib=function(d,c){for(var b=[],a=d.firstChild;a;a=a.nextSibling)(c||a.nodeType==1)&&b.push(a);return b};function db(a,c,f,b){b=b||"u";for(a=a?a.firstChild:e;a;a=a.nextSibling)if(a.nodeType==1){if(D(a,b)==c)return a;if(!f){var d=db(a,c,f,b);if(d)return d}}}j.de=db;function S(a,d,g,b){b=b||"u";var c=[];for(a=a?a.firstChild:e;a;a=a.nextSibling)if(a.nodeType==1){D(a,b)==d&&c.push(a);if(!g){var f=S(a,d,g,b);if(f.length)c=c.concat(f)}}return c}j.Wf=function(b,a){return b.getElementsByTagName(a)};j.fb=function(a,f,d,g){d=d||"u";var e;do{if(a.nodeType==1){var c;d&&(c=D(a,d));if(c&&c==gb(f,c)||g==a.tagName){e=a;break}}a=b.uc(a)}while(a&&a!=i.body);return e};j.Xf=function(a){return W(["INPUT","TEXTAREA","SELECT"])[a.tagName]};function z(){var e=arguments,d,c,b,a,h=1&e[0],g=1+h;d=e[g-1]||{};for(;g<e.length;g++)if(c=e[g])for(b in c){a=c[b];if(a!==f){a=c[b];var i=d[b];d[b]=h&&(C(i)||C(a))?z(h,{},i,a):a}}return d}j.gb=z;function V(f,g){var d={},c,a,b;for(c in f){a=f[c];b=g[c];if(a!==b){var e;if(C(a)&&C(b)){a=V(a,b);e=!cb(a)}!e&&(d[c]=a)}}return d}j.id=function(a){return F(a)=="function"};j.Zf=function(a){return F(a)=="array"};j.sg=function(a){return F(a)=="string"};j.tc=function(a){return!isNaN(q(a))&&isFinite(a)};j.g=l;j.Ze=C;function Q(a){return i.createElement(a)}j.wc=function(){return Q("DIV")};j.bg=function(){return Q("SPAN")};j.Me=function(){};function E(b,c,a){if(a==f)return b.getAttribute(c);b.setAttribute(c,a)}function D(a,b){return E(a,b)||E(a,"data-"+b)}j.l=E;j.N=D;j.p=function(d,b,c){var a=j.dg(D(d,b));if(isNaN(a))a=c;return a};function x(b,a){return E(b,"class",a)||""}function W(b){var a={};l(b,function(b){if(b!=f)a[b]=b});return a}function kb(b,a){return b.match(a||vb)}function P(b,a){return W(kb(b||"",a))}j.rd=W;j.fg=kb;j.gg=function(a){a&&(a=a.toLowerCase());return a};function Y(b,c){var a="";l(c,function(c){a&&(a+=b);a+=c});return a}function J(a,c,b){x(a,Y(" ",z(V(P(x(a)),P(c)),P(b))))}j.uc=function(a){return a.parentNode};j.Kb=function(a){j.rb(a,"none")};j.xb=function(a,b){j.rb(a,b?"none":"")};j.ig=function(b,a){b.removeAttribute(a)};j.jg=function(d,a){if(a)d.style.clip="rect("+c.H(a.i||a.G||0)+"px "+c.H(a.v)+"px "+c.H(a.z)+"px "+c.H(a.j||a.C||0)+"px)";else if(a!==f){var h=d.style.cssText,g=[new RegExp(/[\s]*clip: rect\(.*?\)[;]?/i),new RegExp(/[\s]*cliptop: .*?[;]?/i),new RegExp(/[\s]*clipright: .*?[;]?/i),new RegExp(/[\s]*clipbottom: .*?[;]?/i),new RegExp(/[\s]*clipleft: .*?[;]?/i)],e=ab(h,g,"");b.td(d,e)}};j.kg=function(b,a){if(a)b.style.backgroundColor="rgba("+c.H(a.hd)+","+c.H(a.Bd)+","+c.H(a.zd)+","+a.S+")"};j.Fb=function(){return+new Date};j.W=function(b,a){b.appendChild(a)};j.ub=function(b,a,c){(c||a.parentNode).insertBefore(b,a)};j.Nb=function(b,a){a=a||b.parentNode;a&&a.removeChild(b)};j.Ue=function(a,b){l(a,function(a){j.Nb(a,b)})};j.hc=function(a){j.Ue(j.Ib(a,d),a)};function hb(){l([].slice.call(arguments,0),function(a){if(j.Zf(a))hb.apply(e,a);else a&&a.m()})}j.m=hb;j.md=function(a,b){var c=j.uc(a);if(b&1){j.O(a,(j.F(c)-j.F(a))/2);j.Fd(a,e)}if(b&2){j.Q(a,(j.A(c)-j.A(a))/2);j.vd(a,e)}};var R={i:e,v:e,z:e,j:e,T:e,U:e};j.re=function(a){var b=j.wc();s(b,{yd:"block",Qb:j.Sb(a),i:0,j:0,T:0,U:0});var d=j.Cd(a,R);j.ub(b,a);j.W(b,a);var e=j.Cd(a,R),c={};l(d,function(b,a){if(b==e[a])c[a]=b});s(b,R);s(b,c);s(a,{i:0,j:0});return c};j.dg=q;j.Kd=function(b,a){var c=i.body;while(a&&b!==a&&c!==a)a=a.parentNode;return b===a};function T(d,c,b){var a=d.cloneNode(!c);!b&&j.ig(a,"id");return a}j.fc=T;j.Mb=function(e,f){var a=new Image;function b(e,d){j.yb(a,"load",b);j.yb(a,"abort",c);j.yb(a,"error",c);f&&f(a,d)}function c(a){b(a,d)}if(ub()&&n<11.6||!e)b(!e);else{j.db(a,"load",b);j.db(a,"abort",c);j.db(a,"error",c);a.src=e}};j.xe=function(e,a,d){var b=1;function c(c){b--;if(a&&c&&c.src==a.src)a=c;!b&&d&&d(a)}l(e,function(a){if(a.src){b++;j.Mb(a.src,c)}});c()};j.we=function(a,g,i,h){if(h)a=T(a);var c=S(a,g);if(!c.length)c=b.Wf(a,g);for(var f=c.length-1;f>-1;f--){var d=c[f],e=T(i);x(e,x(d));b.td(e,d.style.cssText);b.ub(e,d);b.Nb(d)}return a};function Cb(){var a=this;b.bb(a,o);var d,q="",s=["av","pv","ds","dn"],e=[],r,n=0,k=0,h=0;function m(){J(d,r,(e[h||k&2||k]||"")+" "+(e[n]||""));j.jc(d,h?"none":"")}function c(){n=0;a.L(g,"mouseup",c);a.L(i,"mouseup",c);a.L(i,"touchend",c);a.L(i,"touchcancel",c);a.L(g,"blur",c);m()}function p(b){if(h)j.mc(b);else{n=4;m();a.a(g,"mouseup",c);a.a(i,"mouseup",c);a.a(i,"touchend",c);a.a(i,"touchcancel",c);a.a(g,"blur",c)}}a.ue=function(a){if(a===f)return k;k=a&2||a&1;m()};a.sc=function(a){if(a===f)return!h;h=a?0:3;m()};a.s=function(f){a.R=d=j.Ob(f);E(d,"data-jssor-button","1");var c=b.fg(x(d));if(c)q=c.shift();l(s,function(a){e.push(q+a)});r=Y(" ",e);e.unshift("");a.a(d,"mousedown",p);a.a(d,"touchstart",p)};b.s(a)}j.Cc=function(a){return new Cb(a)};j.nb=w;j.vc=m("backgroundColor");j.Ec=m("overflow");j.jc=m("pointerEvents");j.Q=m("top",2);j.Fd=m("right",2);j.vd=m("bottom",2);j.O=m("left",2);j.F=m("width",2);j.A=m("height",2);m("marginLeft",2);m("marginTop",2);j.Sb=m("position");j.rb=m("display");j.K=m("zIndex",1);j.Ge=function(b,a,c){if(a!=f)Bb(b,a,c);else return zb(b)};j.td=function(a,b){if(b!=f)a.style.cssText=b;else return a.style.cssText};j.Ie=function(b,a){if(a===f){a=w(b,"backgroundImage")||"";var c=/\burl\s*\(\s*["']?([^"'\r\n,]+)["']?\s*\)/gi.exec(a)||[];return c[1]}w(b,"backgroundImage",a?"url('"+a+"')":"")};var K;j.Je=K={S:j.Ge,i:j.Q,v:j.Fd,z:j.vd,j:j.O,T:j.F,U:j.A,Qb:j.Sb,yd:j.rb,Bb:j.K};j.Cd=function(c,b){var a={};l(b,function(d,b){if(K[b])a[b]=K[b](c)});return a};function s(b,h){var a=I(),d=mb(),g=L(b);function c(l,a){a=a||{};var h=a.kb||0,i=(a.eb||0)%360,j=(a.jb||0)%360,k=(a.Z||0)%360,c=a.P,d=a.V,e=a.Ng;if(c==f)c=1;if(d==f)d=1;if(e==f)e=1;var b=new yb(a.Db,a.Cb,h);b.yc(c,d,e);b.me(a.Yb,a.Xb);b.eb(i);b.jb(j);b.ke(k);b.Zb(a.C,a.G);l.style[g]=b.oe()}s=function(g,b){b=b||{};var i=b.C,k=b.G,h;l(K,function(a,c){h=b[c];h!==f&&a(g,h)});j.jg(g,b.f);j.kg(g,b.ob);if(!a){i!=f&&j.O(g,(b.Ed||0)+i);k!=f&&j.Q(g,(b.Zd||0)+k)}if(b.qe)if(d)jb(j.Y(e,M,g,b));else if(a)c(g,b);else M(g,b)};j.cb=s;s(b,h)}j.cb=s;function yb(j,k,n){var d=this,b=[1,0,0,0,0,1,0,0,0,0,1,0,j||0,k||0,n||0,1],i=c.tb,h=c.Wb,l=c.Dd;function g(a){return a*c.D/180}function m(c,e,l,m,o,r,t,u,w,z,A,C,E,b,f,k,a,g,i,n,p,q,s,v,x,y,B,D,F,d,h,j){return[c*a+e*p+l*x+m*F,c*g+e*q+l*y+m*d,c*i+e*s+l*B+m*h,c*n+e*v+l*D+m*j,o*a+r*p+t*x+u*F,o*g+r*q+t*y+u*d,o*i+r*s+t*B+u*h,o*n+r*v+t*D+u*j,w*a+z*p+A*x+C*F,w*g+z*q+A*y+C*d,w*i+z*s+A*B+C*h,w*n+z*v+A*D+C*j,E*a+b*p+f*x+k*F,E*g+b*q+f*y+k*d,E*i+b*s+f*B+k*h,E*n+b*v+f*D+k*j]}function f(c,a){return m.apply(e,(a||b).concat(c))}d.yc=function(a,c,d){if(a!=1||c!=1||d!=1)b=f([a,0,0,0,0,c,0,0,0,0,d,0,0,0,0,1])};d.Zb=function(a,c,d){b[12]+=a||0;b[13]+=c||0;b[14]+=d||0};d.eb=function(c){if(c){a=g(c);var d=h(a),e=i(a);b=f([1,0,0,0,0,d,e,0,0,-e,d,0,0,0,0,1])}};d.jb=function(c){if(c){a=g(c);var d=h(a),e=i(a);b=f([d,0,-e,0,0,1,0,0,e,0,d,0,0,0,0,1])}};d.ke=function(c){if(c){a=g(c);var d=h(a),e=i(a);b=f([d,e,0,0,-e,d,0,0,0,0,1,0,0,0,0,1])}};d.me=function(a,c){if(a||c){j=g(a);k=g(c);b=f([1,l(k),0,0,l(j),1,0,0,0,0,1,0,0,0,0,1])}};d.oe=function(){return"matrix3d("+b.join(",")+")"}}var O={Ed:0,Zd:0,C:0,G:0,vb:1,P:1,V:1,Z:0,eb:0,jb:0,Db:0,Cb:0,kb:0,Yb:0,Xb:0};j.Vd=function(c,d){var a=c||{};if(c)if(b.id(c))a={J:a};else if(b.id(c.f))a.f={J:c.f};a.J=a.J||d;if(a.f)a.f.J=a.f.J||d;if(a.ob)a.ob.J=a.ob.J||d;return a};function ib(c,a){var b={};l(c,function(c,d){var e=c;if(a[d]!=f)if(j.tc(c))e=c+a[d];else e=ib(c,a[d]);b[d]=e});return b}j.Ke=ib;j.se=function(o,j,s,t,E,F,p){var a=j;if(o){a={};for(var i in j){var G=F[i]||1,B=E[i]||[0,1],g=(s-B[0])/B[1];g=c.u(c.M(g,0),1);g=g*G;var y=c.ab(g);if(g!=y)g-=y;var k=t.J||h.pc,m,C=o[i],r=j[i];if(b.tc(r)){k=t[i]||k;var D=k(g);m=C+r*D}else{m=z({Vb:{}},o[i]);var A=t[i]||{};l(r.Vb||r,function(d,a){k=A[a]||A.J||k;var c=k(g),b=d*c;m.Vb[a]=b;m[a]+=b})}a[i]=m}var x=l(j,function(b,a){return O[a]!=f});x&&l(O,function(c,b){if(a[b]==f&&o[b]!==f)a[b]=o[b]});if(x){if(a.vb)a.P=a.V=a.vb;a.zb=p.zb;a.Ab=p.Ab;if(v()&&n>=11&&(j.C||j.G)&&s!=0&&s!=1)a.Z=a.Z||1e-8;a.qe=d}}if(j.f&&p.Zb){var q=a.f.Vb,w=(q.i||0)+(q.z||0),u=(q.j||0)+(q.v||0);a.j=(a.j||0)+u;a.i=(a.i||0)+w;a.f.j-=u;a.f.v-=u;a.f.i-=w;a.f.z-=w}if(a.f&&!a.f.i&&!a.f.j&&!a.f.G&&!a.f.C&&a.f.v==p.zb&&a.f.z==p.Ab)a.f=e;return a}};function o(){var a=this,f,e=[],c=[];function k(a,b){e.push({Gb:a,Eb:b})}function j(a,c){b.g(e,function(b,d){b.Gb==a&&b.Eb===c&&e.splice(d,1)})}function i(){e=[]}function h(){b.g(c,function(a){b.yb(a.Rd,a.Gb,a.Eb,a.Qd)});c=[]}a.Kc=function(){return f};a.a=function(e,a,d,f){b.db(e,a,d,f);c.push({Rd:e,Gb:a,Eb:d,Qd:f})};a.L=function(e,a,d,f){b.g(c,function(g,h){if(g.Rd===e&&g.Gb==a&&g.Eb===d&&g.Qd==f){b.yb(e,a,d,f);c.splice(h,1)}})};a.Ld=h;a.Nc=a.addEventListener=k;a.removeEventListener=j;a.k=function(a){var c=[].slice.call(arguments,1);b.g(e,function(b){b.Gb==a&&b.Eb.apply(g,c)})};a.m=function(){if(!f){f=d;h();i()}}}var l=function(C,D,i,m,R,Q){C=C||0;var a=this,p,n,o,s,F=0,O=1,L,M,K,G,B=0,j=0,r=0,A,l,e,h,q,z,u=[],y,I=k,J,H=k;function T(a){e+=a;h+=a;l+=a;j+=a;r+=a;B+=a}function x(C){var k=C;if(q)if(!z&&(k>=h||k<e)||z&&k>=e)k=((k-e)%q+q)%q+e;if(!A||s||j!=k){var g=c.u(k,h);g=c.M(g,e);if(i.Oc)g=h-g+e;if(!A||s||g!=r){if(Q){var x=(g-l)/(D||1),o=b.se(R,Q,x,L,K,M,i);if(y)b.g(o,function(b,a){y[a]&&y[a](m,b)});else b.cb(m,o);var n;if(J){var p=g>e&&g<h;if(p!=H)n=H=p}if(!n&&o.S!=f){var t=o.S<.001;if(t!=I)n=I=t}if(n!=f){n&&b.jc(m,"none");!n&&b.jc(m,b.l(m,"data-events"))}}var w=r,v=r=g;b.g(u,function(b,c){var a=!A&&z||k<=j?u[u.length-c-1]:b;a.E(g-B)});j=k;A=d;a.Pc(w-l,v-l);a.wb(w,v)}}}function E(a,b,d){b&&a.lc(h);if(!d){e=c.u(e,a.qc()+B);h=c.M(h,a.mb()+B)}u.push(a)}var v=g.requestAnimationFrame||g.webkitRequestAnimationFrame||g.mozRequestAnimationFrame||g.msRequestAnimationFrame;if(b.Bg()&&b.ed()<7||!v)v=function(a){b.cc(a,i.Hd)};function N(){if(p){var d=b.Fb(),e=c.u(d-F,i.ie),a=j+e*o*O;F=d;if(a*o>=n*o)a=n;x(a);if(!s&&a*o>=n*o)P(G);else v(N)}}function w(f,g,i){if(!p){p=d;s=i;G=g;f=c.M(f,e);f=c.u(f,h);n=f;o=n<j?-1:1;a.Rc();F=b.Fb();v(N)}}function P(b){if(p){s=p=G=k;a.Tc();b&&b()}}a.je=function(a,b,c){w(a?j+a:h,b,c)};a.kc=w;a.ve=function(a,b){w(h,a,b)};a.B=P;a.ce=function(){return j};a.be=function(){return n};a.n=function(){return r};a.E=x;a.He=function(){x(h,d)};a.Fc=function(){return p};a.kd=function(a){O=a};a.lc=T;a.I=function(a,b){E(a,0,b)};a.Uc=function(a){E(a,1)};a.Sc=function(a){h+=a};a.qc=function(){return e};a.mb=function(){return h};a.wb=a.Rc=a.Tc=a.Pc=b.Me;a.Qc=b.Fb();i=b.gb({Hd:16,ie:50},i);m&&(J=b.l(m,"data-inactive"));q=i.ec;z=i.ze;y=i.Ae;e=l=C;h=C+D;M=i.H||{};K=i.Be||{};L=b.Vd(i.hb)};var n={Fe:"data-scale",Jb:"data-autocenter",Lc:"data-nofreeze",Ad:"data-nodrag"},q=new function(){var a=this;a.Jc=function(c,a,e,d){(d||!b.l(c,a))&&b.l(c,a,e)};a.Xc=function(a){var c=b.p(a,n.Jb);b.md(a,c)}};new(function(){});var r={dd:1},u=function(){var a=this,D=b.bb(a,o),h,v,C,B,m,l=0,g,s,p,z,A,i,k,u,t,x,j;function y(a){j[a]&&j[a].ue(a==l)}function w(b){a.k(r.dd,b*s)}a.fd=function(a){if(a!=m){var d=l,b=c.ab(a/s);l=b;m=a;y(d);y(b)}};a.Wc=function(a){b.xb(h,a)};a.Vc=function(I){b.m(j);m=f;a.Ld();x=[];j=[];b.hc(h);v=c.pb(I/s);l=0;var H=u+z,y=t+A,r=c.pb(v/p)-1;C=u+H*(!i?r:p-1);B=t+y*(i?r:p-1);b.F(h,C);b.A(h,B);for(var n=0;n<v;n++){var D=b.bg();b.Of(D,n+1);var o=b.we(k,"numbertemplate",D,d);b.Sb(o,"absolute");var G=n%(r+1),E=c.ab(n/(r+1)),F=g.oc&&!i?r-G:G;b.O(o,(!i?F:E)*H);b.Q(o,(i?F:E)*y);b.W(h,o);x[n]=o;g.Hc&1&&a.a(o,"click",b.Y(e,w,n));g.Hc&2&&a.a(o,"mouseenter",b.Y(e,w,n));j[n]=b.Cc(o)}q.Xc(h)};a.s=function(d,c){a.R=h=b.Ob(d);a.Mc=g=b.gb({xd:10,wd:10,Hc:1},c);k=b.de(h,"prototype");u=b.F(k);t=b.A(k);b.Nb(k,h);s=g.pd||1;p=g.nd||1;z=g.xd;A=g.wd;i=g.ye&2;g.lb&&q.Jc(h,n.Jb,g.lb)};a.m=function(){b.m(j,D)};b.s(a)},v=function(){var a=this,v=b.bb(a,o),f,c,g,l,s,k,h,m,j,i;function p(b){a.k(r.dd,b,d)}function u(a){b.xb(f,a);b.xb(c,a)}function t(){j.sc((g.Pb||!l.te(h))&&k>1);i.sc((g.Pb||!l.Le(h))&&k>1)}a.fd=function(c,a,b){h=a;!b&&t()};a.Wc=u;a.Vc=function(g){k=g;h=0;if(!s){a.a(f,"click",b.Y(e,p,-m));a.a(c,"click",b.Y(e,p,m));j=b.Cc(f);i=b.Cc(c);b.l(f,n.Lc,1);b.l(c,n.Lc,1);s=d}};a.s=function(e,d,h,i){a.Mc=g=b.gb({pd:1},h);f=e;c=d;if(g.oc){f=d;c=e}m=g.pd;l=i;if(g.lb){q.Jc(f,n.Jb,g.lb);q.Jc(c,n.Jb,g.lb)}q.Xc(f);q.Xc(c)};a.m=function(){b.m(j,i,v)};b.s(a)};function p(e,d,c){var a=this;b.bb(a,o);l.call(a,0,c.sb);a.nc=0;a.Bc=c.sb}p.Ac=21;p.ic=24;var s=function(){var a=this,hb=b.bb(a,o);l.call(a,0,0);var f,t,gb=[h.pc,h.Pe,h.Oe,h.ud,h.mf,h.nf,h.Jf,h.If,h.Hf,h.Gf,h.Kf,h.ng,h.hf,h.of,h.pf,h.qf,h.rf,h.sf,h.tf,h.uf,h.vf,h.wf,h.xf,h.zf,h.Af,h.Bf,h.Cf,h.Df,h.Ef,h.jd,h.Ic,h.Ff,h.lf,h.kf],P={},S,C,u=new l(0,0),T=[],x=[],E,q=0;function G(d,c){var a={};b.g(d,function(d,f){var e=P[f];if(e){if(b.Ze(d))d=G(d,c||f=="e");else if(c)if(b.tc(d))d=gb[d];a[e]=d}});return a}function I(c,f){var e=[],d=b.p(c,"play");if(f&&d){var g=new s(c,t,{hg:d});N.push(g);a.a(g,p.Ac,Z);a.a(g,p.ic,U)}else b.g(b.Ib(c),function(a){e=e.concat(I(a,f+1))});if(!f&&(!j||j&16)||f&&(!d||!(d&16))){var h=S[b.p(c,"t")];h&&e.push({R:c,Zc:h})}return e}function O(c,f){var a=T[c];if(a==e){a=T[c]={ib:c,Dc:[],ld:[]};var d=0;!b.g(x,function(a,b){d=b;return a.ib>c})&&d++;x.splice(d,0,a)}return a}function db(o,p,g){var a,f;if(C){var k=C[b.p(o,"c")];if(k){a=O(k.r,0);a.ag=k.e||0}}b.g(p,function(h){var e=b.gb(d,{},G(h)),i=b.Vd(e.hb);delete e.hb;if(e.j){e.C=e.j;i.C=i.j;delete e.j}if(e.i){e.G=e.i;i.G=i.i;delete e.i}var m={hb:i,zb:g.T,Ab:g.U},j=new l(h.b,h.d,m,o,g,e);q=c.M(q,h.b+h.d);if(a){if(!f)f=new l(h.b,0);f.I(j)}else{var k=O(h.b,h.b+h.d);k.Dc.push(j)}if(e.ob)g.ob={hd:0,Bd:0,zd:0,S:0};g=b.Ke(g,e)});if(a&&f){f.He();var h=f,i,j=f.qc(),m=f.mb(),n=c.M(m,a.ag);if(a.ib<m){if(a.ib>j){h=new l(j,a.ib-j);h.I(f,d)}else h=e;i=new l(a.ib,n-j,{ec:n-a.ib,ze:d});i.I(f,d)}h&&a.Dc.push(h);i&&a.ld.push(i)}return g}function cb(a){b.g(a,function(d){var a=d.R,f=b.F(a),e=b.A(a),c={j:b.O(a),i:b.Q(a),C:0,G:0,S:1,Bb:b.K(a)||0,Z:0,eb:0,jb:0,P:1,V:1,Db:0,Cb:0,kb:0,Yb:0,Xb:0,T:f,U:e,f:{i:0,v:f,z:e,j:0}};c.Ed=c.j;c.Zd=c.i;db(a,d.Zc,c)})}function fb(f,e,g){var c=f.b-e;if(c){var b=new l(e,c);b.I(u,d);b.lc(g);a.I(b)}a.Sc(f.d);return c}function eb(e){var c=u.qc(),d=0;b.g(e,function(e,f){e=b.gb({d:3e3},e);fb(e,c,d);c=e.b;d+=e.d;if(!f||e.t==2){a.nc=c;a.Bc=c+e.d}})}function B(g,e,d){var f=e.length;if(f>4)for(var j=c.pb(f/4),a=0;a<j;a++){var h=e.slice(a*4,c.u(a*4+4,f)),i=new l(h[0].ib,0);B(i,h,d);g.I(i)}else b.g(e,function(a){b.g(d?a.ld:a.Dc,function(a){d&&a.Sc(q-a.mb());g.I(a)})})}var j,F,v=0,g,z,K,J,A,N=[],H=[],r,D,m;function y(a){return a&2||a&4&&b.bd().gd}function ab(){if(!A){g&8&&a.a(i,"keydown",Q);if(g&32){a.a(i,"mousedown",w);a.a(i,"touchstart",w)}A=d}}function Y(){a.L(i,"keydown",Q);a.L(i,"mousedown",w);a.L(i,"touchstart",w);A=k}function L(b){if(!r||b){r=d;a.B();b&&v&&a.E(0);a.kd(1);a.ve();ab();a.k(p.Ac,a)}}function n(){if(!D&&(r||a.n())){D=d;a.B();a.ce()>a.nc&&a.E(a.nc);a.kd(K||1);a.kc(0)}}function V(){!m&&n()}function M(c){var b=c;if(c<0&&a.n())b=1;if(b!=v){v=b;F&&a.k(p.ic,a,v)}}function Q(a){g&8&&b.Md(a)==27&&n()}function X(a){if(m&&b.Id(a)!==e){m=k;g&16&&b.cc(V,160)}}function w(a){g&32&&!b.Kd(f,b.Rb(a))&&n()}function W(a){if(!m){m=d;if(j&1)b.Od(a,f)&&L()}}function bb(i){var h=b.Rb(i),a=b.fb(h,e,e,"A"),c=a&&(b.Xf(a)||a===f||b.Kd(f,a));if(r&&y(g))!c&&n();else if(y(j))!c&&L(d)}function Z(b){var c=b.Yf(),a=H[c];a!==b&&a&&a.Vf();H[c]=b}function U(b,c){a.k(p.ic,b,c)}a.Yf=function(){return J||""};a.Vf=n;a.Rc=function(){M(1)};a.Tc=function(){r=k;D=k;M(-1);!a.n()&&Y()};a.wb=function(){!m&&z&&a.ce()>a.Bc&&n()};a.s=function(m,i,e){f=m;t=i;j=e.hg;E=e.Tf;S=t.ad;C=t.Kg;var l={i:"y",j:"x",z:"m",v:"t",Z:"r",eb:"rX",jb:"rY",P:"sX",V:"sY",Db:"tX",Cb:"tY",kb:"tZ",Yb:"kX",Xb:"kY",S:"o",hb:"e",Bb:"i",f:"c",ob:"bc",hd:"re",Bd:"gr",zd:"bl"};b.g(l,function(b,a){P[b]=a});cb(I(f,0));B(u,x);if(j){a.I(u);E=d;z=b.p(f,"idle");g=b.p(f,"rollback");K=b.p(f,"speed",1);J=b.N(f,"group");(y(j)||y(g))&&a.a(f,"click",bb);if((j&1||z)&&!b.bd().gd){a.a(f,"mouseenter",W);a.a(f,"mouseleave",X)}F=b.p(f,"pause")}var k=t.Rf||[],c=k[b.p(f,"b")]||[],h={b:q,d:c.length?0:e.sb||z||0};c=c.concat([h]);eb(c);a.mb();E&&a.Sc(1e8);q=a.mb();B(a,x,d);a.E(-1);a.E(b.p(f,"initial")||0)};a.m=function(){b.m(hb,N);a.B();a.E(-1)};b.s(a)},j=(g.module||{}).exports=function(){var a=this,xc=b.bb(a,o),ac="data-jssor-slider",Ac="data-jssor-thumb",t,m,R,Gb,cb,sb,Z,M,K,P,Rb,zc=1,pc=1,Ec=1,fc=1,Ic={},w,U,Tb,Xb,Wb,Hb,Fb,Eb,gb,E=[],dc,u=-1,hc,q,I,H,L,kb,lb,F,J,hb,S,A,W,jb,Y=[],kc,mc,bc,s,rb,Bb,nb,eb,X,gc,Ab,Kb,ic,G,Yb=0,bb=0,Q=Number.MAX_VALUE,N=Number.MIN_VALUE,C,ib,db,T=1,Pb=0,mb,B,zb,yb,O,wb,xb,z,V,ob,y,Ib,Ub=b.bd(),Nb=Ub.gd,x=[],D,tb,ab,Zb,yc,Hc,ub;function Db(){return!T&&X&12}function Bc(){return Pb||!T&&X&3}function Cb(){return!B&&!Db()&&!y.Fc()}function Rc(){return!Bc()&&Cb()}function Cc(){return A||R}function Kc(){return Cc()&2?lb:kb}function Gc(a,c,d){b.O(a,c);b.Q(a,d)}function vc(c,b){var a=Cc(),d=(kb*b+Yb)*(a&1),e=(lb*b+Yb)*(a&2)/2;Gc(c,d,e)}function qc(b,f){if(B&&!(C&1)){var e=b,d;if(b<N){e=N;d=-1}if(b>Q){e=Q;d=1}if(d){var a=b-e;if(f){a=c.Se(a)*2/c.D;a=c.q(a*d,1.6)}else{a=c.q(a*d,.625);a=c.Dd(a*c.D/2)}b=e+a*d}}return b}function Mc(a){return qc(a,d)}function dd(a){return qc(a)}function vb(a,b){if(!(C&1)){var c=a-Q+(b||0),d=N-a+(b||0);if(c>0&&c>d)a=Q;else if(d>0)a=N}return a}function nc(a){return!(C&1)&&a-N<.0001}function lc(a){return!(C&1)&&Q-a<.0001}function pb(a){return!(C&1)&&(a-N<.0001||Q-a<.0001)}function Lb(c,a,d){!ub&&b.g(Y,function(b){b.fd(c,a,d)})}function sc(b){var a=b,d=pb(b);if(d)a=vb(a);else{b=v(b);a=b}a=c.ab(a);a=c.M(a,0);return a}function ad(a){x[u];dc=u;u=a;hc=x[u]}function Pc(){A=0;var b=z.n(),d=sc(b);Lb(d,b);if(pb(b)||b==c.ab(b)){if(s&2&&(eb>0&&d==q-1||eb<0&&!d))s=0;ad(d);a.k(j.Pf,u,dc)}}function cc(a,b){if(q&&(!b||!y.Fc())){y.B();y.zc(a,a)}}function qb(a){if(q){a=v(a);a=vb(a);cc(a)}else Lb(0,0)}function Uc(){var b=j.he||0,a=ib;j.he|=a;return W=a&~b}function Qc(){if(W){j.he&=~ib;W=0}}function Qb(c){var a=b.wc();b.cb(a,gb);c&&b.Ec(a,"hidden");return a}function v(b,a){a=a||q||1;return(b%a+a)%a}function uc(c,a,b){s&8&&(s=0);Vb(c,Ab,a,b)}function Mb(){b.g(Y,function(a){a.Wc(a.Mc.Lg<=T)})}function cd(c){if(!T&&(b.Id(c)||!b.Od(c,t))){T=1;Mb();if(!B){X&12&&Dc();x[u]&&x[u].dc()}a.k(j.Hg)}}function bd(){if(T){T=0;Mb();B||!(X&12)||Fc()}a.k(j.og)}function Jc(){b.cb(U,gb)}function Ob(b,a){Vb(b,a,d)}function Vb(g,h,l,p){if(q&&(!B||m.Pd)&&!Db()){var e=z.n(),a=g;if(l){a=e+g;if(C&2){if(nc(e)&&g<0)a=Q;if(lc(e)&&g>0)a=N}}if(!(C&1))if(p)a=v(a);else a=vb(a,.5);if(l&&!pb(a))a=c.H(a);var j=(a-e)%q;a=e+j;if(h==f)h=Ab;var b=c.qb(j),i=0;if(b){if(b<1)b=c.q(b,.5);if(b>1){var o=Kc(),n=(R&1?Fb:Eb)/o;b=c.u(b,n*1.5)}i=h*b}ub=d;y.B();ub=k;y.zc(e,a,i)}}function Nc(e,h,o){var l=this,i={i:2,v:1,z:2,j:1},m={i:"top",v:"right",z:"bottom",j:"left"},g,a,f,j,k={};l.R=e;l.gc=function(q,l,u){var p,s=q,r=l;if(!f){f=b.re(e);g=e.parentNode;j={yc:b.p(e,n.Fe,1),lb:b.p(e,n.Jb)};b.g(m,function(c,a){k[a]=b.p(e,"data-scale-"+c,1)});a=e;if(h){a=b.fc(g,d);b.cb(a,{i:0,j:0});b.W(a,e);b.W(g,a)}}if(o){p=c.M(q,l);if(h)if(u>=0&&u<1){var w=c.u(q,l);p=c.u(p/w,1/(1-u))*w}}else s=r=p=c.q(K<P?l:q,j.yc);var x=h?1.001:1,t=p*x;h&&(fc=t);b.ug(a,t);b.F(g,f.T*s);b.A(g,f.U*r);var v=b.Xd()&&b.ed()<9?t:1,y=(s-v)*f.T/2,z=(r-v)*f.U/2;b.O(a,y);b.Q(a,z);b.g(f,function(d,a){if(i[a]&&d){var e=(i[a]&1)*c.q(q,k[a])*d+(i[a]&2)*c.q(l,k[a])*d/2;b.Je[a](g,e)}});b.md(g,j.lb)}}function Yc(){var a=this;l.call(a,0,0,{ec:q});b.g(x,function(b){a.Uc(b);b.lc(G/F)})}function Xc(){var a=this,b=Ib.R;l.call(a,-1,2,{hb:h.pc,Ae:{Qb:vc},ec:q,Oc:Bb},b,{Qb:1},{Qb:-2})}function Zc(){var b=this;l.call(b,-1e8,2e8);b.wb=function(e,b){if(c.qb(b-e)>1e-5){var g=b,f=b;if(c.ab(b)!=b&&b>e&&(C&1||b>bb))f++;var h=sc(f);Lb(h,g,d);a.k(j.rg,v(g),v(e),b,e)}}}function Oc(o,n){var b=this,g,i,f,c,h;l.call(b,-1e8,2e8,{ie:100});b.Rc=function(){mb=d;a.k(j.pg,v(z.n()),V.n())};b.Tc=function(){mb=k;c=k;a.k(j.yg,v(z.n()),V.n());!B&&Pc()};b.wb=function(e,b){var a=b;if(c)a=h;else if(f){var d=b/f;a=m.ae(d)*(i-g)+g}a=Mc(a);V.E(a)};b.zc=function(a,c,h,e){B=k;f=h||1;g=a;i=c;ub=d;V.E(a);ub=k;b.E(0);b.kc(f,e)};b.qg=function(){c=d;c&&b.je(e,e,d)};b.Cg=function(a){h=a};V=new Zc;V.I(o);V.I(n)}function Lc(){var c=this,a=Qb();b.K(a,0);c.R=a;c.ac=function(){b.Kb(a);b.hc(a)}}function Wc(w,h){var g=this,ib=b.bb(g,o),y,G=0,P,t,F,B,K,n,E=[],V,N,R,i,r,A,S;l.call(g,-J,J+1,{ec:C&1?q:f,Oc:Bb});function L(){y&&y.m();Pb-=G;G=0;y=new cb.X(t,cb,{sb:b.p(t,"idle",gc),Tf:!s});y.Nc(p.ic,Y)}function Z(){y.Qc<cb.Qc&&L()}function Y(b,a){G+=a;Pb+=a;if(h==u)!G&&g.dc()}function Q(o,q,m){if(!N){N=d;if(n&&m){var e=m.width,c=m.height,l=e,i=c;if(e&&c&&B){if(B&3&&(!(B&4)||e>I||c>H)){var f=k,p=I/H*c/e;if(B&1)f=p>1;else if(B&2)f=p<1;l=f?e*H/c:I;i=f?H:c*I/e}b.F(n,l);b.A(n,i);b.Q(n,(H-i)/2);b.O(n,(I-l)/2)}b.Sb(n,"absolute")}a.k(j.Eg,h)}q.Ud(k);o&&o(g)}function X(f,b,c,e){if(e==A&&u==h&&s&&Cb()&&!g.Kc()){var a=v(f);D.pe(a,h,b,g,c,H/I);b.mg();ob.lc(a-ob.qc()-1);ob.E(a);cc(a,d)}}function bb(b){if(b==A&&u==h&&Cb()&&!g.Kc()){if(!i){var a=e;if(D)if(D.Lb==h)a=D.le();else D.ac();Z();i=new Vc(w,h,a,y);i.Lf(r)}!i.Fc()&&i.cd()}}function M(a,d,k){if(a==h){if(a!=d)x[d]&&x[d].fe();else!k&&i&&i.yf();r&&r.sc();A=b.Fb();g.Mb(b.Y(e,bb,A))}else{var j=c.u(h,a),f=c.M(h,a),n=c.u(f-j,j+q-f),l=J+m.jf-1;(!R||n<=l)&&g.Mb()}}function fb(){if(u==h&&i){i.B();r&&r.Mf();r&&r.gf();i.Td()}}function hb(){u==h&&i&&i.B()}function ab(b){!db&&a.k(j.ff,h,b)}g.Ud=function(a){if(S!=a){S=a;a&&b.W(w,K);!a&&b.Nb(K)}};g.Mb=function(f,c){c=c||g;if(E.length&&!N){c.Ud(d);if(!V){V=d;a.k(j.ef,h);b.g(E,function(a){if(!b.l(a,"src")){var c=b.N(a,"src")||b.N(a,"src2")||"";if(c){a.src=c;b.rb(a,b.l(a,"data-display"))}}})}b.xe(E,n,b.Y(e,Q,f,c))}else Q(f,c)};g.df=function(){if(Rc())if(q==1){g.fe();M(h,h)}else{var a;if(D)a=D.ne(q);if(a){A=b.Fb();var c=h+eb,d=x[v(c)];return d.Mb(b.Y(e,X,c,d,a,A),g)}else(C||!pb(z.n())||!pb(z.n()+eb))&&Ob(eb)}};g.dc=function(){M(h,h,d)};g.fe=function(){r&&r.Mf();r&&r.gf();g.Sd();i&&i.cf();i=e;L()};g.mg=function(){b.Kb(w)};g.Sd=function(){b.xb(w)};function T(a,i,c){if(b.l(a,ac))return;if(c){if(!t){t=a;F=Qb(d);b.vc(F,b.vc(t));b.vc(t,e);b.ub(F,t)}b.l(a,"data-events",b.jc(a));b.l(a,"data-display",b.rb(a));b.zg(a,b.N(a,"data-to"));b.Ag(a,b.N(a,"data-bf"));c>1&&b.bc(a,b.l(a,"data-ts"));b.Fg(a,b.p(a,"data-p"));b.Gg(a,b.N(a,"po"));if(a.tagName=="IMG"){E.push(a);if(!b.l(a,"src")){R=d;b.Kb(a)}}var f=b.Ie(a);if(f){var g=new Image;b.l(g,"src",f);E.push(g)}c&&b.K(a,(b.K(a)||0)+1)}var h=b.Ib(a);b.g(h,function(d){if(c<3&&!n)if(b.N(d,"u")=="image"){n=d;n.border=0;b.cb(n,gb);b.cb(a,gb);b.nb(n,"maxWidth","10000px");b.W(F,n)}T(d,i,c+1)})}g.Pc=function(c,b){var a=J-b;vc(P,a)};g.Lb=h;T(w,d,0);B=b.p(t,"data-fillmode",m.bf);var O=b.de(t,"thumb",d);if(O){b.fc(O);b.Kb(O)}b.xb(w);K=b.fc(U);b.K(K,1e3);g.a(w,"click",ab);L(d);P=w;g.a(a,203,M);g.a(a,28,hb);g.a(a,24,fb);g.m=function(){b.m(ib,y,i)}}function Vc(F,h,q,r){var c=this,E=b.bb(c,o),i=0,t=0,g,m,f,e,n,w,v,y=x[h];l.call(c,0,0);function A(){c.cd()}function C(a){v=a;c.B();c.cd()}function z(){}c.cd=function(){if(!B&&!mb&&!v&&u==h&&!c.Kc()){var k=c.n();if(!k)if(g&&!n){n=d;c.Td(d);a.k(j.af,h,t,i,t,g,e)}a.k(j.Jd,h,k,i,m,f,e);if(!Db()){var l;if(k==e)s&&b.cc(y.df,20);else{if(k==f)l=e;else if(!k)l=f;else l=c.be();(k!=f||!Bc())&&c.kc(l,A)}}}};c.yf=function(){f==e&&f==c.n()&&c.E(m)};c.cf=function(){D&&D.Lb==h&&D.ac();var b=c.n();b<e&&a.k(j.Jd,h,-b-1,i,m,f,e)};c.Td=function(a){q&&b.Ec(S,a&&q.Zc.Mg?"":"hidden")};c.Pc=function(c,b){if(n&&b>=g){n=k;y.Sd();D.ac();a.k(j.Ye,h,g,i,t,g,e)}a.k(j.Xe,h,b,i,m,f,e)};c.Lf=function(a){if(a&&!w){w=a;a.Nc($JssorPlayer$.De,C)}};c.a(r,p.Ac,z);q&&c.Uc(q);g=c.mb();c.Uc(r);m=g+r.nc;e=c.mb();f=s?g+r.Bc:e;c.m=function(){E.m();c.B()}}function ec(){Zb=mb;yc=y.be();ab=z.n();tb=dd(ab)}function Fc(){ec();if(B||Db()){y.B();a.k(j.We)}}function Dc(f){if(Cb()){var b=z.n(),a=tb,e=0;if(f&&c.qb(O)>=m.ge){a=b;e=xb}a=c.pb(a);a=vb(a+e,.5);var d=c.qb(a-b);if(d<1&&m.ae!=h.pc)d=c.q(d,.5);if((!db||!f)&&Zb)y.kc(yc);else if(b==a)hc.dc();else y.zc(b,a,d*Ab)}}function wc(a){!b.fb(b.Rb(a),f,n.Ad)&&b.mc(a)}function oc(b){zb=k;B=d;Fc();if(!Zb)A=0;a.k(j.Ve,v(ab),ab,b)}function Tc(a){tc(a,1)}function tc(c,d){O=0;wb=0;xb=0;Ec=fc;if(d){var h=c.touches[0];yb={x:h.clientX,y:h.clientY}}else yb=b.xc(c);var e=b.Rb(c),g=b.fb(e,"1",Ac);if((!g||g===t)&&!W&&(!d||c.touches.length==1)){jb=b.fb(e,f,n.Ad)||!ib||!Uc();a.a(i,d?"touchmove":"mousemove",Sb);zb=!jb&&b.fb(e,f,n.Lc);!zb&&!jb&&oc(c,d)}}function Sb(a){var e,f;a=b.tg(a);if(a.type!="mousemove")if(a.touches.length==1){f=a.touches[0];e={x:f.clientX,y:f.clientY}}else fb();else e=b.xc(a);if(e){var i=e.x-yb.x,j=e.y-yb.y,g=c.qb(i),h=c.qb(j);if(A||g>1.5||h>1.5)if(zb)oc(a,f);else{if(c.ab(tb)!=tb)A=A||R&W;if((i||j)&&!A){if(W==3)if(h>g)A=2;else A=1;else A=W;if(Nb&&A==1&&h>g*2.4)jb=d}var l=i,k=kb;if(A==2){l=j;k=lb}(O-wb)*nb<-1.5&&(xb=0);(O-wb)*nb>1.5&&(xb=-1);wb=O;O=l;Hc=tb-O*nb/k/Ec*m.Ne;if(O&&A&&!jb){b.mc(a);y.qg(d);y.Cg(Hc)}}}}function fb(){Qc();a.L(i,"mousemove",Sb);a.L(i,"touchmove",Sb);db=O;if(B){db&&s&8&&(s=0);y.B();B=k;var b=z.n();a.k(j.Te,v(b),b,v(ab),ab);X&12&&ec();Dc(d)}}function ed(a){var c=b.Rb(a),e=b.fb(c,"1",ac);if(t===e)if(db){b.lg(a);var d=b.fb(c,f,"data-jssor-button","A");d&&b.mc(a)}else s&4&&(s=0)}a.Hb=function(a){if(a==f)return s;if(a!=s){s=a;s&&x[u]&&x[u].dc()}};a.zb=function(){return K};a.Ab=function(){return P};a.Qe=function(b){if(b==f)return Rb||K;a.gc(b,b/K*P)};a.gc=function(c,a,d){b.F(t,c);b.A(t,a);zc=c/K;pc=a/P;b.g(Ic,function(a){a.gc(zc,pc,d)});if(!Rb){b.ub(S,w);b.Q(S,0);b.O(S,0)}Rb=c};a.te=nc;a.Le=lc;a.je=function(){a.Hb(s||1)};function Sc(){Ub.Nd&&b.nb(w,Ub.Nd,([e,"pan-y","pan-x","auto"])[ib]||"");a.a(t,"click",ed,d);a.a(t,"mouseleave",cd);a.a(t,"mouseenter",bd);a.a(t,"mousedown",tc);a.a(t,"touchstart",Tc);a.a(t,"dragstart",wc);a.a(t,"selectstart",wc);a.a(g,"mouseup",fb);a.a(i,"mouseup",fb);a.a(i,"touchend",fb);a.a(i,"touchcancel",fb);a.a(g,"blur",fb);m.Tb&&a.a(i,"keydown",function(c){var a=b.Md(c);if(a==37||a==39){s&8&&(s=0);uc(m.Tb*(a-38)*nb,d)}})}function jc(g){xc.Ld();E=[];x=[];var h=b.Ib(w),k=b.rd(["DIV","A","LI"]);b.g(h,function(a){var c=a;if(k[a.tagName.toUpperCase()]&&!b.N(a,"u")&&b.rb(a)!="none"){var c=Qb(d);b.cb(a,gb);b.ub(c,a);b.W(c,a);b.bc(c,"flat");b.bc(a,"preserve-3d");b.Kb(c);E.push(c)}b.K(c,(b.K(c)||0)+1)});q=E.length;if(q){var a=R&1?Fb:Eb;Jc();G=m.Re;if(G==f)G=(a-F+L)/2;hb=a/F;J=c.u(q,m.Gc||q,c.pb(hb));C=J<q?m.Pb:0;if(q*F-L<=a){hb=q-L/F;G=(a-F+L)/2;Yb=(a-F*q+L)/2}if(Gb){Kb=Gb.X;ic=!G&&J==1&&q>1&&Kb&&(!b.Xd()||b.ed()>=9)}if(!(C&1)){bb=G/F;if(bb>q-1){bb=q-1;G=bb*F}N=bb;Q=N+q-hb-L/F}ib=(J>1||G?R:-1)&m.rc;if(ic)D=new Kb(Ib,I,H,Gb,Nb,Gc);for(var e=0;e<E.length;e++){var i=E[e],j=new Wc(i,e);x.push(j)}ob=new Xc;z=new Yc;y=new Oc(z,ob);Sc()}b.g(Y,function(a){a.Vc(q,x);g&&a.Nc(r.dd,uc)})}a.s=function(c,g){a.R=t=b.Ob(c);K=b.F(t);P=b.A(t);m=b.gb({bf:0,jf:1,Tb:1,Yc:0,Hb:0,Pb:1,qd:d,Pd:d,Dg:1,od:3e3,ee:1,Yd:500,ae:h.ud,ge:20,Ne:1,Wd:0,Nf:1,sd:1,rc:1},g);m.qd=m.qd&&b.xg();if(m.sb!=f)m.od=m.sb;if(m.Qf!=f)m.Gc=m.Qf;if(m.Sf!=f)m.Re=m.Sf;s=m.Hb&63;!m.Nf;eb=m.Dg;X=m.ee;X&=Nb?10:5;gc=m.od;Ab=m.Yd;R=m.sd&3;rb=b.gg(b.l(t,"dir"))=="rtl";Bb=rb&&(R==1||m.rc&1);nb=Bb?-1:1;Gb=m.Jg;cb=b.gb({X:p},m.Uf);sb=m.cg;Z=m.eg;M=m.Og;var e=b.Ib(t);b.g(e,function(a,d){var c=b.N(a,"u");if(c=="loading")U=a;else{if(c=="slides"){w=a;b.nb(w,"margin",0);b.nb(w,"padding",0);b.bc(w,"flat")}if(c=="navigator")Tb=a;if(c=="arrowleft")Xb=a;if(c=="arrowright")Wb=a;if(c=="thumbnavigator")Hb=a;if(a.tagName!="STYLE"&&a.tagName!="SCRIPT")Ic[c||d]=new Nc(a,c=="slides",b.rd(["slides","thumbnavigator"])[c])}});U&&b.Nb(U);U=U||b.wc(i);Fb=b.F(w);Eb=b.A(w);I=m.Ee||Fb;H=m.Ce||Eb;gb={T:I,U:H,i:0,j:0,yd:"block",Qb:"absolute"};L=m.Wd;kb=I+L;lb=H+L;F=R&1?kb:lb;Ib=new Lc;b.l(t,ac,"1");b.K(w,b.K(w)||0);b.Sb(w,"absolute");S=b.fc(w,d);b.nb(S,"pointerEvents","none");b.ub(S,w);b.W(S,Ib.R);b.Ec(w,"hidden");if(Tb&&sb){sb.oc=rb;kc=new sb.X(Tb,sb,K,P);Y.push(kc)}if(Z&&Xb&&Wb){Z.oc=rb;Z.Pb=m.Pb;mc=new Z.X(Xb,Wb,Z,a);Y.push(mc)}if(Hb&&M){M.Yc=m.Yc;M.Tb=M.Tb||0;M.oc=rb;bc=new M.X(Hb,M,U);!M.Ig&&b.l(Hb,Ac,"1");Y.push(bc)}jc(d);a.gc(K,P);Mb();qb(v(m.Yc));b.nb(t,"visibility","visible")};a.m=function(){s=0;b.m(x,Y,xc);b.hc(t)};b.s(a)};j.ff=21;j.Ve=22;j.Te=23;j.pg=24;j.yg=25;j.ef=26;j.Eg=27;j.We=28;j.og=31;j.Hg=32;j.rg=202;j.Pf=203;j.af=206;j.Ye=207;j.Xe=208;j.Jd=209;jssor_1_slider_init=function(){var d=[[{b:0,d:600,y:-290,e:{y:27}}],[{b:0,d:1e3,y:185},{b:1e3,d:500,o:-1},{b:1500,d:500,o:1},{b:2e3,d:1500,r:360},{b:3500,d:1e3,rX:30},{b:4500,d:500,rX:-30},{b:5e3,d:1e3,rY:30},{b:6e3,d:500,rY:-30},{b:6500,d:500,sX:1},{b:7e3,d:500,sX:-1},{b:7500,d:500,sY:1},{b:8e3,d:500,sY:-1},{b:8500,d:500,kX:30},{b:9e3,d:500,kX:-30},{b:9500,d:500,kY:30},{b:1e4,d:500,kY:-30},{b:10500,d:500,c:{x:125,t:-125}},{b:11e3,d:500,c:{x:-125,t:125}}],[{b:0,d:600,x:535,e:{x:27}}],[{b:-1,d:1,o:-1},{b:0,d:600,o:1,e:{o:5}}],[{b:-1,d:1,c:{x:250,t:-250}},{b:0,d:800,c:{x:-250,t:250},e:{c:{x:7,t:7}}}],[{b:-1,d:1,o:-1},{b:0,d:600,x:-570,o:1,e:{x:6}}],[{b:-1,d:1,o:-1,r:-180},{b:0,d:800,o:1,r:180,e:{r:7}}],[{b:0,d:1e3,y:80,e:{y:24}},{b:1e3,d:1100,x:570,y:170,o:-1,r:30,sX:9,sY:9,e:{x:2,y:6,r:1,sX:5,sY:5}}],[{b:2e3,d:600,rY:30}],[{b:0,d:500,x:-105},{b:500,d:500,x:230},{b:1e3,d:500,y:-120},{b:1500,d:500,x:-70,y:120},{b:2600,d:500,y:-80},{b:3100,d:900,y:160,e:{y:24}}],[{b:0,d:1e3,o:-.4,rX:2,rY:1},{b:1e3,d:1e3,rY:1},{b:2e3,d:1e3,rX:-1},{b:3e3,d:1e3,rY:-1},{b:4e3,d:1e3,o:.4,rX:-1,rY:-1}]],e={Hb:1,sb:2e3,Uf:{X:s,ad:d,Rf:[[{d:2e3,b:1e3}]]},eg:{X:v},cg:{X:u}},c=new j("jssor_1",e),f=980;function a(){var d=c.R.parentNode,b=d.clientWidth;if(b){var e=m.min(f||b,b);c.Qe(e)}else g.setTimeout(a,30)}a();b.db(g,"load",a);b.db(g,"resize",a);b.db(g,"orientationchange",a)}}(window,document,Math,null,true,false)
</script>
<link href="//fonts.googleapis.com/css?family=Oswald:200,300,regular,500,600,700&subset=latin-ext,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />
<style>
.jssorl-009-spin img{animation-name:jssorl-009-spin;animation-duration:1.6s;animation-iteration-count:infinite;animation-timing-function:linear}@keyframes jssorl-009-spin{from{transform:rotate(0);}to{transform:rotate(360deg);}}.jssorb052 .i{position:absolute;cursor:pointer}.jssorb052 .i .b{fill:#000;fill-opacity:.3}.jssorb052 .i:hover .b{fill-opacity:.7}.jssorb052 .iav .b{fill-opacity:1}.jssorb052 .i.idn{opacity:.3}.jssora053{display:block;position:absolute;cursor:pointer}.jssora053 .a{fill:none;stroke:#fff;stroke-width:640;stroke-miterlimit:10}.jssora053:hover{opacity:.8}.jssora053.jssora053dn{opacity:.5}.jssora053.jssora053ds{opacity:.3;pointer-events:none}
</style>
<div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:980px;height:380px;overflow:hidden;visibility:hidden;">
<!-- Loading Screen -->
<div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
<img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="img/spin.svg" />
</div>
<div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:980px;height:380px;overflow:hidden;">
<div>
<img data-u="image" src="${img}/photos-2013-7-29-5-24-16.jpg"/>
<div data-u="caption" data-t="0" style="position:absolute;top:300px;left:30px;width:500px;height:40px;font-family:Oswald,sans-serif;font-size:32px;font-weight:200;line-height:1.2;text-align:center;background-color:rgba(255,188,5,0.8);">Mythology</div>
</div>
<div>
<img data-u="image" src="${img}/00081894-623x400.jpeg" />
<div data-ts="flat" data-p="1360" style="position:absolute;top:0px;left:0px;width:980px;height:380px;overflow:hidden;">
<div data-u="caption" data-t="1" style="position:absolute;top:140px;left:25px;width:500px;height:40px;font-family:Oswald,sans-serif;font-size:32px;font-weight:200;line-height:1.2;text-align:center;background-color:rgba(255,188,5,0.8);">Fiction</div>
</div>
</div>
<div>
<img data-u="image" src="${img}/biography-SRT.jpg" />
<div data-ts="flat" data-p="1360" style="position:absolute;top:0px;left:0px;width:980px;height:380px;">
<div data-u="caption" data-t="2" style="position:absolute;top:30px;left:-505px;width:500px;height:40px;font-family:Oswald,sans-serif;font-size:32px;font-weight:200;line-height:1.2;text-align:center;background-color:rgba(255,188,5,0.8);">Biographies</div>
</div>
</div>
<div>
<img data-u="image" src="${img}/slide3-720x440.jpg" />
<div data-u="caption" data-t="3" style="position:absolute;top:330px;left:230px;width:500px;height:40px;font-family:Oswald,sans-serif;font-size:32px;font-weight:200;line-height:1.2;text-align:center;background-color:rgba(255,188,5,0.8);">Studies</div>
</div>
<div>
<img data-u="image" src="${img}/XCM_Manual_1113671_Travel_Bookstore_Creatives_750x486_Books_Books-Homepage-Tile-3-Column-750x486-1-jpg.jpg"" />
<div data-u="caption" data-t="4" style="position:absolute;top:07px;left:230px;width:500px;height:40px;font-family:Oswald,sans-serif;font-size:32px;font-weight:200;line-height:1.2;text-align:center;background-color:rgba(255,188,5,0.8);">Travel</div>
</div>
</div>
<!-- Bullet Navigator -->
<div data-u="navigator" class="jssorb052" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
<div data-u="prototype" class="i" style="width:16px;height:16px;">
<svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
<circle class="b" cx="8000" cy="8000" r="5800"></circle>
</svg>
</div>
</div>
<!-- Arrow Navigator -->
<div data-u="arrowleft" class="jssora053" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
<svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
<polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
</svg>
</div>
<div data-u="arrowright" class="jssora053" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
<svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
<polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
</svg>
</div>
</div>
<script type="text/javascript">jssor_1_slider_init();</script>
</div>
<br>
<br>

<!-- <div class="container"> -->

<!--  <div class="panel-group" id="accordion"> -->
<!--     <div class="panel panel-default"> -->
<!--       <div class="panel-heading"> -->
<!--         <h4 class="panel-title"> -->
<!-- 		<div class="row"> -->
<!-- 		  <div class="col-sm-3"> -->
<%--           <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Best Seller  ${product.getProdYear()}   </a> --%>
<!-- 		  </div> -->
<!-- 		  <div class="col-sm-3"> -->
<!-- 		  <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">New Releases    </a> -->
<!-- 		  </div> -->
<!-- 		  <div class="col-sm-3"> -->
<!--           <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Fiction </a> -->
<!--           </div> -->
<!--           </div> -->
<!--         </h4> -->
<!--       </div> -->
	 
<!--       <div id="collapse1" class="panel-collapse collapse in"> -->
<!--         <div class="panel-body" style="background-color:white"> -->
<!--          <div class="row"> -->
<%--          <c1:forEach items="${products}" var="prod"> --%>
<!--          <div class="col-sm-3"> -->
<!--           <div class="panel panel-danger"> -->
<%--          <div class="panel-body" style="padding:00px"><img src="<c:url value="Resources/Images/${prod.getProdId()}.jpg"/>" style="width:100%;height:250px" alt="Image"></div> --%>
<%-- 		<div class="panel-footer">${prod.getProdName()} --%>
<!-- 		<div style="margin-left:20px;margin-bottom:20px;text-decoration:none">  -->
<%--         <a href="<c:url value="/Buy/${prod.getProdId()}"/>"> --%>
<!--         <button type="submit" class="btn btn-default">Buy</button> -->
<!--         </a> -->
<%--         <a href="<c:url value="/addtocart/${prod.getProdId()}"/>"> --%>
<!--         <button type="submit" class="btn btn-default">Add to Cart</button> -->
<!--         </a> -->
<!--         </div></div> -->
<!--         </div> -->
<!--         </div> -->
		
<!-- <!-- 		 <div style="margin-left:20px;margin-bottom:20px;text-decoration:none"> --> 
<%-- <%-- 		 <a href="<c:url value="/Buy/${prod.getProdId()}"/>"> --%> 
<!-- <!--         <button type="submit" class="btn btn-default" style="width:10%;height:50px">Buy</button> --> 
<!-- <!--         </a> --> 
<%-- <%--         <a href="<c:url value="/addtocart/${prod.getProdId()}"/>"> --%> 
<!-- <!--         <button type="submit" class="btn btn-default" style="margin-left:25px;width:10%;height:50px">Add to Cart</button> --> 
<!-- <!--         </a> --> 
<!-- <!--         </div> --> 
<!-- <!-- </div>		 --> 
<%-- </c1:forEach> --%>
<!-- <!--     <div class="col-sm-3"> --> 
<!-- <!--       <div class="panel panel-danger"> --> 
<!-- <!-- 	  <a href="#"> -->
<%-- <%--         <div class="panel-body" style="padding:00px"><img src="${img}/ramayana.jpg" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<!-- <!--         <div class="panel-footer">Ramayana</div> -->
<!-- <!--         </a> -->
<!-- <!--         <div style="margin-left:20px;margin-bottom:20px;text-decoration:none"> --> 
<!-- <!--         <button type="Buy" class="btn btn-default">Buy</button> --> 
<!-- <!--         <button type="Cart" class="btn btn-default">Add to Cart</button> -->
<!-- <!--         </div> --> 

<!-- <!--       </div> --> 
<!-- <!--     </div> --> 
<!-- <!--     <div class="col-sm-3" style="margin-left:85px">  -->
<!-- <!--       <div class="panel panel-danger"> -->
<!-- <!-- 	  <a href="#"> -->
<%-- <%--         <div class="panel-body" style="padding:00px"><img src="${img}/mahabharata.jpg" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<!-- <!--         <div class="panel-footer">Mahabharata</div> -->
<!-- <!--         </a> -->
<!-- <!--         <div style="margin-left:20px;margin-bottom:20px;text-decoration:none"> -->
<!-- <!--         <button type="Buy" class="btn btn-default">Buy</button> -->
<!-- <!--         <button type="Cart" class="btn btn-default">Add to Cart</button> -->
<!-- <!--         </div> -->
<!-- <!--       </div> -->
<!-- <!--     </div> -->
<!-- <!--     <div class="col-sm-3" style="margin-left:85px">  -->
<!-- <!--       <div class="panel panel-danger"> -->
<!-- <!-- 	  <a href="#"> -->
<%-- <%--         <div class="panel-body" style="padding:00px"><img src="${img}/Bhagvad gita.jpg" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<!-- <!--         <div class="panel-footer">Bhagavad Gita</div> -->
<!-- <!--         </a> -->
<!-- <!--         <div style="margin-left:20px;margin-bottom:20px;text-decoration:none"> -->
<!-- <!--         <button type="Buy" class="btn btn-default">Buy</button> -->
<!-- <!--         <button type="Cart" class="btn btn-default">Add to Cart</button> -->
<!-- <!--         </div> --> 
<!-- <!--       </div> -->
<!-- <!--     </div> -->
<!--   </div> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
<!--     <div class="panel panel-default"> -->
     
<!--       <div id="collapse2" class="panel-collapse collapse"> -->
<!--         <div class="panel-body" style="background-color:white"> -->
        
<!--         <div class="row"> -->
        
<%-- <%--       <h1>  ${prod.getProdYear()}</h1> --%>

<%-- <%--        <c1:if test="${products.getProdYear()}>2015" var="prod"> --%>
<!--     <div class="col-sm-3"> -->
<!--       <div class="panel panel-danger"> -->
	 
<%--         <div class="panel-body" style="padding:00px"><img src="<c:url value="Resources/Images/${prod.getProdId()}.jpg"/>" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<%--         <div class="panel-footer">${prod.getProdName()}</div> --%>
   
<!--         <div style="margin-left:20px;margin-bottom:20px;text-decoration:none"> -->
<%--         <a href="<c:url value="/Buy/${prod.getProdId()}"/>"> --%>
<!--         <button type="Submit" class="btn btn-default">Buy</button> -->
<!--         </a> -->
<%--         <a href="<c:url value="/addtocart/${prod.getProdId()}"/>"> --%>
<!--         <button type="Submit" class="btn btn-default">Add to Cart</button> -->
<!--         </a> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
    
<%-- <%--     </c1:if> --%>
<!-- <!--     <div class="col-sm-3" style="margin-left:85px">  -->
<!-- <!--       <div class="panel panel-danger"> -->
<!-- <!-- 	  <a href="#"> -->
<%-- <%--         <div class="panel-body" style="padding:00px"><img src="${img}/newreleases-wisdomofwolves.png" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<!-- <!--         <div class="panel-footer">The Wisdom of Wolves</div> -->
<!-- <!--         </a> -->
<!-- <!--         <div style="margin-left:20px;margin-bottom:20px;text-decoration:none"> -->
<!-- <!--         <button type="Buy" class="btn btn-default">Buy</button> -->
<!-- <!--         <button type="Cart" class="btn btn-default">Add to Cart</button> -->
<!-- <!--         </div> --> 
<!-- <!--       </div> --> 
<!-- <!--     </div> -->
<!-- <!--     <div class="col-sm-3" style="margin-left:85px">  -->
<!-- <!--       <div class="panel panel-danger"> -->
<!-- <!-- 	  <a href="#"> -->
<%-- <%--         <div class="panel-body" style="padding:00px"><img src="${img}/newreleases-annotatedbigsleep.jpg" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<!-- <!--         <div class="panel-footer">The Annotated Big Sleep</div> -->
<!-- <!--         </a> -->
<!-- <!--         <div style="margin-left:20px;margin-bottom:20px;text-decoration:none"> -->
<!-- <!--         <button type="Buy" class="btn btn-default">Buy</button> -->
<!-- <!--         <button type="Cart" class="btn btn-default">Add to Cart</button> -->
<!-- <!--         </div> -->
<!-- <!--       </div> -->
<!-- <!--     </div> -->
<!--   </div> -->
        
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
<!--     <div class="panel panel-default"> -->
      
<!--       <div id="collapse3" class="panel-collapse collapse"> -->
<!--         <div class="panel-body" style="background-color:#1976D2"> -->
        
<!--         <div class="row"> -->
        
<%-- <%--        <c1:if test="${products.getCategory().getCatName()}"=='Fiction' var="prod"> --%>
<!--          <div class="col-sm-3"> -->
<!--           <div class="panel panel-danger"> -->
<%--          <div class="panel-body" style="padding:00px"><img src="<c:url value="Resources/Images/${prod.getProdId()}.jpg"/>" style="width:100%;height:250px" alt="Image"></div> --%>
<%-- 		<div class="panel-footer">${prod.getProdName()} --%>
<!-- 		<div style="margin-left:20px;margin-bottom:20px;text-decoration:none">  -->
<%--         <a href="<c:url value="/Buy/${prod.getProdId()}"/>"> --%>
<!--         <button type="submit" class="btn btn-default">Buy</button> -->
<!--         </a> -->
<%--         <a href="<c:url value="/addtocart/${prod.getProdId()}"/>"> --%>
<!--         <button type="submit" class="btn btn-default">Add to Cart</button> -->
<!--         </a> -->
<!--         </div></div> -->
<!--         </div> -->
<!--         </div> -->
<%-- <%-- </c1:if>         --%>
        
<!-- <!--     <div class="col-sm-3"> -->
<!-- <!--       <div class="panel panel-danger"> -->
<!-- <!-- 	  <a href="#"> -->
<%-- <%--         <div class="panel-body" style="padding:00px"><img src="${img}/fiction-inferno.jpg" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<!-- <!--         <div class="panel-footer">Inferno</div> -->
<!-- <!--         </a> -->
<!-- <!--         <div style="margin-left:20px;margin-bottom:20px;text-decoration:none"> -->
<!-- <!--         <button type="Buy" class="btn btn-default">Buy</button> -->
<!-- <!--         <button type="Cart" class="btn btn-default">Add to Cart</button> -->
<!-- <!--         </div> -->
<!-- <!--       </div> -->
<!-- <!--     </div> -->
<!-- <!--     <div class="col-sm-3" style="margin-left:85px">  -->
<!-- <!--       <div class="panel panel-danger"> -->
<!-- <!-- 	  <a href="#"> -->
<%-- <%--         <div class="panel-body" style="padding:00px"><img src="${img}/fiction-sinsofthefather.jpg" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<!-- <!--         <div class="panel-footer">The Sins of the Father</div> -->
<!-- <!--         </a> -->
<!-- <!--         <div style="margin-left:20px;margin-bottom:20px;text-decoration:none"> -->
<!-- <!--         <button type="Buy" class="btn btn-default">Buy</button> -->
<!-- <!--         <button type="Cart" class="btn btn-default">Add to Cart</button> -->
<!-- <!--         </div> -->
<!-- <!--       </div> -->
<!-- <!--     </div> -->
<!-- <!--     <div class="col-sm-3" style="margin-left:85px">  -->
<!-- <!--       <div class="panel panel-danger"> -->
<!-- <!-- 	  <a href="#"> -->
<%-- <%--         <div class="panel-body" style="padding:00px"><img src="${img}/fiction-harrypotterdeadlyhallows.jpg" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<!-- <!--         <div class="panel-footer">Harry Potter and the Deadly Hallows</div> -->
<!-- <!--         </a> -->
<!-- <!--         <div style="margin-left:20px;margin-bottom:20px;text-decoration:none"> -->
<!-- <!--         <button type="Buy" class="btn btn-default">Buy</button> -->
<!-- <!--         <button type="Cart" class="btn btn-default">Add to Cart</button> -->
<!-- <!--         </div> -->
		
<!-- <!--       </div> -->
<!-- <!--     </div> -->
<!--   </div> -->
        
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div>  -->
<!--   </div>  -->


<div class="container">    
  <div class="row">
  <c1:forEach items="${categories}" var="cat">
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-body" style="padding:00px"><img src="<c:url value="Resources/Images/${cat.getCatId()}.jpg"/>" class="img-responsive" style="width:100%;height:250px" alt="Image"/></div>    
        <div class="panel-footer"><a href="<c:url value="/CategoryGallery/${cat.getCatId()}"/>">${cat.getCatName()}</a></div>		
      </div>
    </div>
    </c1:forEach>
<!--     <div class="col-sm-3" style="margin-left:85px">  -->
<!--       <div class="panel panel-danger"> -->
<%--         <div class="panel-body" style="padding:00px"><img src="${img}/non-fiction titanic.jpg" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<%--         <div class="panel-footer"><a href="<c:url value="/CategoryGallery/NonFiction"/>">Non-Fiction</a></div>	 --%>
<!--       </div> -->
<!--     </div> -->
<!--     <div class="col-sm-3" style="margin-left:85px">  -->
<!--       <div class="panel panel-danger"> -->
<%--         <div class="panel-body" style="padding:00px"><img src="${img}/biography-abdul kalam.jpg" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<%--         <div class="panel-footer"><a href="<c:url value="/CategoryGallery/Biographies"/>">Biographies</a></div> --%>
<!--       </div> -->
<!--     </div> -->
  </div>
</div><br>

<!-- <div class="container">     -->
<!--   <div class="row"> -->
<!--     <div class="col-sm-3"> -->
<!--       <div class="panel panel-danger"> -->
<%--         <div class="panel-body" style="padding:00px"><img src="${img}/dictionary-kannada.jpg" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<%--         <div class="panel-footer"><a href="<c:url value="/CategoryGallery/Dictionaries"/>">Dictionaries</a></div> --%>
<!--       </div> -->
<!--     </div> -->
<!--     <div class="col-sm-3" style="margin-left:85px">  -->
<!--       <div class="panel panel-danger"> -->
<%--         <div class="panel-body" style="padding:00px"><img src="${img}/t&e- devops.jpg" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<%--         <div class="panel-footer"><a href="<c:url value="/CategoryGallery/Engineering"/>">Engineering</a></div> --%>
<!--       </div> -->
<!--     </div> -->
<!--     <div class="col-sm-3"  style="margin-left:85px">  -->
<!--       <div class="panel panel-danger"> -->
<%--         <div class="panel-body" style="padding:00px"><img src="${img}/travel-India.jpeg" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<%--         <div class="panel-footer"><a href="<c:url value="/CategoryGallery/Travel"/>">Travel</a></div> --%>
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!-- </div><br><br> -->









<!-- <div class="container" style="margin-bottom:150px;margin-top:75px;"> -->
<%-- <c1:forEach items="${categories}" var="cat"> --%>
<!-- <div class="row"> -->
<%-- <div class="col-sm-4"><a href="<c:url value="/CategoryGallery/${cat.getCatId()}"/>"> --%>
<%-- <img src="<c:url value="Resources/Images/${cat.getCatId()}.jpg"/>" style="width:100%;height:250px" alt="Image"> --%>
<%-- 		<h3>${cat.getCatName()}</h3> --%>
<!-- 		</a> -->
<!-- </div> -->
<!-- </div>		 -->
<%-- </c1:forEach> --%>
<!-- </div> -->


















<!-- <div class="container">     -->
<!--   <div class="row"> -->
<!--     <div class="col-sm-3"> -->
<%--     <c1:forEach items="${products}" var="prod"> --%>
<!--       <div class="panel panel-danger"> -->
<!-- 	  <a href="#"> -->
<%--         <div class="panel-body" style="padding:00px"><img src="<c:url value="Resources/Images/${prod.getProdId()}.jpg"/>" class="img-responsive" style="width:100%;height:250px" alt="Image"></div> --%>
<%--         <div class="panel-footer">${prod.getProdName()}</div> --%>
<!-- 		</a> -->
<!--       </div> -->
<%--       </c1:forEach> --%>
<!--     </div>  -->
<!--   </div> -->
<!-- </div> -->
    


<div class="container"  style="background-color:white">
  <h5 style="color:black"><b>Featured Authors</b></h5>
  <div class="row">
  <div class="col-sm-2"><a href="#" style="color:black"><div style="padding-left:50px"><img src="${img}/dan brown.jpg" class="img-responsive img-circle" alt="Dan Browm" style="height:150px"><b>Dan Brown</b></div></a></div>
  <div class="col-sm-2"><a href="#" style="color:black"><div style="padding-left:50px"><img src="${img}/jeffrey Archer.jpg" class="img-responsive img-circle" alt="Jeffrey Archer" style="height:150px"><b>Jeffrey Archer</b></div></a></div>
  <div class="col-sm-2"><a href="#" style="color:black"><div style="padding-left:50px"><img src="${img}/JKRoling.jpg" class="img-responsive img-circle" alt="J.K Rolwing" style="height:150px"><b>J.K Rowling</b></div></a></div>
  <div class="col-sm-2"><a href="#" style="color:black"><div style="padding-left:50px"><img src="${img}/amish-tripathi-author.jpg" class="img-responsive img-circle" alt="Amish Tripathi" style="height:150px;width:95px"><b>Amish Tripathi</b></div></a></div>
  <div class="col-sm-2"><a href="#" style="color:black"><div style="padding-left:50px"><img src="${img}/amish-tripathi-author.jpg" class="img-responsive img-circle" alt="Amish Tripathi" style="height:150px;width:95px"><b>Amish Tripathi</b></div></a></div>
  </div>
   
</div>

<div class="container" style="margin-top:50px;margin-bottom:25px;background-color:white">
<div class="row">
<div class="col-sm-4">
      <div  style="padding-right:00px">
        <div class="embed-responsive embed-responsive-4by3">
        <iframe src="https://www.youtube.com/embed/eB9q1_um3ds" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
      </div>
      </div>
  <div class="col-sm-7">
  <p><b>"A reader lives a thousand lives before he dies, said Jojen. The man who never reads lives only one."</b><span style="padding-left:25px">-George R.R. Martin</span></p>
  <br>
  <p><b>"No entertainment is so cheap as reading, nor any pleasure so lasting."</b><span style="padding-left:25px">-Mary Wortley Montagu</span></p>
  <br>
  <p><b>"The more that you read, the more things you will know. The more that you learn, the more places you'll go."</b></p>
  
  </div>
    
</div>

</div>


</body>
</html>
<%@include file="Footer.jsp" %>