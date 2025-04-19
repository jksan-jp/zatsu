https://zenn.dev/wooheum/articles/54adee2a91c26a

# スタート
```
docker compose up
```

# データ投入
```
docker compose exec mongodb bash "./scripts/init.sh"
```

# データが入っているか確認
```
docker compose exec mongodb mongosh
use students
db.profiles.find()

# -Tオプションで疑似端末割り当てを無効化し、--evalでMongo Shellコマンドを直接実行します1。
# 複数コマンドをセミコロン区切りで連結することで、インタラクティブ操作を非対話的に処理します。
```

# mcp_settings.json
```
{
  "mcpServers": {
    "mongodb": {
      "command": "npx",
      "args": [
        "mcp-mongo-server",
        "mongodb://localhost:27017/students?authSource=admin"
      ]
    }
  }
}
```

# 終わったら
```
docker compose down --rmi all
```
