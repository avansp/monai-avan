#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "Usage: $0 [CODE_DIR] [DATA_DIR] [TOKEN]"
	exit 1
fi

CODE_DIR=$(readlink -f $1)
DATA_DIR=$(readlink -f $2)
TOKEN=$3

docker run -it -d --user $USER -p 8888:8888 --gpus all --ipc=host --ulimit memlock=1 --ulimit stack=67108864 -v ${CODE_DIR}:/home/${USER}/codes -v ${DATA_DIR}:/home/${USER}/data -w /home/${USER} --name monai-tut monai-tut jupyter-lab --NotebookApp.token="${TOKEN}" --NotebookApp.password=''
