(function () {
    var imgList = ['../image/p1.png','../image/p2.png','../image/p3.png','../image/p4.png'];

    var oVal = null;
    //请求数据
    $('.btn').click(function () {
        $('.result').css({ display: 'block' })
        oVal = $('.search').val();//获取输入框的数值
        if (oVal) {
            $.ajax({
                url: '../mock/searchData.json',
                type: 'GET',
                success: function (data) {
                    bindEvent(data);
                },
                error: function () {
                    console.log('error'); //请求不到的时候
                }
            })
        }
    })
    //点击提交
    function bindEvent(data) {
        var Mydata = data;
        var MyOk;   // 把获得到的数据保存出来
        Mydata.forEach(function (ele) {
            return ele.sName == oVal ? MyOk = ele : '';
        })
        // 一共两种可能,要么拿到数据,要么没有数据,不存在第三种可能,所以可以直接判断有数据或者无数据
        if (MyOk) {
            console.log('拿到数据');
            render(MyOk.sName, MyOk.ID);
        } else {
            console.log('没有数据');
            oNo()
        }
    }
    //渲染搜索到的数据
    function render(sName, ID) {
        $('.result').empty();
        var oDiv = $('.result');
        $('<p class="name">' + sName + '</p>').appendTo(oDiv);
        $('<p class="belong">属于</p>').appendTo(oDiv);
        //把对应的图片插进去
        $('<div class="pic"><img src="' + imgList[ID - 1] + '" style="width:100%;height:100%" alt=""></div>').appendTo(oDiv);
        $(oDiv).appendTo($('.content'));
    }
    function oNo(sName, ID) {
        $('.result').empty();
        var oDiv = $('.result');
        $('<p class="no">目前还没有录入哦~</p>').appendTo(oDiv);
        $(oDiv).appendTo($('.content'));
    }
    // 清除渲染框
    $('.result').on('touchstart', function () {
        $('.result').hide();
    })
}());
