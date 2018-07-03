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
irb(main):001:0> require 'neptune/local'
=> true
irb(main):002:0> neptune = Neptune::Local::Server.new
=> #<Neptune::Local::Server:0x00007fa7cb05d0a0 @debug=nil, @gremlin_home=nil, @gremlin_yaml=nil, @log_dir=nil, @pid_dir=nil, @runas=nil, @java_home=nil, @java_options=nil>
irb(main):003:0> neptune.start
Server started 4085.
=> nil
irb(main):004:0> neptune.restart
Server stopped [4085]
Server started 4114.
=> nil
irb(main):005:0> neptune.stop
Server stopped [4114]
=> nil

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/garymacindoe/neptune-local.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
