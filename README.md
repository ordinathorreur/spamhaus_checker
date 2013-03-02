# SpamhausChecker

Gem to find whether Ip for server is listed in zen.spamhaus.org DNSBL( or any other)

## Installation

Add this line to your application's Gemfile:

    gem 'spamhaus_checker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spamhaus_checker

## Usage
    
    require 'spamhaus_checker/zen'
    SpamhausChecker::ZEN.new("some address here").is_blacklisted?

## Comments 
    
    Gem is tested only for IPv4 protocol, 
    no validation for IP address added yet, no tests for IPv6 provided.

## TODO 
    
    1. Solve an issue with tests, right now it works good only if I define direct nameserver for query, this is not how it's suposed to work
    2. Add validation for IPv4 addresses
    3. Add ability to run query for list of servers
    4. Add compatibility for IPv6 names
    
