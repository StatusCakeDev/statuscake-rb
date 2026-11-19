# statuscake-rb [![test](https://github.com/StatusCakeDev/statuscake-rb/actions/workflows/test.yaml/badge.svg?event=push)](https://github.com/StatusCakeDev/statuscake-rb/actions/workflows/test.yaml)

The [Ruby](https://www.ruby-lang.org/en/) implementation of the [StatusCake
API][api-docs] client. Documentation for this library can be found on the
[StatusCake Developer Portal][guides].

## Prerequisites

You will need the following things properly installed on your computer:

- [Ruby](https://www.ruby-lang.org/en/): any one of the **three latest major**
  [releases](https://www.ruby-lang.org/en/downloads/releases/)

## Installation

### RubyGems

Using [RubyGems](https://rubygems.org/gems/statuscake-rb), add the following to
`Gemfile`:

```ruby
gem 'statuscake-rb', require: 'statuscake'
```

And then execute:

```bash
bundle install
```

Or install it yourself:

```bash
gem install statuscake-rb
```

### GitHub

Installing the latest version from GitHub:

```bash
git clone https://github.com/StatusCakeDev/statuscake-rb
cd statuscake-rb
bundle install
bundle exec rake install
```

## Usage

Require the gem from any Ruby file, instantiate an API client and execute a
request:

```ruby
require 'statuscake'

client = StatusCake::Client.new(ENV.fetch('STATUSCAKE_API_TOKEN'))

begin
  tests = client.uptime.list_uptime_tests
  puts tests.data.map(&:name)
rescue StatusCake::ApiError => e
  puts e.message
  pp e.errors
end
```

## Examples

The [`examples`](examples) directory has a program for each kind of check, which
creates, reads, updates, lists and deletes it. They create resources in your
account, and delete them again before exiting:

```bash
export STATUSCAKE_API_TOKEN=...
ruby -Ilib examples/uptime.rb
```

## License

This project is licensed under the [MIT License](LICENSE).

[api-docs]: https://developers.statuscake.com/api/
[guides]: https://developers.statuscake.com/guides/sdks/introduction
