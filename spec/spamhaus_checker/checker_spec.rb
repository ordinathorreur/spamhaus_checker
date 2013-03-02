require 'spec_helper'
require 'spamhaus_checker/zen'
describe "zen checker" do
  it "should return true to first item in DROP list" do
    ip_address = "42.114.38.191" # http://www.spamhaus.org/query/bl?ip=42.114.38.191 
    SpamhausChecker::ZEN.new(ip_address).is_blacklisted?.should == true
  end
end
