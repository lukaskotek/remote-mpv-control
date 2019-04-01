<!DOCTYPE html>
<html lang="cs-cz">
<head>
    <meta charset='UTF-8' />
    <meta name="author" content="Lukas Kotek" /> 
    <meta content="initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" name="viewport" />
    <meta name="mobile-web-app-capable" content="yes">
    <title>Media Remote Control</title>
    <link rel='stylesheet' href='/views/css/default.css' />     
</head>
<body>

<h1>Přehrává se:</h1>
<h2><em>{{playing}}</em></h2>

<div class="cntrl_items">
<a class="control" href="/volume/down">Zvuk &minus;</a>
<a class="control" href="/volume/mute">Ztlumit</a>
<a class="control" href="/volume/up">Zvuk &#43;</a>
</div>

<div class="cntrl_items">
<a class="control" href="/window/screen">Okno</a>
<a class="control" href="/control/prev">&nbsp;&lt;&lt;&nbsp;</a>
<a class="control" href="/control/pause">&nbsp;|| &gt;&nbsp;</a>
<a class="control" href="/control/next">&nbsp;&gt;&gt;&nbsp;</a>
</div>

<div class="cntrl_items">
<a target="_blank" class="control" href="http://www.tvprogram.cz/">TV Program</a>
<a id ="danger" class="control" onclick="return confirm('Určitě chcete centrum vypnout?')" href="/poweroff">Vypnout</a>
</div>

<div class="cntrl_items">
<a target="_blank" class="control" href="/playeroff">Zavřít</a>
<a target="_blank" class="control" href="/sleep">Uspat</a>
</div>

<h1>Kategorie:</h1>

<ul>
    <li><a href="/start/CT">ČT a zpravodajské</a></li>
    <li><a href="/start/Prima">Prima kanály</a></li>
    <li><a href="/start/Nova">Nova kanály</a></li>
    <li><a href="/start">Zobrazit všechny kanály</a></li>    
</ul>

<h1>Programy:</h1>

<ul>
  % for item in playlist:
    <li><a href="/play/{{item}}">{{playlist[item]}}</a></li>
  % end
</ul>

</body>

<div class="cntrl_items">
<a class="control" href="/ostrava">Ostrava režim</a>
</div>

</html>