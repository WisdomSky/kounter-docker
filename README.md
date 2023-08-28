# kounter-docker

Docker image for [kounter](https://github.com/kerolloz/kounter).

## Pre-requisite

> You need to create a https://deta.space account. Create a collection and retrieve the `project data key` and add it into the `DETA_PROJECT_KEY` environment variable

## Usage


`docker run`:

    docker run -p 3000:3000 -e DETA_PROJECT_KEY=c0ugfsyic2m_3FajSsr2YuD1wUq4dTHCLAosdxUt8daeR wisdomsky/kounter-docker


`docker-compose.yaml`:

```yaml
services:
  app:
    image: wisdomsky/kounter-docker:latest
    environment:
      HOME_REDIRECT_URL: "https://github.com/WisdomSky/kounter-docker" # Optional
      DETA_PROJECT_KEY: c0ugfsyic2m_3FajSsr2YuD1wUq4dTHCLAosdxUt8daeR
    ports:
      - target: 3000
        published: 3000
        protocol: tcp
```


