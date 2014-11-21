# DingMyBells

Pointless Weekend 2014 Project - something to do with HandBells

##Requirements

Elixir:
```
brew install elixir
```

##Running Locally

Install the project's Elixir dependencies:
```
mix deps.get
```

Then start the web server (also serves as an interactive console simultaneously):
```
iex -S mix
```

View the app at http://localhost:4000

##Testing

...not quite there yet.

##Deploying

This project uses Capistrano to deploy to a Digital Ocean server.

Install capistrano using bundler:
```
bundle install
```

Then simply:
```
cap deploy
```
