aws dynamodb create-table --profile local --region us-west-2 \
  --cli-input-json file://dynamodb/tables.json \
  --endpoint-url http://localhost:8000

aws dynamodb put-item --profile local --region us-west-2 \
  --cli-input-json file://dynamodb/items.json \
  --endpoint-url http://localhost:8000