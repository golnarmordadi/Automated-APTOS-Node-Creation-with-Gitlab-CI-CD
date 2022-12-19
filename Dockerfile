FROM aptoslabs/validator:mainnet_9c27fbef0803c68aad42263aaec57a809196acbf

WORKDIR /opt/aptos/etc

COPY fullnode.yaml /opt/aptos/etc/fullnode.yaml
COPY genesis.blob /opt/aptos/etc/genesis.blob
COPY waypoint.txt /opt/aptos/etc/waypoint.txt
COPY genesis.blob /opt/aptos/genesis/genesis.blob
COPY waypoint.txt /opt/aptos/genesis/waypoint.txt

RUN pwd
RUN ls

WORKDIR /opt/aptos/etc
