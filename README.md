# Bonga [![Build Status](https://travis-ci.org/niclin/Bonga.svg?branch=master)](https://travis-ci.org/niclin/Bonga)

Leave-Management-System on Rails

![Bonga Logo](https://github.com/niclin/Bonga/blob/master/public/front-end/Bonga.jpg)

## Requirements

* Ruby 2.3.2
* Rails 5

## Installation

```
$ git clone git@github.com:niclin/Bonga.git
$ cd bonga

$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
```

## generate admin user

```
$ bundle exec rake db:seed
```

## coding style

```
$ gem install rubocop
$ rubocop
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Issues


If you have problems, please create a [Github issue](https://github.com/niclin/Bonga/issues).


##License

Copyright (C) 2016 by Pakogi
