# statuscake-rb

This README outlines the details of collaborating on this Ruby gem. A short
introduction of this gem could easily go here.

## Prerequisites

You will need the following things properly installed on your computer.

* [Ruby](https://www.ruby-lang.org/en/): any one of the **three latest major**
  [releases](https://www.ruby-lang.org/en/downloads/)

## Installation

### RubyGems

Using [RubyGems](https://rubygems.org/gems/statuscake-rb), add the following to
`Gemfile`:

```ruby
gem 'statuscake-rb'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself:

```bash
$ gem install statuscake-rb
```

### GitHub

Installing the latest version from GitHub:

```bash
$ git clone https://github.com/StatusCakeDev/statuscake-rb
$ cd statuscake-rb
$ bundle install
$ bundle exec rake install
```

## Usage

Import the gem from any Ruby file, instantiate an API client and execute a
request:

```ruby
require 'statuscake'

client = StatusCake::ApiClient.new

# Constructing these options is a temporary fix until a client wide
# authentication mechanism has been realised.
opts = { header_params: { 'Authorization' => "Bearer #{api_token}" } }

service = StatusCake::UptimeApi.new(client)
service.list_uptime_tests(opts)
```

## License

This project is licensed under the [MIT License](LICENSE.md).
