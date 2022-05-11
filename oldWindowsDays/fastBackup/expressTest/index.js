var cors = require("cors");
const express = require("express");
const app = express();

app.use(cors());
app.use(express.json());

let log = console.log;
let PORT = 80;

app.get("/", (req, res) => {
	let randomNumber = Math.floor(Math.random() * 10);
	res.send("My blog app:" + randomNumber);
	// res.status(201).send('If you want to send custom status code.');
});

// haha, its not bad actually as if you send request from different machine
// say, chrome and chrome icognito at same time, you'll see
// the log "got request at /slow route" printed 2 times
// instantly on the log screen., Yikes!
// Express is real good at solving multiple request at same route
// even if the older requests are on the same route, yikes!
// love node, love express!
app.get("/slow", (req, res) => {
	log("got request at /slow route");
	let randomNumber = Math.floor(Math.random() * 10);
	setTimeout(() => {
		res.send("Yo, you get it:" + randomNumber);
		log("request resolved for /slow route\n");
	}, 3000);
});

app.listen(PORT, function () {
	console.log("server running on PORT");
}); //the server object listens on port 8080
