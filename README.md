# Chef Jenkins repo

This repo is a collection of recipes to setup a Jenkins CI server.

## Setup

First of all this is a Chef repo, you need to have it installed in order to run.

Also you need to have Vagrant. You can download and install it from:
``https://www.vagrantup.com/downloads.html``

## How to run test

This project uses `kitchen` to setup and run tests.

```
bundle install
bundle exec kitchen create
bundle exec kitchen converge
bundle exec rake test
```
