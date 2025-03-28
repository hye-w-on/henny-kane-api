# Project Info

- artifact id : henny-kane-api
- package name : com.hennykane
- Java Language Version : 19
- Spring Boot Version : 3.1.5

# Dependencies

- Spring Web
- Spring Boot DevTools
- Spring Data JPA
- Validation
- MySQL
- Lombok

# Docker

```bash
docker compose up -d
docker compose down
```

# Build

```bash
./gradlew clean build
```

# Run

```bash
./gradlew clean bootRun
export $(cat .env | xargs) && ./gradlew clean bootRun
```

DB구축 전 run 테스트 하려면 아래 설정 추가

```java
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
```

# Swagger

```bash
http://localhost:8080/swagger-ui.html
```

## Database Migration

### Naming Convention

- 기본 형식: `V{major}.{minor}.{patch}__{description}.sql`
  - 예시: V1.0.0**init.sql, V1.0.1**add_user_table.sql

### 주의사항

- 한 번 적용된 마이그레이션 파일은 절대 수정하지 않음
- 변경이 필요한 경우 새로운 버전의 파일을 생성
- 운영 환경에 적용하기 전 반드시 로컬 환경에서 테스트

## 로컬개발시 DB 클라이언트 도구 접속 옵션 설정

allowPublicKeyRetrieval=true
useSSL=false

# Docker Deployment

1. Build the application

```bash
./gradlew clean build
```

2. Build and run with production environment

```bash
docker compose -f docker-compose.prod.yml --env-file .env.prod up -d --build
```

3. Stop the application

```bash
docker compose -f docker-compose.prod.yml --env-file .env.prod down
```
