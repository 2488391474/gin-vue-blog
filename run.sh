#!/bin/bash

# 启动 admin 项目
cd gin-blog-admin
echo "前端: 启动 admin 项目"
pnpm run dev &
cd ..

# 启动前端界面项目
cd gin-blog-front
echo "前端: 启动界面项目"
pnpm run dev &
cd ..

# 启动后端服务
cd gin-blog-server/cmd
echo "后端: 启动服务"
go run main.go
cd .. &

# 等待所有后台进程完成
wait
