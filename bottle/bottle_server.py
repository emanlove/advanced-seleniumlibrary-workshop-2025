from bottle import route, run


@route('/hello')
def hello():
    return "Hello World!"


@route('/bidi')
def bidi():
    return """
<!DOCTYPE html><body>
<script type="text/javascript">
   console.log("Hello console")
   console.log("Hello again")
</script>
<p>RoboCon 2025 SeleniumLibrary workshop</p>
</body></html>
"""


if __name__ == '__main__':
    run(host='localhost', port=8080, debug=True)
