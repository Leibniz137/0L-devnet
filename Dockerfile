FROM ubuntu

ENV NODE_ENV=test
ENV TEST=y
ARG NS
ENV NS $NS

COPY submodules/libra /src/libra
