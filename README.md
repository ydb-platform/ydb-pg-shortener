The project is example of application, which can work both with ydb and postgres without changes.

Run docker-compose for start test environments:

```bash
docker pull ghcr.io/ydb-platform/local-ydb:nightly  # use latest ydb image
docker-compose up --build -d
```

Then you can open:
- Common Demo UI http://localhost:3000
- URL Shortener with YDB on http://localhost:2001
- YDB UI for YDB on http://localhost:3001
- URL Shortener with Postgres on http://localhost:2002
- PgAdmin with login test@test.com and password test on http://localhost:3002
