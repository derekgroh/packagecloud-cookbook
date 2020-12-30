if os['family'] == 'rhel'
  describe file('/etc/yum.repos.d/github_git-lfs.repo') do
    it { should exist }
  end
end

if os['family'] == 'ubuntu'
  describe file('/etc/apt/sources.list.d/github_git-lfs.repo') do
    it { should exist }
  end
end
