var exec = require('cordova/exec');

var UltravisualPlugin = {
	create: function (successCallback, errorCallback) {
		exec(successCallback, errorCallback, 'UltravisualPlugin', 'create', []);
	}
};

module.exports = UltravisualPlugin;