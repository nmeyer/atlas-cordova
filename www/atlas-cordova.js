var exec = require('cordova/exec');

exports.showConversations = function(success, error) {
	exec(success, error, "Atlas", "showConversations");
}

exports.hideConversations = function(success, error) {
	exec(success, error, "Atlas", "hideConversations");
}
