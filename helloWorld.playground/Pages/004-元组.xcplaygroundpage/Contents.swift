let http404error = (404, "not fount")
http404error.0
http404error.1

let (code, status) = http404error
code
status

let justStatusCode = (code: 200, status: 404)
justStatusCode.code
justStatusCode.status
