sudo apt-get update

sudo apt-get install -y make
sudo apt-get install -y python-pip

sudo pip install redis

sudo wget --progress=bar:force http://download.redis.io/releases/redis-3.0.5.tar.gz
sudo tar xzf redis-3.0.5.tar.gz

sudo chown -R vagrant redis-3.0.5.tar.gz
sudo chgrp -R vagrant redis-3.0.5.tar.gz
sudo chown -R vagrant redis-3.0.5
sudo chgrp -R vagrant redis-3.0.5

cd redis-3.0.5
make

src/redis-server &
