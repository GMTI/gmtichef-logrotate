name              'logrotate'
maintainer        'Chef Software, Inc.'
maintainer_email  'cookbooks@chef.io'
license           'Apache 2.0'
description       'Installs logrotate package and provides a definition for logrotate configs'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '1.8.0'

recipe 'logrotate', 'Installs logrotate package'
provides 'logrotate_app'

%w{amazon centos debian fedora redhat scientific solaris2 ubuntu}.each do |platform|
  supports platform
end
