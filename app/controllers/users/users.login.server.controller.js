'use strict';

/**
 * Module dependencies.
 */
var _ = require('lodash'),
	mongoose = require('mongoose'),
	passport = require('passport'),
	User = mongoose.model('User');

/**
 * Login - 로그인 페이지
 */
exports.login = function(req, res) {
	res.render('users/login', {
		user: req.user || null,
		request: req
	});
};

exports.join = function(req, res) {
	res.render('users/join', {
		user: req.user || null,
		request: req
	});
};
