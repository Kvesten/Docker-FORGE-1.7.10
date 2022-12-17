# Костыль, что бы были файлы при использовании docker-compose
FILE=forge.jar
if test -f "$FILE"; then
echo "Starting"
else
echo "Starting" && cp -r /apps/src/* ./
fi
/usr/lib/jvm/openlogic-openjdk-jre-8u352-b08-linux-x64/bin/java -Xmx$JAVA_XMX -Xms$JAVA_XMS $OTHER_PARAMETERS -jar forge.jar nogui