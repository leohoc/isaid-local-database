aws dynamodb create-table --profile local --region us-west-2 \
  --cli-input-json file://dynamodb/prophetTable.json \
  --endpoint-url http://localhost:8000

aws dynamodb put-item --profile local --region us-west-2 \
  --cli-input-json file://dynamodb/prophetItem.json \
  --endpoint-url http://localhost:8000

aws dynamodb create-table --profile local --region us-west-2 \
  --cli-input-json file://dynamodb/prophecyTable.json \
  --endpoint-url http://localhost:8000

aws dynamodb put-item --profile local --region us-west-2 \
  --cli-input-json file://dynamodb/prophecyItem.json \
  --endpoint-url http://localhost:8000