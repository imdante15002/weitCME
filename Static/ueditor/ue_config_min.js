window.UEDITOR_HOME_URL='/Static/ueditor/';
    window.onload=function(){
        window.UEDITOR_CONFIG.initialFrameWidth=690; 
        window.UEDITOR_CONFIG.initialFrameHeight=120;
        window.UEDITOR_CONFIG.imageUrl="/Upload/upload";
        UE.getEditor('Content',{
            toolbars:[['emotion']]
        });
    }