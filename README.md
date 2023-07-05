MONAI Collection
----

## Quick setup with docker

This will create an image with tag name monai-tut
```
$ ./buid-docker.sh
```

Run interactive (will remove container when exit)
```
$ ./run-docker-rm.sh [CODES_DIR] [DATA_DIR]
```
*while inside the container, check if you can access GPU card*.

Run a background Jupyter server
```
$ ./run-docker-d.sh [CODES_DIR] [DATA_DIR]
```

The Jupyter-Lab notebook can be opened from http://localhost:8888

To enter the container, the easiest way is to launch terminal from Jupyter.

## About the collection

The notebooks are some codes I've tested myself. I'm learning MONAI by examples. Just browse through them.


-- Avan Suinesiaputra 
