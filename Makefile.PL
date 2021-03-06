
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Object for hosting automation using Kinghost (www.kinghost.net) v2 Control Panel",
  "AUTHOR" => "Jos\351 Eduardo Perotta de Almeida <eduardo\@web2solutions.com.br>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Kinghost-Painel",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Kinghost::Painel",
  "PREREQ_PM" => {
    "DBI" => 0,
    "HTML::Entities" => 0,
    "HTML::TreeBuilder::XPath" => 0,
    "JSON" => 0,
    "WWW::Mechanize" => 0,
    "strict" => 0,
    "utf8" => 0,
    "warnings" => 0
  },
  "VERSION" => "1.0",
  "test" => {
    "TESTS" => ""
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



