# superset

Personalização do [Apache Superset](https://hub.docker.com/r/apache/superset) v2.0.0

# Recursos necessários
 * MySQL 5.7
 * Redis 6.2.4

# Configuração das variáveis
São necessárias as variáveis contidas no `example.env` para o container do Docker, contendo os devidos valores de produção.

# Configuração da primeira inicialização
Após primeira inicialização do Superset é necessário configurar o DB. Em um container com Superset em execução, rode os seguintes comandos:
```
superset db upgrade

# Create an admin user (you will be prompted to set a username, first and last name before setting a password)
superset fab create-admin

# Load some data to play with
superset load_examples

# Create default roles and permissions
superset init
```