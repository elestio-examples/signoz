#set env vars
set -o allexport; source .env; set +o allexport;


mkdir -p ./storage
chown -R 1000:1000 ./storage

git clone https://github.com/SigNoz/signoz.git signoz-repos

mv ./signoz-repos/deploy/docker/clickhouse-setup/* ./storage
mv ./signoz-repos/deploy/docker/common/* ./storage

rm -rf ./storage/docker-compose.yaml
rm -rf ./storage/docker-compose-core.yaml
rm -rf ./storage/docker-compose-local.yaml
rm -rf ./storage/docker-compose.testing.yaml

rm -rf ./signoz-repos