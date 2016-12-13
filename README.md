This is a basic Docker container that run a cron deamon that push some notification through Slack.

Features:
  - use an image derived from the ruby:2.3.1-alpine image
  - can be configurated for test or production environment
  - use the [whenever](https://github.com/javan/whenever) gem for writing and deploying cron jobs
  - in test environment simply send a notification through Slack every 2 minutes

Check the environment variables stored in '.env.prod' and '.env.test' files. Be careful and don't share (commit) these files.


### Commands

Build and run

```sh
$ docker build --rm -t alpine_w_cron .
$ docker run -it --name=alpine_w_cron_1 --env-file=.env.test alpine_w_cron
```


Stop, remove container and image

```sh
$ docker stop alpine_w_cron_1
$ docker rm alpine_w_cron_1
$ docker rmi alpine_w_cron
```
