include_recipe "::_install"

execute "Load ipt_NETFLOW Module" do
  command "/sbin/modprobe ipt_NETFLOW"
  not_if "lsmod | grep ipt_NETFLOW"
end

include_recipe "::_configure"
