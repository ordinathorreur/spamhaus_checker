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
    no tests for IPv6 provided.

## TODO 
    
    1. Add ability to run query for list of servers
    2. Add compatibility for IPv6 names
    
