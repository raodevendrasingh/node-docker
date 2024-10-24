import express from "express";

const app = express();

const port = 3030;

app.get("/", (req, res) => {
	res.send("Hello from Docker!");
});

app.listen(port, () => {
	console.log(`node-docker listening on port ${port}!`);
});
