# encoding: utf-8
# copyright: 2015, The Authors
# license: All rights reserved

title 'Windows 7 Security log'



control 'windows-audit-101' do
  impact 0.1
  title 'Configure System Event Log (Security)'
  desc 'Only appies for Windows 2008 and newer'
  describe registry_key('HKLM\Software\Policies\Microsoft\Windows\EventLog\Security') do
    it { should exist }
    its('MaxSize') { should eq 100032 }
  end
end

control 'windows-audit-102' do
  impact 0.1
  title 'Configure System Event Log (Security)'
  desc 'Only appies for Windows 2008 and newer'
  describe registry_key('HKLM\Software\Policies\Microsoft\Windows\EventLog\Security') do
    it { should exist }
    its('Retention') { should eq 2 }
  end
end
