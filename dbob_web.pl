#!/usr/bin/env perl

use utf8;
use DBI;
use Encode qw(encode decode);
use DateTime;
use LWP::UserAgent;
use Data::Printer;
use Mojo::UserAgent;

use Mojolicious::Lite;

# Documentation browser under "/perldoc"
plugin 'PODRenderer';

my $config = plugin 'Config';

my $DBH = DBI->connect (
    'dbi:mysql:Advpop',
    "$ENV{ADV_DB_ID}",
    "$ENV{ADV_DB_PW}",
    {
        RaiseError        => 1,
        AutoCommit        => 1,
        mysql_enable_utf8 => 1,
        mysql_auto_reconnect => 1,
    },
);

my $sth = $DBH->prepare(qq{ SELECT id, author, title, url, abst, likesum, wdate FROM adv_2010 });
$sth->execute();
my @row = $sth->fetchrow_array;

get '/' => sub {
    my $self = shift;
    
} => 'stlish';

get '/graph' => sub {
    my $self = shift;
    
} => 'graph';

get '/table' => sub {
    my $self = shift;
    
} => 'table';

app->start;
