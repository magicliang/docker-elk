Docker 是容器技术的核心、基础，Docker Compose 是一个基于Docker的单主机容器编排工具，而 k8s 是一个跨主机的集群部署工具。

```bash
# 启动 compose stack 
docker-compose up

# 批量修改密码的三个命令（需要分别执行），这三个命令会批量刷新密码，生成大量的随机密码
docker-compose exec elasticsearch bin/elasticsearch-reset-password --batch --user elastic
docker-compose exec elasticsearch bin/elasticsearch-reset-password --batch --user logstash_internal
docker-compose exec elasticsearch bin/elasticsearch-reset-password --batch --user kibana_system

# 在任意时刻（比如修改了密码之后）重启指定服务
docker-compose up -d logstash kibana
```