host="fabmedical-594683.documents.azure.com"
username="fabmedical-594683"
password="MYxfeqjdqOviOSI5hlPgxLH2fY4gtq18iNtps1wARPAoWvNhzIAo3Zo9A4jW9SIIXhH0VrMoKMSpIWY8R3INwg=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
