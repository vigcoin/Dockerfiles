# Dockerfiles

Dockerfiles for vigcoin docker images

# Images

1. vigcoin/core
2. vigcoin/coind
3. vigcoin/pool

# Usage


## Production

1. Set Env

```

# set wallet password
export VIGCOIN_WALLET_PASSWORD=#YOUR_PASSWORD

# set vig home data directory
export VIGCOIN_HOME=$HOME/vigcoin
export VIGCOIN_DAEMON_PORT=19801
export VIGCOIN_WALLET_PORT=19802
export VIGCOIN_EXTRA=""

```

2. run image

```

docker run -d     # Daemon Running
docker run -it    # Interactive Running

```

3. Options


```
-e VIGCOIN_DAEMON_PORT=$VIGCOIN_DAEMON_PORT                     \
-e VIGCOIN_WALLET_PORT=$VIGCOIN_WALLET_PORT                     \
-e VIGCOIN_EXTRA=$VIGCOIN_EXTRA                                 \
-e PASSWORD=$VIGCOIN_WALLET_PASSWORD                            \
-p 19800:19800                                                  \
-p 19801:19801                                                  \
-p 19802:19802                                                  \
-p 5555:5555                                                    \
-p 6666:6666                                                    \
-p 7777:7777                                                    \
-p 8888:8888                                                    \
-p 8080:8080                                                    \
-p 8119:8119                                                    \
-v $VIGCOIN_HOME/wallet:/wallet                                 \
-v $VIGCOIN_HOME/data:/data                                     \
-v $VIGCOIN_HOME/log:/var/log                                   \
-v $VIGCOIN_HOME/root/.vigcoin:/root/.vigcoin                   \
-v $VIGCOIN_HOME/pool/config:/pool/config                       \
-v $VIGCOIN_HOME/www/config:/www/config                         \
vigcoin/pool

````

## Testing

1. Set Env

```
# set wallet password
export VIGCOIN_WALLET_PASSWORD=#YOUR_PASSWORD

# set vig home data directory
export VIGCOIN_HOME=$HOME/vigcoin
export VIGCOIN_DAEMON_PORT=29801
export VIGCOIN_WALLET_PORT=29802

# set test env
export VIGCOIN_EXTRA="--allow-local-ip --testnet"
```

2. Run image

```

docker run -d     # Daemon Running
docker run -it    # Interactive Running

```

3. Options


```
-e VIGCOIN_DAEMON_PORT=$VIGCOIN_DAEMON_PORT                     \
-e VIGCOIN_WALLET_PORT=$VIGCOIN_WALLET_PORT                     \
-e VIGCOIN_EXTRA="$VIGCOIN_EXTRA"                               \
-e PASSWORD=$VIGCOIN_WALLET_PASSWORD                            \
-p 29800:29800                                                  \
-p 29801:29801                                                  \
-p 29802:29802                                                  \
-p 5555:5555                                                    \
-p 6666:6666                                                    \
-p 7777:7777                                                    \
-p 8888:8888                                                    \
-p 8080:8080                                                    \
-p 8119:8119                                                    \
-v $VIGCOIN_HOME/wallet:/wallet                                 \
-v $VIGCOIN_HOME/data:/data                                     \
-v $VIGCOIN_HOME/log:/var/log                                   \
-v $VIGCOIN_HOME/root/.vigcointest:/root/.vigcointest           \
-v $VIGCOIN_HOME/pool/config.test:/pool/config                  \
-v $VIGCOIN_HOME/www/config:/www/config                         \
vigcoin/pool

````

