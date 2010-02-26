use File::Which;
File::Which::which('mogrify') or die("Is ImageMagick installed? Can't find path to mogrify executable.");

use ExtUtils::MakeMaker;

WriteMakefile(

   NAME => 'imgtrim',
   VERSION_FROM   => 'bin/imgtrim',
   ABSTRACT_FROM  => 'bin/imgtrim',      
   LICENSE        => 'perl',   
   AUTHOR         => 'Leo Charre leocharre at cpan dot org',   
   EXE_FILES => [qw(bin/imgtrim)],
   
   # gen /usr/bin/pmused by Fri Jan 29 11:31:04 EST 2010 
   PREREQ_PM => {
      'LEOCHARRE::CLI'                    => '1.19',
      'String::ShellQuote'                => 0,
   },

);


