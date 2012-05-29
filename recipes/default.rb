## Author::  Phil Cryer (<pcryer@mbl.edu>)
## Cookbook Name:: virtuoso
## Recipe:: default
##
## Copyright 2012, Woods Hole Marine Biological Laboratory
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
##


#Install Ubuntu Server with SSH Server.
#	sudo apt-get update
#sudo apt-get upgrade
#sudo apt-get dist-upgrade

#sudo apt-get install dpkg-dev build-essential
package "dpkg-dev" do
	  action :install
end
package "build-essential" do
	  action :install
end

# install packages for compiling ruby
# sudo apt-get install libssl-dev libreadline-dev zlib1g-dev libyaml-dev libffi-dev
package "libssl-dev" do
	  action :install
end
package "libreadline-dev" do
	  action :install
end
package "zlib1g-dev" do
	  action :install
end
package "libyaml-dev" do
	  action :install
end
package "libffi-dev" do
	  action :install
end

# # install packages for sqlite
# sudo apt-get install sqlite3 libsqlite3-dev
package "sqlite3" do
	  action :install
end
package "libsqlite3-dev" do
	  action :install
end

# # install packages for passenger
# sudo apt-get install libcurl4-openssl-dev curl libxslt1-dev
package "libcurl4-openssl-dev" do
	  action :install
end
package "curl" do
	  action :install
end
package "libxslt1-dev" do
	  action :install
end

# # Install for Ruby RDF (linkeddata)
# libxslt1-dev
package "libxslt1-dev" do
	  action :install
end

# # Install packages for virtuoso
# sudo apt-get install autoconf automake libtool flex bison gperf gawk m4 make odbcinst libxml2-dev libssl-dev libreadline-dev
package "autoconf" do
	  action :install
end
package "automake" do
	  action :install
end
package "libtool" do
	  action :install
end
package "flex" do
	  action :install
end
package "bison" do
	  action :install
end
package "gperf" do
	  action :install
end
package "gawk" do
	  action :install
end
package "m4" do
	  action :install
end
package "make" do
	  action :install
end
package "odbcinst" do
	  action :install
end
package "libxml2-dev" do
	  action :install
end
package "libssl-dev" do
	  action :install
end
package "libreadline-dev" do
	  action :install
end


# # Install packages for raptor-utils (ruby.rdf see rubygems.org:rdf and blog.datagraph.org/:parsing-rdf-with-ruby
# sudo apt-get install raptor-utils 


# # Install Imagemagick if you want it for Ruby or Virtuoso
# sudo apt-get install imagemagick libmagickcore3-extra netpbm
#
# # Install Ruby from source (Ruby1.9.3-p125)
#
# mkdir src
#
# cd src
#
# wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p125.tar.gz
#
# tar xzf ruby-1.9.3-p125.tar.gz
#
# cd ruby-1.9.3-p125
#
# ./configure
#
# make
#
# sudo make install
#
# sudo gem update --system
#
# # Install gems
#
# sudo gem install sqlite3                                                   # Basic Database
#
# sudo gem install rails -v 2.3.8                                           # Change for your version of Rails
#
# sudo gem install passenger                                              # For Passenger
#
# sudo gem install rdf rdf-raptor rdf-json rdf-trix sparql-client   # For Ruby RDF Gems
#
# cd .. # to get back to ~/src
#
# git clone https://github.com/openlink/virtuoso-opensource.git
#
# cd virtuoso-opensource-6.1.5
#
# # Set cflags for 64-bit Linux compile
#
# CFLAGS="-O2 -m64"
#
# export CFLAGS
#
# # View your configuration options
#
# ./configure --help'
#
# # Set configure note this makes isql-v rather than the package version name of isql-vt
#
# ./configure --prefix=/usr/local/ --with-readline --program-transform-name="s/isql/isql-vt/" 
#
# # Make
#
# make
#
# # Make Install
#
# sudo make install
#
# # Make a backup of the default virtuoso.ini, edit it to your specifications (See http://.... for optimal configurations based on RAM memory)
#
# # If you have multiple drives you will get the best performance if you spread your stripe segments across multiple drives. By default your
#
# # database stripes will be in the same directory as the virtuoso.ini file
#
# cd /usr/local/var/lib/virtuoso/db/
#
# sudo cp virtuoso.ini virtuoso.bak2
#
# sudo vi virtuoso.ini
#
# # Change the permissions so you can run virtuoso as a not root user
#
# cd /usr/local/var/lib/virtuoso/
#
# sudo chown -R yourlogin db
#
# sudo chown -R yourlogin db
#
# # Start Virtuoso
#
# cd /usr/local/var/lib/virtuoso/db/
#
# virtuoso-t -d     #debug mode, will quit when you log out
#
# virtuoso-t -f &   #persist after logout
#
# # Log into the Web-based conductor interface http://yourip:8890/conductor, choose "System Admin" => "User Accounts"
#
# # change the default passwords for the dba and dav accounts
#
# # Install the VAD packages choose "System Admin" => "Packages"
#
#   Framework
#
#     fct
#
#       isparql
#
#         rdf-mappers
#
#         # If you want to run the sparql interface on a different port than conductor see the page below page
#
#         # Note that isparql, fct will still run on the same interface as conductor.
#
#         # The SPARQL port is manly for services that access sparql directly, humans might prefer isparql
#
#         http://virtuoso.openlinksw.com/dataspace/dav/wiki/Main/VirtTipsAndTricksSPARQLCondPort
#
#

