# FROM 사설저장주소:포트/postgis:15-3.3
FROM postgis/postgis:15-3.3

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
    sed -i 's/# ko_KR.UTF-8 UTF-8/ko_KR.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen

ENV LANG=ko_KR.utf8 \
    LC_COLLDATE=ko_KR.utf8 
