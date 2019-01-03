# Dockerfiles

Dockerfiles for vigcoin docker images

# Images

1. vigcoin/core
2. vigcoin/coind
3. vigcoin/pool

# Usage


1. set env
```

# set wallet password
export VIGCOIN_WALLET_PASSWORD=#YOUR_PASSWORD

# set vig home data directory
export VIGCOIN_HOME=

```

2. run image

```

docker run -d -e PASSWORD=$VIGCOIN_WALLET_PASSWORD              \
-p 19800:19800                                                  \
-p 19801:19801                                                  \
-p 19802:19802                                                  \
-p 5555:5555                                                    \
-p 6666:6666                                                    \
-p 7777:7777                                                    \
-p 8888:8888                                                    \
-p 8080:8080                                                    \
-v $VIGCOIN_HOME/wallet:/wallet                                 \
-v $VIGCOIN_HOME/data:/data                                     \
-v $VIGCOIN_HOME/log:/var/log                                   \
-v $VIGCOIN_HOME/data/.vigcoin:/root/.vigcoin                   \
-v $VIGCOIN_HOME/config:/pool/config                            \
vigcoin/pool:v1

````
