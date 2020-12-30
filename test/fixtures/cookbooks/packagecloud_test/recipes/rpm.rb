include_recipe 'packagecloud_test::distro_deps'

packagecloud_repo 'github/git-lfs' do
  type 'rpm'
end


