# docker-healthcheck
A simple docker container that periodically pings healthchecks.io or custom endpoint

Useful for knowing if your VPS went down


`SLEEP_INTERVAL` is in seconds

Usage:

`docker run --restart=always -d -e HEALTHCHECK_URL=https://hc-ping.com/8de8d508-xxx -e SLEEP_INTERVAL=300 airbornelamb/docker-healthcheck`

Or docker-compose:

```yaml
version: '2'

services:
  healthcheck:
    image: airbornelamb/docker-healthcheck
    restart: always
    environment:
      - HEALTHCHECK_URL=https://hc-ping.com/8de8d508-xxx
      - SLEEP_INTERVAL=300
```
