var exec = require('cordova/exec');

exports.showConversations = function(success, error) {
	console.log('exec Atlas showConversations []');
	exec(success, error, "Atlas", "showConversations", []);
}

exports.hideConversations = function(success, error) {
	console.log('exec Atlas hideConversations []');
	exec(success, error, "Atlas", "hideConversations", []);
}
