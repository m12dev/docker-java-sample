# docker-java-sample

# Features

Docker で Java をマルチステージビルドするサンプルコードです．

最終的に実行すると，「Hello, Java!」とプロンプトに表示されます．

# Requirements

* Docker  
 https://docs.docker.com/get-docker/

# Usage

Docker ビルド

```bash
cd docker-java-sample
docker build -t docker-java-sample:latest .
```

実行

```bash
docker run --rm docker-java-sample:latest
```

削除

```bash
docker rmi docker-java-sample:latest
docker image prune
```
