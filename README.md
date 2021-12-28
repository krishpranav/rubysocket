# rubysocket
Socket implementation in ruby

## Installing:
```bash
$ gem install rubysocket-client
```

## RubySocket Tutorial:

- example:

```ruby
require 'RubySocket'

client = RubySocket.connect("https://google.com") do
  before_start do
    on_message {|message| puts "incoming message: #{message}"}
    on_event('news') { |data| puts data.first} 
  end
end
```