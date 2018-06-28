# Neptune::Local

Wraps installation and usage of the Apache Tinkerpop Gremlin Server version 3.3.2 (upon which AWS Neptune is based).

Inspired by the [Dynamodb::Local](https://github.com/jhuckabee/dynamodb-local) gem for DynamoDB.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'neptune-local'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install neptune-local

## Usage

```ruby
> require 'neptune/local'

> Neptune::Local::Server.start
Server started 6388.

> Neptune::Local::Server.stop
Server stopped [6388]
```

Configuration can be done via [environment variables](http://tinkerpop.apache.org/docs/3.3.2/reference/#_configuring_2).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/garymacindoe/neptune-local.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
