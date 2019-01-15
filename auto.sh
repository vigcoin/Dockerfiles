docker build $1 -t vigcoin/core core
docker build $1 -t vigcoin/coind coind
docker build $1 -t vigcoin/pool pool
docker build $1 -t vigcoin/one one
docker push vigcoin/one
