echo "creating env files for stage mode"
cp /envs/stage/db/.env_sample .env
cp /envs/stage/django/.env_sample .env


echo "creating env files for production mode"
cp /envs/prod/db/.env_sample .env
cp /envs/prod/django/.env_sample .env
cp /envs/prod/nginx/.env_sample .env