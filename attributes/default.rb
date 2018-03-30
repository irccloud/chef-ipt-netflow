## Installation options
default['ipt-netflow']['git_repo'] = 'git://github.com/aabc/ipt-netflow.git'
default['ipt-netflow']['version'] = '2.3'

## Module options (nil -> use module default)
# For documentation of these options see:
#   https://github.com/aabc/ipt-netflow/blob/master/README
default['ipt-netflow']['config']['destination'] = '127.0.0.1:2055'
default['ipt-netflow']['config']['protocol'] = 10
default['ipt-netflow']['config']['sampler'] = nil
default['ipt-netflow']['config']['natevents'] = nil
default['ipt-netflow']['config']['inactive_timeout'] = nil
default['ipt-netflow']['config']['active_timeout'] = nil
default['ipt-netflow']['config']['refresh-rate'] = nil
default['ipt-netflow']['config']['timeout-rate'] = nil
default['ipt-netflow']['config']['debug'] = nil
default['ipt-netflow']['config']['sndbuf'] = nil
default['ipt-netflow']['config']['hashsize'] = nil
default['ipt-netflow']['config']['maxflows'] = nil
default['ipt-netflow']['config']['aggregation'] = nil
default['ipt-netflow']['config']['snmp-rules'] = nil
default['ipt-netflow']['config']['scan-min'] = nil
default['ipt-netflow']['config']['promisc'] = nil
default['ipt-netflow']['config']['exportcpu'] = nil
default['ipt-netflow']['config']['engine_id'] = nil
