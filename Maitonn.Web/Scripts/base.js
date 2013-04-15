(function() {

  var Cookies = {};

  Cookies.Set = function(name, value) {
    var argv = arguments;
    var argc = arguments.length;
    var expires = (argc > 2) ? argv[2] : null;
    var path = (argc > 3) ? argv[3] : '/';
    var domain = (argc > 4) ? argv[4] : null;
    var secure = (argc > 5) ? argv[5] : false;
    document.cookie = name + "=" + escape(value) +
       ((expires == null) ? "" : ("; expires=" + expires.toGMTString())) +
       ((path == null) ? "" : ("; path=" + path)) +
       ((domain == null) ? "" : ("; domain=" + domain)) +
       ((secure == true) ? "; secure" : "");
  };

  Cookies.Get = function(name) {
    var arg = name + "=";
    var alen = arg.length;
    var clen = document.cookie.length;
    var i = 0;
    var j = 0;
    while (i < clen) {
      j = i + alen;
      if (document.cookie.substring(i, j) == arg)
        return Cookies.GetCookieVal(j);
      i = document.cookie.indexOf(" ", i) + 1;
      if (i == 0)
        break;
    }
    return null;
  };

  Cookies.Clear = function(name) {
    if (Cookies.Get(name)) {
      var expdate = new Date();
      expdate.setTime(expdate.getTime() - (86400 * 1000 * 1));
      Cookies.Set(name, "", expdate);
    }
  };

  Cookies.GetCookieVal = function(offset) {
    var endstr = document.cookie.indexOf(";", offset);
    if (endstr == -1) {
      endstr = document.cookie.length;
    }
    return unescape(document.cookie.substring(offset, endstr));
  };

  window.Maitonn = window.Maitonn || {};
  window.Maitonn.Cookies = Cookies;

  var JHelper = {
    checkLogin: function() {
      var UserCookie = Maitonn.Cookies.Get("dotaeyeUser");
      return !(UserCookie == null || UserCookie.indexOf("UID") < 0);
    },
    hasInitPopLogin: false,
    initPopLogin: function() {
      $('#loginContent').load(function() {
        $('#loginLoading').hide();
        $(this).show();
      });
    },
    showPopLogin: function() {
      if (!this.hasInitPopLogin) {
        this.initPopLogin();
        this.hasInitPopLogin = true;
      }
      $('#loginContent').hide();
      $('#loginLoading').show();
      var loginUrl = $('#popLoginUrl').val();
      var loginWindow = $('#Win-PopLogin').data('kendoWindow');
      $('#loginContent').attr('src', loginUrl + '?' + Math.random());
      loginWindow.center().open();
    },
    showMessage: function(message) {
      var $jsmessage = $('.jsmessage');
      $('.jsmessage-text').text(message);
      $jsmessage.show();
      $jsmessage.fadeOut(5000)
    }
  }
  window.Maitonn = window.Maitonn || {};
  window.Maitonn.JHelper = JHelper;

})()

