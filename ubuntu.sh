sudo apt-get update
sudo apt-get install -y cmake redis-server git curl supervisor build-essential libboost-all-dev libsodium-dev net-tools

cd $HOME
export APPLICATION=vigcoin
export APPHOME=$HOME/$APPLICATION
mkdir $APPHOME
cd $APPHOME 
git config --global http.postBuffer 1048576000
git clone --depth 1 https://github.com/vigcoin/coin.git coin

cd coin && mkdir build && cd build && cmake .. && make
mkdir $APPHOME/app
cp $APPHOME/coin/build/src/vigcoind $APPHOME/app
cp $APPHOME/coin/build/src/simplewallet $APPHOME/app

mkdir $APPHOME/wallet

git clone https://github.com/vigcoin/pool.git $APPHOME/pool
git clone https://github.com/vigcoin/pool-site.git $APPHOME/www

export ENV_VIGCOIN_EXTRA=
export ENV_PASSWORD='abcd$1234'
export ENV_VIGCOIN_DAEMON_PORT=19801
export ENV_VIGCOIN_WALLET_PORT=19802


crontab <<EOF
@reboot $HOME/vigcoin/app/vigcoind --rpc-bind-ip=0.0.0.0 $ENV_VIGCOIN_EXTRA
@reboot $HOME/vigcoin/app/wallet $HOME/vigcoin/wallet/mywallet.wallet --password $ENV_PASSWORD --daemon-port $ENV_VIGCOIN_DAEMON_PORT --rpc-bind-port $ENV_VIGCOIN_WALLET_PORT --rpc-bind-ip=0.0.0.0 $ENV_VIGCOIN_EXTRA
@reboot $HOME/.nvm/versions/node/v10.24.0/bin/node $HOME/.nvm/versions/node/v10.24.0/bin/pm2 start $HOME/vigcoin/pool/init.js
@reboot $HOME/.nvm/versions/node/v10.24.0/bin/node $HOME/.nvm/versions/node/v10.24.0/bin/http-server $HOME/vigcoin/www
EOF


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 10.24.0
nvm alias default 10.24.0

npm install -g pm2 http-server

## 以下选择添加
npm set chromedriver_cdnurl http://cdn.npm.taobao.org/dist/chromedriver # chromedriver 二进制包镜像
npm set operadriver_cdnurl http://cdn.npm.taobao.org/dist/operadriver # operadriver 二进制包镜像
npm set phantomjs_cdnurl http://cdn.npm.taobao.org/dist/phantomjs # phantomjs 二进制包镜像
npm set fse_binary_host_mirror https://npm.taobao.org/mirrors/fsevents # fsevents 二进制包
npm set sass_binary_site http://cdn.npm.taobao.org/dist/node-sass # node-sass 二进制包镜像
npm set electron_mirror http://cdn.npm.taobao.org/dist/electron/ # electron 二进制包镜像

