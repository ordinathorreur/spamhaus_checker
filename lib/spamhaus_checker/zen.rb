require 'rubygems'
require 'net/dns'
module SpamhausChecker
  class ZEN
    attr_reader :server_ip, :answer
    def initialize(server_ip, zen_domain= "zen.spamhaus.org")
      @server_ip = server_ip
      resolver = Net::DNS::Resolver.new( :dns_search => false)
      reversed_ip = server_ip.to_s.split(".").reverse.join(".")
      @answer = resolver.query([reversed_ip, zen_domain].join("."))
    end

    def is_blacklisted?
      @answer.header.anCount > 0
    end
  end
end
