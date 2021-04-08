docker build -t nodegradle:test .

#echo "This works v v v v v"
#docker run \
#  -v $(pwd)/:/usr/src/app \
#  --rm \
#  nodegradle:test npm install

echo "This doesn't work v v v v v"
docker run \
  -v $(pwd)/:/usr/src/app \
  --rm \
  nodegradle:test ./gradlew clean npmInstall
