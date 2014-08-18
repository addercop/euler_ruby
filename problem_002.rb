#!/usr/bin/ruby

fibs = Hash.new{|hash,key| key > 0 ? hash[key] = hash[key-1] + hash[key-2] : hash[key] = 0 }
fibs[1],fibs[2] = 1,1
fibs[100]

puts fibs.values.select{|n| n%2==0 and n < 4000000}.reduce(:+)

