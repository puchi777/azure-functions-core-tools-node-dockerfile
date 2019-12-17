# Azure Functions Core Tools Dockerfile

## Usage

1. module install

```
docker run -it --rm --name azure-functions-core-tools-node \
-v YOUR_DIRECTORY:/code \
-p 127.0.0.1:7071:7071 \
azure-functions-core-tools-node \
npm install
```

2. start function

```
docker run -it --rm --name azure-functions-core-tools-node \
-v YOUR_DIRECTORY:/code \
-p 127.0.0.1:7071:7071 \
azure-functions-core-tools-node \
func host start
```

Use $(pwd) to specify the current directory as `YOUR_DIRECTORY`.

Sample

```
docker run -it --rm --name azure-functions-core-tools-node \
-v $(pwd):/code \
-p 127.0.0.1:7071:7071 \
azure-functions-core-tools-node \
func host start
```