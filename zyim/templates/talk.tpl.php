<?php
defined('IN_ADMIN') or exit('No permission resources.');
include $this->admin_tpl('header', 'admin');
?>
<link rel="stylesheet" type="text/css" href="<?php echo APP_PATH?>statics/zymessagesys/layui/css/layui.css">
<script src="<?php echo APP_PATH?>statics/zymessagesys/layui/layui.js"></script>
<script type="text/javascript" src="<?php echo APP_PATH?>statics/zm/layer/layer.js"></script>
<style type="text/css">

    body,p{margin:0px; padding:0px; font-size:14px; color:#333; font-family:Arial, Helvetica, sans-serif;}
    .rin{width:98%; margin:0px auto;padding: 0.2rem;}

    #us p{padding:3px 5px; color:#08C; line-height:20px; height:20px; cursor:pointer; overflow:hidden; white-space:nowrap; text-overflow:ellipsis;}
    #us p:hover,#us p:active,#us p.ck{background-color:#069; color:#FFF;}
    #us p.my:hover,#us p.my:active,#us p.my{color:#333;background-color:transparent;}
    button{float:right; width:80px; height:35px; font-size:18px;}
    input{width:100%; height:30px; padding:2px; line-height:20px; outline:none; border:solid 1px #CCC;}
    .rin p{margin-right:160px;}
    .rin span{float:right; padding:6px 5px 0px 5px; position:relative;}
    .rin span img{margin:0px 3px; cursor:pointer;}
    .rin span form{position:absolute; width:25px; height:25px; overflow:hidden; opacity:0; top:5px; right:5px;}
    .rin span input{width:180px; height:25px; margin-left:-160px; cursor:pointer}

    /*#ct p{padding:5px; line-height:20px;}*/
    /*#ct a{color:#069; cursor:pointer;}*/
    /*#ct span{color:#999; margin-right:10px;}*/


    .user-logo img {
        width: 40px;
        height: 40px;
        border-radius: 100%;
    }
    .user-logo {
        float: left;
        width: 40px;
        height: 40px;
        border-radius: 50%;
        /* border: 1px solid #e7e7e7; */
    }
    .layim-chat-main {
        border:1px #ccc solid;
        height: 40rem;
        padding: 15px 15px 5px;
        overflow-x: hidden;
        overflow-y: auto;
    }
    .layui-box, .layui-box * {
        box-sizing: content-box;
    }
    .layim-chat-user {
        position: absolute;
        left: 3px;
    }
    .layim-chat-text, .layim-chat-user {
        display: inline-block;
        *display: inline;
        *zoom: 1;
        vertical-align: top;
        font-size: 14px;
    }
    .layim-chat-main ul li {
        position: relative;
        font-size: 0;
        margin-bottom: 10px;
        padding-left: 60px;
        min-height: 68px;
    }
    .layim-chat-user p {
        position: absolute;
        left: 60px;
        top: -2px;
        width: 500px;
        line-height: 24px;
        font-size: 12px;
        white-space: nowrap;
        color: #999;
        text-align: left;
        font-style: normal;
    }
    .layim-chat-user p i {
        padding-left: 15px;
        font-style: normal;
    }
    .layim-chat-text {
        position: relative;
        line-height: 22px;
        margin-top: 25px;
        padding: 8px 15px;
        background-color: #e2e2e2;
        border-radius: 3px;
        color: #333;
        word-break: break-all;
        max-width: 462px\9;
    }
    .layim-chat-text, .layim-chat-user {
        display: inline-block;
        *display: inline;
        *zoom: 1;
        vertical-align: top;
        font-size: 14px;
    }
    .layui-box, .layui-box * {
        box-sizing: content-box;
    }
    .layim-chat-text::after {
        content: '';
        position: absolute;
        left: -10px;
        top: 13px;
        width: 0;
        height: 0;
        border-style: solid dashed dashed;
        border-color: #e2e2e2 transparent transparent;
        overflow: hidden;
        border-width: 10px;
    }
    .layim-chat-main ul .layim-chat-mine {
        text-align: right;
        padding-left: 0;
        padding-right: 60px;
    }
    .layim-chat-mine .layim-chat-user {
        left: auto;
        right: 3px;
    }
    .layim-chat-mine .layim-chat-user p {
        left: auto;
        right: 60px;
        text-align: right;
    }
    .layim-chat-mine .layim-chat-user p i {
        padding-left: 0;
        padding-right: 15px;
    }
    .layim-chat-mine .layim-chat-text {
        margin-left: 0;
        text-align: left;
        background-color: #5FB878;
        color: #fff;
    }
    .layim-chat-mine .layim-chat-text::after {
        left: auto;
        right: -10px;
        border-top-color: #5FB878;
    }
</style>

<div class="layim-chat-main" style="overflow:auto;">
    <ul id="ct"></ul>
</div>
<!--<a href="javascript:;" class="qp" onClick="this.parentNode.children[1].innerHTML=''">清屏</a>-->
<div style='height:1.2rem;'></div>
<div class="index-footer rin">
    <button id="sd">发送</button>
    <span><img src="http://www.yxsss.com/ui/sk/t.png" title="表情" id="imgbq"><img src="http://www.yxsss.com/ui/sk/e.png" title="上传图片"><form><input type="file" title="上传图片" id="upimg"></form></span>
    <p><input id="nrong"></p>
    <div class="clear"></div>
</div>
<script>
    if(typeof(WebSocket)=='undefined'){
        alert('你的浏览器不支持 WebSocket ，推荐使用Google Chrome 或者 Mozilla Firefox');
    }
</script>
</script>
<script src="<?php echo APP_PATH?>statics/zm/js/a.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo APP_PATH?>statics/public/js/leftTime.min.js"></script>
<script src="<?php echo APP_PATH?>statics/zm/js/ajax.js"></script>
<script src="<?php echo APP_PATH?>statics/zm/js/time.js"></script>
    <script>
        (function(){


            var key='all',mkey;
            var count=-1;
            var userid='-1';
            var ws_url="ws://<?php echo SERVER_IP; ?>:2000";
            var data={};
            data.uid=userid;
            data.type='server';
            data.is_first='first_server';
            data.sendtouid="<?php print_r($info['talk_from_uid']) ?>";
            data.from_name="<?php print_r($info['talk_from_name']) ?>";
            data.to_name="<?php print_r($info['talk_to_name']) ?>";
            data.from_img="<?php print_r($info['talk_from_img']) ?>";
            data.to_img="<?php print_r($info['talk_to_img']) ?>";
            if( data.sendtouid==null){
                layer.msg('聊天对象不存在');
            }else{
                layer.msg('ajax');
                aj.post('index.php?m=zyim&c=api&a=get_records', {'type': '2','userid':data.sendtouid}, function (res) {
                    if (res.status == 'error') {
                        layer.msg(res.message);
                        if(res.code==-103)
                            setTimeout("javascript:location.href='{APP_PATH}index.php?m=zymember&c=index&a=login'", 1000);
                    } else {
                        console.log(res.data);
                        for (var i in res.data) {
                            if(res.data[i].id!=null) {
                                if (res.data[i].from_user == userid) {
                                    $('#ct').append('<li class="layim-chat-mine"><div class="layim-chat-user"><img src="'+data.to_img+'" class="user-logo"><p><i>' + res.data[i].send_time + '</i>'+data.to_name+'</p></div><div class="layim-chat-text">' + res.data[i].post_messages + '</div></li>');
                                } else {
                                    $('#ct').append('<li><div class="layim-chat-user"><img src="'+data.from_img+'" class="user-logo"><p>'+data.from_name+'<i>' + res.data[i].send_time + '</i></p></div><div class="layim-chat-text">' + res.data[i].post_messages + '</div></li>');
                                }
                            }
                        }
                        $(".layim-chat-main").scrollTop($(".layim-chat-main")[0].scrollHeight);
                    }
                });
            }
            ws = new WebSocket(ws_url);//tcp://0.0.0.0:8282 ws://127.0.0.1:2000
            ws.onopen = function() {
                console.log("连接成功");
                data=JSON.stringify(data);
                ws.send(data);
                data=JSON.parse(data);
                data.is_first='';
                console.log("给服务端发送一个字符串:"+data);
            };
            ws.onmessage = function(e) {
                var msg= JSON.parse(e.data);
                if(msg.code==200) {
                    if(msg.message=='onMessage') {
                        if((msg.data.from==data.sendtouid&&msg.data.to==data.uid)||(msg.data.to==data.sendtouid&&msg.data.from==data.uid)) {
                            console.log(msg.data);
                            var time= date('Y-m-d H:i:s',new Date()/1000);
                            $('#ct').append('<li><div class="layim-chat-user"><img src="'+data.from_img+'" class="user-logo"><p>'+data.from_name+'<i>'+time+'</i></p></div><div class="layim-chat-text">' + msg.data.msg + '</div></li>');
                            $(".layim-chat-main").scrollTop($(".layim-chat-main")[0].scrollHeight);
                        }else{
                            console.log('不是和你聊');
                        }
                    }else{
                        console.log(msg);
                    }
                } else{
                    layer.msg('网络不给力');
                }
            };
            A.$('sd').onclick=function(){
                var da=A.$('nrong').value.trim();
                if(da==''){
                    alert('内容不能为空');
                    return false;
                }
                A.$('nrong').value='';
                data.message=(da);
                data=JSON.stringify(data);
                ws.send(data);
                data=JSON.parse(data);
                var time= date('Y-m-d H:i:s',new Date()/1000);
                $('#ct').append('<li class="layim-chat-mine"><div class="layim-chat-user"><img src="'+data.to_img+'" class="user-logo"><p><i>'+time+'</i>'+data.to_name+'</p></div><div class="layim-chat-text">'+(da)+'</div></li>');
                $(".layim-chat-main").scrollTop($(".layim-chat-main")[0].scrollHeight);
            }
            A.$('nrong').onkeydown=function(e){
                var e=e||event;
                if(e.keyCode==13){
                    A.$('sd').onclick();
                }
            }
            function esc(da){
                da=da.replace(/</g,'<').replace(/>/g,'>').replace(/\"/g,'"');
                return encodeURIComponent(da);
            }
        })();
    </script>


</body>
</html>
