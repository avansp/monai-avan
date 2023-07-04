#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "Usage: $0 [CODE_DIR] [DATA_DIR]"
	exit 1
fi

CODE_DIR=$(readlink -f $1)
DATA_DIR=$(readlink -f $2)

docker run -it --rm --user $USER -p 8888:8888 --gpus all --ipc=host --ulimit memlock=1 --ulimit stack=67108864 -v ${CODE_DIR}:/home/${USER}/codes -v ${DATA_DIR}:/home/${USER}/data -w /home/${USER} --name monai-tut monai-tut bash

