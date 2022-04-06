FROM ubuntu

ENV NODE_ENV=test
ENV TEST=y

RUN apt update \
  && apt install -y curl sudo

ENV DEBIAN_FRONTEND=noninteractive

# NOTE: moving this `apt install` outside of setup.sh seems to help prevent getting prompted
# by one of the package installs
RUN apt install -y git tmux jq build-essential cmake clang llvm libgmp-dev pkg-config libssl-dev lld rsync

# NOTE: code expects repo path is ~/libra
WORKDIR /root
RUN git clone https://github.com/Leibniz137/libra.git

RUN bash /root/libra/ol/util/setup.sh

WORKDIR /root/libra

ENV RUSTC_WRAPPER=sccache

ENV PATH /root/.cargo/bin/:${PATH}
RUN make bins

RUN cd /root \
  && git clone https://github.com/Leibniz137/dev-genesis.git \
  && git clone https://github.com/Leibniz137/dev-epoch-archive \
  && cd libra && git checkout 0L-devnet

# put this at the end so they can share most layers
ARG NS
ENV NS $NS
