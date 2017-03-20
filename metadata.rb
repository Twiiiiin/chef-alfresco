name             'alfresco'
maintainer       'Alfresco T&A'
maintainer_email 'enzo.rivello@alfresco.com'
license          'Apache 2.0'
description      'Installs Alfresco Community and Enterprise Edition.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
issues_url       'https://github.com/Alfresco/chef-alfresco/issues'
source_url       'https://github.com/Alfresco/chef-alfresco'
version '0.7.27'

supports 'centos', '>= 7.0'
supports 'redhat', '>= 7.0'

# Resolved by Berkshelf, not present in Supermarket or forked
depends 'file'
depends 'tomcat'
depends 'maven'
depends 'commons'
depends 'alfresco-webserver', '~> 0.7.4'
depends 'nginx-hardening', '~> 1.1.0'

# Community cookbooks
depends 'activemq', '>= 1.3.3'
depends 'artifact-deployer', '>= 0.8.18'
depends 'database', '>= 4.0.6'
depends 'ffmpeg', '>= 0.4.4'
depends 'haproxy', '~> 1.6.6'
depends 'imagemagick', '>= 0.2.3'
depends 'java', '>= 1.31.0'
depends 'libreoffice', '>= 0.0.2'
depends 'line', '>= 0.6.2'
depends 'logstash-forwarder', '>= 0.1.1'
depends 'mysql', '~> 7.2'
depends 'mysql2_chef_gem', '>= 1.0.1'
depends 'openssl', '>= 4.0.0'
depends 'postgresql', '>= 3.4.18'
depends 'rsyslog', '>= 1.15.0'
depends 'swftools', '>= 0.2.4'
depends 'yum-epel'
depends 'yum-atrpms', '>= 0.1.0'
