FROM projectmonai/monai:latest

ARG USER_ID
ARG GROUP_ID
ARG USER
RUN addgroup --gid $GROUP_ID $USER
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID $USER

