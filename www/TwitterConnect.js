var exec = require('cordova/exec');

var TwitterConnect = {
	login: function (successCallback, errorCallback) {
		exec(successCallback, errorCallback, 'TwitterConnect', 'login', []);
	},
	logout: function (successCallback, errorCallback) {
		exec(successCallback, errorCallback, 'TwitterConnect', 'logout', []);
	}
};

module.exports = TwitterConnect;