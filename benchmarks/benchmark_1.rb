require "bundler/setup"
require "benchmark"
require_relative "../lib/sum"

Benchmark.bm do |x|
  x.report("ruby - 1000")     { (1..1000).to_a.each {Sum.add_ruby(3,2)} }
  x.report("go - 1000")       { (1..1000).to_a.each {Sum.add_go(3,2)} }
  x.report("ruby - 100000")   { (1..100000).to_a.each {Sum.add_ruby(3,2)} }
  x.report("go - 100000")     { (1..100000).to_a.each {Sum.add_go(3,2)} }
end
