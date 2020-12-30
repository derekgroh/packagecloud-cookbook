include_recipe 'packagecloud_test::distro_deps'

if node['platform_version'].to_i < 8
  packagecloud_repo 'computology/packagecloud-cookbook-test-private' do
    type 'gem'
    master_token '762748f7ae0bfdb086dd539575bdc8cffdca78c6a9af0db9'
  end
end

if platform?('centos') && node['platform_version'].to_i < 8
  gem_package 'jakedotrb' do
    options '--bindir /usr/local/bin'
    version '0.0.1'
  end
end
