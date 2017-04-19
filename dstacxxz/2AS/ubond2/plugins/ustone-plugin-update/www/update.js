var exec = require('cordova/exec');

var AutoUpdateJs = {
    checkAppUpdate: function(success, error, updateUrl) {
        updateUrl = updateUrl ? [updateUrl] : [];
        exec(success, error, "AutoUpdateNative", "checkAppUpdate", updateUrl);
    }
}

module.exports = AutoUpdateJs;
