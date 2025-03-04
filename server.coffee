f_server = ->

	http = require("http")
	PORT = 8080

	http.createServer (req, res) =>

		res.writeHead 200,{"content-type":"text/{n};charset=utf8"}

		res.end x

	.listen PORT

	console.log "Running at port ${PORT}"
