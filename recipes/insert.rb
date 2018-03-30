# Insert the netflow target into all tables.
# You probably want to use your own firewall configuration recipes for this,
# but this is useful for testing.

execute "/sbin/iptables -I INPUT -j NETFLOW"
execute "/sbin/iptables -I OUTPUT -j NETFLOW"
execute "/sbin/ip6tables -I INPUT -j NETFLOW"
execute "/sbin/ip6tables -I OUTPUT -j NETFLOW"
