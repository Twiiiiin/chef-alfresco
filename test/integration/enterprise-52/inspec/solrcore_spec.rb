control 'alfresco-05' do
  impact 0.5
  title 'Solr core properties'

  describe file('/usr/share/tomcat/alf_data/solrhome/archive-SpacesStore/conf/solrcore.properties') do
    it { should exist }
    it { should be_file }
    its('content') { should match 'alfresco.postfilter=true' }
  end

  describe file('/usr/share/tomcat/alf_data/solrhome/workspace-SpacesStore/conf/solrcore.properties') do
    it { should exist }
    it { should be_file }
    its('content') { should match 'alfresco.postfilter=true' }
  end
end
