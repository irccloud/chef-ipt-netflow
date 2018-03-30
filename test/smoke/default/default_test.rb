# # encoding: utf-8

describe kernel_module('ipt_NETFLOW') do
  it { should be_loaded }
  it { should_not be_disabled }
  it { should_not be_blacklisted }
  its('version') { should eq '2.3' }
end

describe kernel_parameter('net.netflow.protocol') do
  its('value') { should eq 10 }
end

describe iptables do
  it { should have_rule('-A INPUT -j NETFLOW') }
end
