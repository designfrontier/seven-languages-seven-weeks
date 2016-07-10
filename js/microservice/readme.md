# tic-tac-toe-node
------

this is a tic-tac-toe-as-a-service

## Docker command

```
docker run \
  -e "NODE_ENV=production" \
  -u "app" \
  -m "300M" --memory-swap "1G" \
  --name "tic-tac-toe-service" \
  node [script]
```

------

Built with [monumentjs](http://monument.ansble.com)
