
Clone project
```bash
git clone https://github.com/tucocsa/sylius sylius-dev
```

Install dependencies
```bash
cd sylius-dev/project
composer install --ignore-platform-reqs
```

Up docker containers
```bash
cd [project-root]/docker
docker-compose up -d --build
docker-compose ps
```

Initial setting
```bash
docker-compose exec -u sylius sylius bash
yarn install
php bin/console sylius:install:database // Answers [YES]
yarn run gulp
```

Go to `http://localhost:8000` Make sure everything is ok.


# Troubleshooting
Cache:
```bash
docker-compose exec -u sylius sylius bash
php bin/console cache:clear
```
or run `sudo rm -rf var/cache/*` outside the container

___

Assets 404
```bash
docker-compose exec -u sylius sylius bash
php bin/console cache:clear
yarn run gulp
```

___
