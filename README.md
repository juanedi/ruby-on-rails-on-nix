# README

## Set up

``` sh
> cd ruby-on-rails-on-nix # enter this directory
> direnv allow # let direnv load the nix environment. go and make some coffee
> bundle config build.sassc --disable-lto # workaround for a weird libsass bug when using nix
> bundle install --path=.bundle # install ruby gems. go and drink that coffee
```

## Running the app

Just run `rails s`! All executables you may need (`rails`, `rake`, `sqlite3`, `yarn`) should already be available in your shell.

## Inspecting the DB

This app uses SQLite, which keeps all the database in a single file. The DB used here for development lives in `db/development.sqlite3`.

You should be able to open that in a database client like [TablePlus](https://tableplus.com/) and inspect the state of the database.

## Adding gems to the project

Just add them in the Gemfile and then run `bundle`!
