const express = require("express");
const app = express();
const PORT = 3000;
app.get("/", (req, res) => {
res.send("Hello! Docker + Git Integration");
});
app.listen(PORT, () => {
console.log("Server running at https://localhost:3000");
});
