# 构建阶段（和运行阶段架构一致，避免依赖不兼容）
FROM python:3.12-slim AS builder
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY pyproject.toml .
# 把依赖安装到单独目录，方便后续拷贝
RUN pip install --no-cache-dir . --root-user-action=ignore -t /app/deps

# 运行阶段（ARM64 架构，安装系统依赖）
FROM python:3.12-slim
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 安装项目需要的系统依赖（ffmpeg、portaudio 等）
RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    libportaudio2 \
    dnsutils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
# 从构建阶段拷贝依赖（架构已经是 ARM64 了）
COPY --from=builder /app/deps /usr/local/lib/python3.12/site-packages
# 拷贝你的代码
COPY miair.py ./
COPY miair/ ./miair/
RUN mkdir -p /app/conf

EXPOSE 8200 8300
ENTRYPOINT ["python", "miair.py", "--conf-path", "/app/conf"]
