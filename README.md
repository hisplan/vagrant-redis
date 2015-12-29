# Vagrant box for Redis v3.0.5

## Installation

```bash
vagrant up
```

This will automatically start up the server as well.


## IP / Port

- IP : 172.16.200.220
- Port : 6379


## Verification

```bash
vagrant ssh
cd ~/redis-3.0.5/src
./redis-cli
```

Send `PING` command. You should get `PONG` back.


## Running Examples

```bash
pip install redis
```

```bash
python examples/test.py
```
