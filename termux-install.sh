pkg upgrade -y
pkg install -y perl
pkg install -y make
pkg install -y clang
pkg install -y curl
pkg install -y wget
pkg install -y lftp
cpan install CPAN
cpan reload
cpan install local::lib
cpan install App::Log4perl
wget http://search.cpan.org/CPAN/authors/id/O/OA/OALDERS/HT
tar zxf HTTP-Message-6.14.tar.gz
cd HTTP-Message-6.14/
perl Makefile.PL
make
make test
make install
wget http://search.cpan.org/CPAN/authors/id/E/ET/ETHER/libw
tar zxf libwww-perl-6.31.tar.gz
cd libwww-perl-6.31/
perl Makefile.PL
make
make test
make install
cpan install Getopt::Long
cpan install HTTP::Request
cpan install LWP::UserAgent
cpan install IO::Select
cpan install HTTP::Cookies
cpan install HTTP::Response
cpan install Term::ANSIColor
cpan install URI::URL
cpan install IO::Socket::INET
cpan install Try::Tiny
echo "All ok";
echo "[✔] Now You can run tool [✔]";
