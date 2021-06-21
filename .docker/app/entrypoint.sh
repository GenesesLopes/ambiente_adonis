#!/bin/bash

cd api

yarn

if [ ! -f ".env" ]; then
    cp .env.example .env
    adonis key:generate
fi

if [ ! -f ".env.testing" ]; then
    cp .env.example.testing .env.testing
fi

node