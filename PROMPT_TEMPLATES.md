### REST API 프로젝트 세팅 프롬프트

너는 숙련된 Java Spring Boot 전문가야.  
아래 조건에 맞는 REST API 프로젝트 초기 세팅 코드를 생성해줘.

1. 프로젝트 사전 조건:

# Project Info

- artifact id : henny-kane-api
- package name : com.hennykane

- Java Language Version : 21
- Spring Boot Version : 최신
- Gradle 프로젝트
- dependencies:
  - spring-boot-starter-web
  - spring-boot-starter-data-jpa
  - spring-boot-starter-validation (Bean Validation)
  - mysql-connector-j
  - lombok

# 2. 프로젝트 구성 조건:

1. contextLoads 테스트 코드 주석처리

2. .env, .env.prod 생성
   - git repo에 push 하지않을 민감 정보를 관리
   - .gitignore에 추가
3. application.yml 기본 템플릿 생성

   - 민감정보는 env파일로 분리
   - application.yml에는 공통 설정 정보 정의
   - application-local.yml, application-prod.yml 파일 생성
   - local, prod : DB 연결 정보 placeholder로 대체
   - .gitignore에 추가

4. REST API 프로젝트 기본 구조 생성

   - 간단한 health check Controller (GET /health → "ok" 응답)
   - Service, Repository, Controller 레이어 기본 구조 생성
   - 모든 클래스에 필요한 Lombok 어노테이션 추가
   - OpenAPI (swagger)를 위한 의존성, application.yml에 설정 추가, 설정 클래스 생성

5. Database를 위한 docker-compose.yml 파일 생성

   - DB 접속 정보는 env파일로 분리
   - MySQL

6. JPA 설정 추가

   - ddl-auto: validate

7. Flyway 기본 구조 생성

   - 의존성 추가
   - application.yml에 로컬/운영환경에 따른 설정, DB 접속 정보 추가
   - migration 디렉터리 구조 및 example 테이블 생성 파일 추가
   - 버전 관리를 위한 Migration File Naming Convention 설명을 한국어로 README.md에 추가

8. 추가 조건:

- 생성된 코드와 구조를 마크다운 코드 블록으로 README.md 파일에 정리

- Controller, Service, Repository 클래스에는 `@Slf4j` 적용
- JPA 엔티티에는 `@Entity`, `@Table`, `@Id`, `@GeneratedValue` 포함
