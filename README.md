# djsite

### 环境依赖
docker

### django运行环境镜像构建
docker build -f djEnv/djEnv.dockerfile -t djevn:v1.0 .

### 挂载运行
docker run -d -p 11111:22222 --name mysite --mount type=bind,source=$(pwd),target=/project djevn:v1.0

### 预览效果
浏览器 http://localhost:11111