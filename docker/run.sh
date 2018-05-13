#!/usr/bin/env bash

#read name

if [ $1 = down ]
    then docker-compose down --remove-orphans
elif [ $1 = up ]
    then docker-compose up -d --build
elif [ $1 = exec ]
    then docker-compose exec sylius bash
elif [ $1 = log ]
    then docker logs sylius-web
fi
