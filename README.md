The project is example of application, which can work both with ydb and postgres without changes.

Run docker-compose for start test environments:

```bash
docker-compose up --pull=always --build -d
```

Then you can open:
- URL Shortener with YDB on http://localhost:2001
- YDB UI for YDB on http://localhost:3001
- URL Shortener with Postgres on http://localhost:2002
- PgAdmin with login test@test.com and password test on http://localhost:3002
