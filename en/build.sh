yum install gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison iconv-devel sqlite-devel
wget -O rvm.asc https://rvm.io/mpapis.asc
gpg --import rvm.asc
wget -O rvm.sh get.rvm.io
chmod +x rvm.sh
./rvm.sh -s stable
source /etc/profile.d/rvm.sh
rvm reload
rvm requirements run
rvm install 2.6.3
rvm use 2.6.3 --default
gem install jekyll bundler
bundle install
jekyll build