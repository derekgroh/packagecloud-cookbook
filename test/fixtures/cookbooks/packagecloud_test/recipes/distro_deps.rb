case node['platform_family']
when 'rhel', 'fedora', 'amazon'
  package %w(ruby rubygems)
when 'debian'
  apt_update 'update'
  package %w(ruby dpkg-dev)
  package 'rubygems' unless node['platform_version'].to_f == 14.04
end
