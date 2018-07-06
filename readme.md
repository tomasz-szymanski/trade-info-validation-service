
### Build
mvn clean install

### Run
mvn clean package
java -jar target/trade-info-validation-service-0.0.1-SNAPSHOT.jar

### Documenation of avaialble services in Swagger
- http://localhost:8001/swagger-ui.html#/

### Validaton service available under port 8001
- http://localhost:8001/trade-info/validate
- http://localhost:8001/trade-info/validate/multiple
- http://localhost:8001/trade-info/validate/multiple/array

### Validation endpoints
- {[/trade-info/validate],methods=[POST]}	- validate single trade info
- {[/trade-info/validate/multiple],methods=[POST]} - validate multiple trade infos
Sample JSON:
```
{
"tradeInfos": [
    {
        "customer":"PLUTO1",
        "ccyPair":"EURUSD",
        "type":"Spot",
        "direction":"BUY",
        "tradeDate":"2016-08-11",
        "amount1":1000000.00,
        "amount2":1120000.00,
        "rate":1.12,
        "valueDate":"2016-08-15",
        "legalEntity":"CS Zurich",
        "trader":"Johann Baumfiddler"
    },
    {
        "customer": "PLUTO1",
        "ccyPair": "EURUSD",
        "type": "Spot",
        "direction": "BUY",
        "tradeDate": "2016-08-11",
        "amount1": 1000000.00,
        "amount2": 1120000.00,
        "rate": 1.12,
        "valueDate": "2016-08-15",
        "legalEntity": "CS Zurich",
        "trader": "Johann Baumfiddler"
    }
]
}
```

- {[/trade-info/validate/multiple/array],methods=[POST]} - validate multiple trade infos
Sample JSON:
```
[
    {
        "customer":"PLUTO1",
        "ccyPair":"EURUSD",
        "type":"Spot",
        "direction":"BUY",
        "tradeDate":"2016-08-11",
        "amount1":1000000.00,
        "amount2":1120000.00,
        "rate":1.12,
        "valueDate":"2016-08-15",
        "legalEntity":"CS Zurich",
        "trader":"Johann Baumfiddler"
    },
    {
        "customer": "PLUTO1",
        "ccyPair": "EURUSD",
        "type": "Spot",
        "direction": "BUY",
        "tradeDate": "2016-08-11",
        "amount1": 1000000.00,
        "amount2": 1120000.00,
        "rate": 1.12,
        "valueDate": "2016-08-15",
        "legalEntity": "CS Zurich",
        "trader": "Johann Baumfiddler"
    }
]    
```

## More test data
More test data can be found in prepred HTTP Requests collection which can be run directly from IntelliJ Idea
- https://github.com/tomasz-szymanski/trade-info-validation-service/blob/master/src/main/resources/sample-post-request.http
- https://github.com/tomasz-szymanski/trade-info-validation-service/blob/master/src/main/resources/sample-post-request-bulk.http
