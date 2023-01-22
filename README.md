# Ruby Playground

This is a little project to work out how ruby on rails works

## How to run:

On the root folder of this project run:

`docker compose up`

If you're running this for the first time in another machine, open another terminal and run:

`docker compose run web rake db:create`

To run a command on the server container use

`docker compose run web <command>`