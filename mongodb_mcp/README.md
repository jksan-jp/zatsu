https://zenn.dev/wooheum/articles/54adee2a91c26a

# データが入っているか確認
```
docker compose exec mongodb mongosh
use students
db.profiles.find()
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
