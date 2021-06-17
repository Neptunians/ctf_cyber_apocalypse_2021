const express = require('express');
const router  = express.Router();
const User    = require('../models/User');

router.get('/', (req, res) => {
	return res.render('index');
});

router.post('/api/login', (req, res) => {
	let { username, password } = req.body;

	if (username && password) {
		return User.find({ 
			username,
			password
		})
			.then((user) => {
				if (user.length == 1) {
					return res.jslon({logged: 1, message: `Login Successful, welcome back ${user[0].username}.` });
				} else {
					return res.json({logged: 0, message: 'Login Failed'});
				}
			})
			.catch((x) => res.json({ message: 'Something went wrong ' + x}));
	}
	return res.json({ message: 'Invalid username or password'});
});

module.exports = router;