name              "protobuf"
maintainer        "Brian Flad"
maintainer_email  "bflad417@gmail.com"
license           "Apache 2.0"
description       "Installs/Configures Protocol Buffer"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.1.0"
recipe            "protobuf", "Installs Protocol Buffer"
recipe            "protobuf::archive", "Installs protobuf via archive"
recipe            "protobuf::package", "Installs protobuf via package"
recipe            "protobuf::package_cpp", "Installs protobuf C++ packages"
recipe            "protobuf::package_java", "Installs protobuf Java packages"
recipe            "protobuf::package_python", "Installs protobuf Python packages"

%w{ centos fedora redhat ubuntu }.each do |os|
  supports os
end

%w{ apt build-essential yum }.each do |cb|
  depends cb
end