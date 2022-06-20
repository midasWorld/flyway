# Flyway 사용법

## 📌 개발 환경
- java 17
- Spring Boot 2.7.0
- flyway 8.5.12
- mysql 8.0

## ⚙ ️설정
### 1. 라이브러리 추가
`mysql`을 사용하는 경우, mysql 까지 추가하기 
```xml
<dependency>
    <groupId>org.flywaydb</groupId>
    <artifactId>flyway-core</artifactId>
    <version>${flyway.version}</version>
</dependency>

<!-- Mysql 사용 하는 경우, 추가-->
<dependency>
    <groupId>org.flywaydb</groupId>
    <artifactId>flyway-mysql</artifactId>
    <version>${flyway.version}</version>
</dependency>
```
### 2. application.yml 설정 추가
```yaml
spring:
  datasource:
    driver-class-name: com.mysql.cj.jdbc.Driver
    url: DB_URL
    username: DB_ID
    password: DB_PASSWORD
  jpa:
    generate-ddl: false  # ddl 기능 false 처리
    hibernate:
      ddl-auto: validate # validate 사용하기
  sql:
    init:
      data-locations: classpath*:/db/seed/data.sql # data.sql 설정 경로 추가 
      mode: always # data.sql 을 항상 실행 하도록 설정
  flyway:
    enabled: true 
    baseline-on-migrate: true # Spring boot 2 이상인 경우 자동으로 생성되지 않는 경우가 있었다...? 🤔
    locations: classpath:db/migration # 기본 설정 값이지만 명시적으로 설정하는 것을 추천
```

### 3. 폴더 만들기
```
resrouces
  ⌙ db
    ⌙ migration
    ⌙ seed          
```

## 🏃 가즈아

