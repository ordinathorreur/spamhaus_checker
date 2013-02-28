require "spamhaus_checker/version"
module SpamhausChecker

  class SBLChecker
    attr_accessor :server_ip
    def initialize
      Net::DNS::Resolver.start(server_id.to_s + "sbl.spamhaus.org").header.anCount
    end
  end
end
