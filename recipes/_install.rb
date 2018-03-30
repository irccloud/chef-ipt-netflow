# Install and build ipt_NETFLOW from git

package ['git', 'dkms', 'build-essential', 'iptables-dev', 'pkg-config', 
         'libsnmp-dev', "linux-headers-#{node['kernel']['release']}"]

src_dir = "/usr/src/ipt-netflow-#{node['ipt-netflow']['version']}"

git src_dir do
  repository "git://github.com/aabc/ipt-netflow.git"
  revision "v#{node['ipt-netflow']['version']}"
end

bash "dkms build" do
  code %{
    /usr/sbin/dkms add -m ipt-netflow -v #{node['ipt-netflow']['version']}
    /usr/sbin/dkms build -m ipt-netflow -v #{node['ipt-netflow']['version']}
    /usr/sbin/dkms install -m ipt-netflow -v #{node['ipt-netflow']['version']}
  }
  not_if "dkms status -m ipt-netflow -v #{node['ipt-netflow']['version']} | grep installed"
end

# We need to build the modules for the command-line tools separately from the kernel module
bash "install iptables cli modules" do
  code %{
    cd #{src_dir}
    ./configure
    make
    cp libip*_NETFLOW.so /lib/xtables/
    make clean
  }
  not_if { File.exist?("/lib/xtables/libipt_NETFLOW.so") }
end
