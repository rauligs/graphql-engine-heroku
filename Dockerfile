FROM hasura/graphql-engine:v1.2.1

# Enable the console
ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true

# Change $DATABASE_URL to your heroku postgres URL if you're not using
# the primary postgres instance in your app
#CMD graphql-engine \
#    --database-url $DATABASE_URL \
#    serve \
#    --server-port $PORT

## Comment the command above and use the command below to
## enable an access-key and an auth-hook
## Recommended that you set the access-key as a environment variable in heroku
CMD graphql-engine \
    --database-url $DATABASE_URL \
    serve \
    --server-port $PORT \
    --admin-secret $ADMIN_SECRET \
#   --access-key $ACCESS_KEY
# 	--auth-hook https://myapp.com/hasura-webhook 

