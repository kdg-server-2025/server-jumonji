# ベースイメージとしてGoを使う
FROM golang:1.21

# コンテナ内の作業ディレクトリを設定
WORKDIR /app

# カレントディレクトリのhello.goをコンテナ内にコピー
COPY hello.go .

# ビルド
RUN go build -o hello hello.go

# 実行
CMD ["./hello"]
