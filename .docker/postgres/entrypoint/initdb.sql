SELECT 'CREATE DATABASE api_vcred'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'api_vcred')\gexec

SELECT 'CREATE DATABASE api_vcred_test'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'api_vcred_test')\gexec
