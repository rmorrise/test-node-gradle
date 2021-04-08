docker build -t nodegradle:test .

echo "This works v v v v v"
docker run \
  -v $(pwd)/:/usr/src/app \
  --rm \
  nodegradle:test npm install

echo "This hangs with no output on npmInstall task v v v v v"
docker run \
  -v $(pwd)/:/usr/src/app \
  --rm \
  nodegradle:test ./gradlew clean npmInstall
