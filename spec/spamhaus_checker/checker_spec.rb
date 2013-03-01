require 'spec_helper'
require 'spamhaus_checker/zen'
describe "zen checker" do
  it "should return true to first item in DROP list" do
    #subnet = HTTParty.get("http://www.spamhaus.org/drop/drop.lasso").response.body.split("\n").grep(/([0-9]{1,3}\.){3}/).first.split(".").grep /\A[0-9]{1,3}\z/
    #ip_address = subnet << "1"
    ip_address = "91.193.32.254"
    SpamhausChecker::Zen.new(ip_address).blacklisted?.should == true
  end
end
