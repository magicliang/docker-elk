```bash
# 启动 compose stack 
docker-compose up

# 批量修改密码的三个命令（需要分别执行）
docker-compose exec elasticsearch bin/elasticsearch-reset-password --batch --user elastic
docker-compose exec elasticsearch bin/elasticsearch-reset-password --batch --user logstash_internal
docker-compose exec elasticsearch bin/elasticsearch-reset-password --batch --user kibana_system

# 在任意时刻（比如修改了密码之后）重启指定服务
docker-compose up -d logstash kibana
```