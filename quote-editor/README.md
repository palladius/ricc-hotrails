# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Rails version: 7.1.3.4
* Ruby version: ruby 3.2.2
* Node version (derek): v18.19.1
* System dependencies: initialized with `rails new quote-editor --css=sass --javascript=esbuild --database=postgresql` so:
     * `esbuild`
     * `sass`
     * `postgresql` (but I end up using sqlite)

## PROD URLs

* https://ricc-hotrails-v2-dev-x42ijqglgq-ew.a.run.app/
* https://ricc-hotrails-v2-prod-x42ijqglgq-ew.a.run.app/
* Password for testing are easy to find.


## initialization

```
rails generate simple_form:install
```

## Run locally

```
$ cd quote-editor/
$ bin/setup # on a new machine
$ bundle install
$ bin/dev  # local dev
```
