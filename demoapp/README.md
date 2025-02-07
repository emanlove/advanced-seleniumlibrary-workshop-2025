# Demo app
Simple demo http server which is needed to run the examples from other suites.
Demo server has a flask as a dependency:
```
    pip install flask
```

# Start demo app
To start the demo server, give command:
```
    python server.py
```

To start the another demo server based on flask, give command:
```
    FLASK_APP=flask_app.py FLASK_ENV=development FLASK_DEBUG=1  flask run
```
If you need to run on a different port, say 8282, you can use:  
```
    FLASK_APP=flask_app.py FLASK_ENV=development FLASK_DEBUG=1  flask run -h localhost -p 8282
```
or which ever port number you choose.

In Windows CMD:
```
    set FLASK_APP=flask_app.py 
    set FLASK_ENV=development
    set FLASK_DEBUG=1  
    flask run -h localhost -p 8282
```



