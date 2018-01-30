if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/XAttacker"
    BIN_DIR="$PREFIX/bin/"
    BASH_PATH="$PREFIX/bin/bash"
    TERMUX=true
    pkg install -y git perl make
    wget http://search.cpan.org/CPAN/authors/id/O/OA/OALDERS/HTTP-Message-6.14.tar.gz
    tar zxf HTTP-Message-6.14.tar.gz
    cd HTTP-Message-6.14/ && perl Makefile.PL && make && make test && make install
    wget http://search.cpan.org/CPAN/authors/id/E/ET/ETHER/libwww-perl-6.31.tar.gz
    tar zxf libwww-perl-6.31.tar.gz
    cd libwww-perl-6.31/ && perl Makefile.PL && make && make test && make install
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
else
    INSTALL_DIR="/usr/share/doc/XAttacker"
    BIN_DIR="/usr/bin/"
    BASH_PATH="/bin/bash"
    TERMUX=false
    apt-get install -y git python
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[◉] A directory fsociety was found! Do you want to replace it? [Y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        if [ "$TERMUX" = true ]; then
            rm -rf "$INSTALL_DIR"
        else
            sudo rm -rf "$INSTALL_DIR"
        fi
    else
        echo "[✘] If you want to install you must remove previous installations [✘] ";
        echo "[✘] Installation failed! [✘] ";
        exit
    fi
fi
echo "[✔] Cleaning up old directories...";
if [ -d "$ETC_DIR/XAttacker" ]; then
    echo "$DIR_FOUND_TEXT"
    if [ "$TERMUX" = true ]; then
        rm -rf "$ETC_DIR/XAttacker"
    else
        sudo rm -rf "$ETC_DIR/XAttacker"
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://github.com/XAttacker/XAttacker "$INSTALL_DIR";
echo "#!$BASH_PATH
perl $INSTALL_DIR/XAttacker.pl" '${1+"$@"}' > XAttacker;
if [ "$TERMUX" = true ]; then
    cp XAttacker "$BIN_DIR"
else
    sudo cp XAttacker "$BIN_DIR"
fi
rm XAttacker;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Tool installed successfully! [✔]";
    echo "";
    echo "[✔]====================================================================[✔]";
    echo "[✔]      All is done!! You can execute tool by typing XAttacker !       [✔]";
    echo "[✔]====================================================================[✔]";
    echo "";
else
    echo "[✘] Installation failed! [✘] ";
    exit
fi
