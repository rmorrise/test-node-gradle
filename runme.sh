docker build -t nodegradle:test .

echo "This works v v v v v"
docker run \
  -v $(pwd)/:/usr/src/app \
  --rm \
  nodegradle:test \
  npm install

echo "This works v v v v v"
docker run \
  -v $(pwd)/:/usr/src/app \
  --rm \
  nodegradle:test \
  ./gradlew clean

echo "This hangs with no output after starting npmInstall task v v v v v"
docker run \
  -v $(pwd)/:/usr/src/app \
  --rm \
  nodegradle:test \
  ./gradlew clean npmInstall
