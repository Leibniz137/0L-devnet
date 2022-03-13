FROM ubuntu

ENV NODE_ENV=test
ENV TEST=y

RUN apt update \
  && apt install -y curl sudo

ENV DEBIAN_FRONTEND=noninteractive

# NOTE: moving this `apt install` outside of setup.sh seems to help prevent getting prompted
# by one of the package installs
RUN apt install -y git tmux jq build-essential cmake clang llvm libgmp-dev pkg-config libssl-dev lld

COPY submodules/libra /src/libra

RUN bash ./src/libra/ol/util/setup.sh

ENV RUSTC_WRAPPER=sccache

# put this at the end so they can share most layers
ARG NS
ENV NS $NS
