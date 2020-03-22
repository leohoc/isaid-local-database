# ISAID-DATABASE-MIGRATION

> Development in progress

### Description

Scripts for creating the database objects of the ISAID project.
Currently it uses a DynamoDB instance.

### Development

#### Install requirements

- Docker >= 19
- AWS CLI >= 2

#### Configure a AWS local profile credential

Add the following code to your `~/.aws/credentials` file:

```bash

[local]
aws_access_key_id = localAccessKey
aws_secret_access_key = secretAccessKey

```  

#### Run a local DynamoDB instance

To download a DynamoDB image and run it locally:

```bash

docker pull amazon/dynamodb-local
docker run -p 8000:8000 amazon/dynamodb-local

```

#### Run

This will run the script to create the database objects in your local instance of DynamoDB:

```bash

./run/local.sh

```

#### Querying the local database

Run this command to query the `Prophet` table created in your local database:

```bash

aws dynamodb query --profile local --region us-west-2 \
    --table-name Prophet \
    --key-condition-expression "login = :login" \
    --expression-attribute-values  '{":login":{"S":"lcarvalho"}}' \
    --endpoint-url http://localhost:8000

```
