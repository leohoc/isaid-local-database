aws dynamodb create-table \
  --cli-input-json file://dynamodb/tables.json \
  --endpoint-url http://localhost:8000

aws dynamodb put-item \
  --cli-input-json file://dynamodb/items.json \
  --endpoint-url http://localhost:8000