name 'ipt-netflow'
maintainer 'IRCCloud Ltd'
maintainer_email 'russ@irccloud.com'
license 'Apache-2.0'
description 'Installs, loads, and configures the ipt_NETFLOW kernel module'
long_description 'Installs, loads and configures the ipt_NETFLOW kernel module'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
supports 'ubuntu', '>= 16.04'
supports 'debian' # probably
issues_url 'https://github.com/irccloud/chef-ipt-netflow/issues'
source_url 'https://github.com/irccloud/chef-ipt-netflow'

depends "sysctl"
