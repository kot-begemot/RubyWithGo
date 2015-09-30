# Sum

Just checking how to extend Ruby with Go module. Here was used Go 1.5. Performance tests are shown below. 
Followed this tutorial

* http://habrahabr.ru/post/266037/

## Installation

Install go 1.5

* http://www.hostingadvice.com/how-to/install-golang-on-ubuntu/

Execute:

    $ bundle

Or install it yourself as:

    $ gem install sum

## Usage

Quite simple. Just call a benchmark

```ruby
ruby benchmarks/benchmark_1.rb
```

## Results

```
       user     system      total        real
ruby - 1000  1.740000   0.000000   1.740000 (  1.742760)
go - 1000  0.030000   0.000000   0.030000 (  0.029840)
ruby - 100000177.150000   0.050000 177.200000 (177.322057)
go - 100000  2.920000   0.010000   2.930000 (  2.934653)
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

