# 데이터허브 도커 환경 구축
- Language: JAVA-openjdk-maven
- DB: postgreSQL, redis
- Needs:
    * AS IS: 도커 스웜으로 관리하다보니 docker-compose.yml 및 이미지 빌드 파일이 각각 나눠져있다.
    * TO BE: 도커 컴포즈 목적은 컨테이너 관리를 용이하게 하기 위한 것. 하나의 Docker-Compose로 모든 컨테이너 관리 가능하게 해주세요.

### 1. 현재까지 찾은 문제점:
    1. 서버에 java, jdk, maven을 설치하고 컨테이너 밖 서버/로컬에서 maven으로 파일 생성 후 컨테이너에 집어넣는 방식으로 설치
    2. ReverseProxy 사용하지 않고 방화벽 열고 모든 포트를 열어둔다?
    3. 

### 2. 해결방안
    1. eureka-server, api-gateway, data-core -> 이미지 빌드 과정에서 maven으로 구동파일 만들도록 변경
    2. nginx를 사용해 리버스프록시 서버를 하나 더 만들고 모든 접근은 nginx를 통해 하도록 만들어보기
    3. 