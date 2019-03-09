def app(environ, start_response):
    data = environ["QUERY_STRING"]
    response_headers = [
            ("Content-type","text/plain"),
            ("Content-Length", str(len(data)))]
    start_response("200 OK", response_headers)
    return [bytes(data.replace('&','\n'), "utf-8")]
