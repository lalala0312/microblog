# 使用 Python 3.11 作为基础镜像
FROM python:3.11.4

# 设置工作目录
WORKDIR /app

# 复制当前目录下的所有文件到容器中的 /app 目录
COPY . .

# 安装 Python 项目的依赖项
RUN pip install -r requirements.txt

# 暴露容器中的端口（如果需要的话）
EXPOSE 5000

# 启动应用程序
CMD ["flask", "run", "--host=0.0.0.0"]
