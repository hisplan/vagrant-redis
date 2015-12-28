import redis

r = redis.StrictRedis(host='172.16.200.220', port=6379, db=0)

r.set("foo", "bar")

print r.get("foo")

