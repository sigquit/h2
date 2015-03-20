'use strict';

/**
 * Module dependencies.
 */
var users = require('../../app/controllers/users.server.controller');

exports.index = function(req, res) {
	res.render('index', {
		user: req.user || null,
		request: req
	});
};
