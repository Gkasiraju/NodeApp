# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer kasi123

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://34.121.172.109:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
