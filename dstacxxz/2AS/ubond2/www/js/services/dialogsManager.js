angular.module('ufind1.services.dialogs', [])
.factory("dialogsManager", function($q,$http,$compile,$timeout,$rootScope) {


    //消息模板
    var megTmp="<div class='nspop_megcontainer myactive' >" +
        "<div class='main'>" +
        "<div class='textContent'>{{content}}</div>" +
        "</div>" +
        "</div>";

    var dialog={
        megs:[],
        showMessage:showMessage,
        alert:alert,  //未实现
        confirm:confirm //未实现
    };

    //消息展示
    function showMessage(content,options) {
        //移除已存在的消息展示
        angular.forEach(dialog.megs, function (item,index) {
            item.remove();
        });
        createMeg(content,options);
    };

    //消息创建
    function createMeg(content,options){
        options = angular.extend({
            bottom: 49, //继续下边距离
            scope: $rootScope.$new(), //创建一个继承自根的作用域
            timeout: 3000  //多少秒后自动隐藏
        }, options);
        //消息文本
        options.scope.content = content;
        var megPromise = $q.when(compileTmp({template: megTmp, scope: options.scope, appendTo: angular.element(document.body)}))
        megPromise.then(function (result) {
            dialog.megs.push(result);
            result.css("bottom", options.bottom + "px");
            $timeout(function () {
                result.remove(); //移除消息展示
                options.scope.$destroy();  //摧毁作用域
            },options.timeout);
        })
    }

    //编译模板
    function compileTmp(options){
        var tem=  $compile(options.template)(options.scope);
        if(options.appendTo){
            options.appendTo.append(tem);
        }
        return tem;
    };
    return dialog;

});