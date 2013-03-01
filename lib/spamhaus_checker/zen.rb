require 'rubygems'
require 'net/dns'
module SpamhausChecker
  class Zen
    attr_reader :server_ip
    def initialize(server_ip)
      @answer = Net::DNS::Resolver.start(server_ip.to_s + ".zen.spamhaus.org")
    end

    def blacklisted?
      @answer.header.anCount > 0
    end
  end
end
