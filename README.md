# Personal Porfolio

## 1 Setup

### 1. Setup npm packages and docker-compose
Run command
```bash
cp .docker.env_example .docker.env
cp .env_example .env
```

```bash
npm install
docker-compose up -d --remove-orphans
```

### 2. Run database migration

```bash
npm run migration:run
```

### 3. Add data to MySQL on Adminer on port 8080, the data file is in 'data.sql' file

### 4. Run application (The application now is already running on localhost:3000)

## 2. Useful command

To generate new migration

```bash
npm run migration:create
```

## Swagger

Document: [APIs spec](http://localhost:3000/api-docs/)

## Admin

Adminer: [Adminer](http://localhost:8080)
