(function() {

  var dateFormat = function() {
    var token = /d{1,4}|m{1,4}|yy(?:yy)?|([HhMsTt])\1?|[LloSZ]|"[^"]*"|'[^']*'/g,
      timezone = /\b(?:[PMCEA][SDP]T|(?:Pacific|Mountain|Central|Eastern|Atlantic) (?:Standard|Daylight|Prevailing) Time|(?:GMT|UTC)(?:[-+]\d{4})?)\b/g,
      timezoneClip = /[^-+\dA-Z]/g,
      pad = function(val, len) {
        val = String(val);
        len = len || 2;
        while (val.length < len) val = "0" + val;
        return val;
      };

    // Regexes and supporting functions are cached through closure
    return function(date, mask, utc) {
      var dF = dateFormat;

      // You can't provide utc if you skip other args (use the "UTC:" mask prefix)
      if (arguments.length == 1 && Object.prototype.toString.call(date) == "[object String]" && !/\d/.test(date)) {
        mask = date;
        date = undefined;
      }

      // Passing date through Date applies Date.parse, if necessary
      date = date ? new Date(date) : new Date;
      if (isNaN(date)) throw SyntaxError("invalid date");

      mask = String(dF.masks[mask] || mask || dF.masks["default"]);

      // Allow setting the utc argument via the mask
      if (mask.slice(0, 4) == "UTC:") {
        mask = mask.slice(4);
        utc = true;
      }

      var _ = utc ? "getUTC" : "get",
        d = date[_ + "Date"](),
        D = date[_ + "Day"](),
        m = date[_ + "Month"](),
        y = date[_ + "FullYear"](),
        H = date[_ + "Hours"](),
        M = date[_ + "Minutes"](),
        s = date[_ + "Seconds"](),
        L = date[_ + "Milliseconds"](),
        o = utc ? 0 : date.getTimezoneOffset(),
        flags = {
          d: d,
          dd: pad(d),
          ddd: dF.i18n.dayNames[D],
          dddd: dF.i18n.dayNames[D + 7],
          m: m + 1,
          mm: pad(m + 1),
          mmm: dF.i18n.monthNames[m],
          mmmm: dF.i18n.monthNames[m + 12],
          yy: String(y).slice(2),
          yyyy: y,
          h: H % 12 || 12,
          hh: pad(H % 12 || 12),
          H: H,
          HH: pad(H),
          M: M,
          MM: pad(M),
          s: s,
          ss: pad(s),
          l: pad(L, 3),
          L: pad(L > 99 ? Math.round(L / 10) : L),
          t: H < 12 ? "a" : "p",
          tt: H < 12 ? "am" : "pm",
          T: H < 12 ? "A" : "P",
          TT: H < 12 ? "AM" : "PM",
          Z: utc ? "UTC" : (String(date).match(timezone) || [""]).pop().replace(timezoneClip, ""),
          o: (o > 0 ? "-" : "+") + pad(Math.floor(Math.abs(o) / 60) * 100 + Math.abs(o) % 60, 4),
          S: ["th", "st", "nd", "rd"][d % 10 > 3 ? 0 : (d % 100 - d % 10 != 10) * d % 10]
        };

      return mask.replace(token, function($0) {
        return $0 in flags ? flags[$0] : $0.slice(1, $0.length - 1);
      });
    };
  }();

  // Some common format strings
  dateFormat.masks = {
    "default": "ddd mmm dd yyyy HH:MM:ss",
    shortDate: "m/d/yy",
    mediumDate: "mmm d, yyyy",
    longDate: "mmmm d, yyyy",
    fullDate: "dddd, mmmm d, yyyy",
    shortTime: "h:MM TT",
    mediumTime: "h:MM:ss TT",
    longTime: "h:MM:ss TT Z",
    isoDate: "yyyy-mm-dd",
    isoTime: "HH:MM:ss",
    isoDateTime: "yyyy-mm-dd'T'HH:MM:ss",
    isoUtcDateTime: "UTC:yyyy-mm-dd'T'HH:MM:ss'Z'"
  };

  // Internationalization strings
  dateFormat.i18n = {
    dayNames: [
      "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat",
      "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"
    ],
    monthNames: [
      "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec",
      "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
    ]
  };

  // For convenience...
  Date.prototype.format = function(mask, utc) {
    return dateFormat(this, mask, utc);
  };


  Date.prototype.addDays = function(num) {
    var value = this.valueOf();
    value += 86400000 * num;
    return new Date(value);
  }

  Date.prototype.addSeconds = function(num) {
    var value = this.valueOf();
    value += 1000 * num;
    return new Date(value);
  }

  Date.prototype.addMinutes = function(num) {
    var value = this.valueOf();
    value += 60000 * num;
    return new Date(value);
  }

  Date.prototype.addHours = function(num) {
    var value = this.valueOf();
    value += 3600000 * num;
    return new Date(value);
  }

  Date.prototype.addMonths = function(num) {
    var value = new Date(this.valueOf());

    var mo = this.getMonth();
    var yr = this.getYear();

    mo = (mo + num) % 12;
    if (0 > mo) {
      yr += (this.getMonth() + num - mo - 12) / 12;
      mo += 12;
    }
    else
      yr += ((this.getMonth() + num - mo) / 12);

    value.setMonth(mo);
    value.setYear(yr);
    return value;
  }


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
      var d = $.Deferred();
      var UserCookie = Maitonn.Cookies.Get("dotaeyeUser");
      var isLogin = !(UserCookie == null || UserCookie.indexOf("UID") < 0);
      d.resolve(isLogin);
      return d.promise();
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
    },
    showErrorMessage: function(message) {
      var $jserrmessage = $('.jserrmessage');
      $('.jserrmessage-text').text(message);
      $jserrmessage.show();
      $jserrmessage.fadeOut(5000)
    },
    checkFavorite: function(id) {
      var d = $.Deferred();
      $.get(ajaxUrl.check_favorite, { id: id }, function(res) {
        d.resolve(res);
      });
      return d.promise();
    },
    addFavorite: function(id) {
      var d = $.Deferred();
      $.post(ajaxUrl.add_favorite, { id: id }, function(res) {
        d.resolve(res);
      });
      return d.promise();
    },
    getMediaPeriodCode: function(id) {
      var d = $.Deferred();
      $.get(ajaxUrl.get_mediaPeriodCode, { id: id }, function(res) {
        d.resolve(res);
      });
      return d.promise();
    },
    getSchemeForm: function() {
      var d = $.Deferred();
      $.get(ajaxUrl.get_schemeform, {}, function(res) {
        d.resolve(res);
      });
      return d.promise();
    },
    getScheme: function() {
      var d = $.Deferred();
      $.get(ajaxUrl.get_scheme, {}, function(res) {
        d.resolve(res);
      });
      return d.promise();
    },
    addScheme: function(data) {
      var d = $.Deferred();
      $.post(ajaxUrl.add_scheme, data, function(res) {
        d.resolve(res);
      });
      return d.promise();
    },
    editSchemeMedia: function(data) {
      var d = $.Deferred();
      $.post(ajaxUrl.edit_schemeMedia, data, function(res) {
        d.resolve(res);
      });
      return d.promise();
    }
  }
  window.Maitonn = window.Maitonn || {};
  window.Maitonn.JHelper = JHelper;

})()

