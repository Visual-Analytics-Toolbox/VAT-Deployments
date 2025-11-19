# Redis


## Debugging
For debugging purposes you can enter the redis pod as usual and run `redis-cli`.
If you want to check if the django wrote the cache you have to
```bash
# select the db django is using (see settings.py)
SELECT 1 
KEYS *
```
