(function() {
    var NYLM, claerResizeScroll, conf, lol;

    conf = {
        cursorcolor: "#696c75",
        cursorwidth: "4px",
        cursorborder: "none"
    };

    lol = {
        cursorcolor: "#cdd2d6",
        cursorwidth: "4px",
        cursorborder: "none"
    };

    NYLM = ["Уходи дверь закрой", "У меня теперь другой", "Все для тебя", "Мне не нужен больше твой номер в книжке записной", "Владимирский централ, ветер сука", "Ты ушол, а я текла", "Ты пришол в красный день календаря", "бла бла", ")", "умри", "ой все.", "ой все.", "ой все.", "Ты говоришь ТОЧНЕЕ пишешьСя сам с собой"];


    claerResizeScroll = function() {
        $("#texxt").val("");
        $(".messages").getNiceScroll(0).resize();
        return $(".messages").getNiceScroll(0).doScrollTop(999999, 999);
    };

    $(document).ready(function() {
        $(".list-friends").niceScroll(conf);
        $(".messages").niceScroll(lol);
        $("#texxt").keypress(function(message) {
            if (message.keyCode === 13) {
                return false;
            }
        });
        return $(".send").click(function() {
        });
    });

}).call(this);
