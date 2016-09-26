#! /usr/bin/perl
# Author: Dominic Bett
# Bioinformatics Project: Laplacian Matrix Test Program

use strict;
use warnings;
use laplacian;
use Time::HiRes qw(gettimeofday);

my $start = gettimeofday( );

my $inputFName = "Data4/expt_Asthma_and_Allergy.txt";
my $ppiRef = readFileToArray($inputFName);

my $uniquePairsRef = removeDuplicates($ppiRef);

#my $cleanPPIsFile = "../Data/Allergy_and_Asthma.dat";
#writeCleanPPIsToFile($cleanPPIsFile, $uniquePairsRef);

my $uniquePsRef = findUniqueProt($uniquePairsRef);

my $laplacianHRef = findLaplacian($uniquePsRef, $uniquePairsRef);

my $outputFName = "Laplacian4/lapl_Asthma_and_Allergy.txt";
writeMatrixToFile($outputFName, $laplacianHRef, $uniquePsRef);

my $stop = gettimeofday( );

my $lapse =  $stop - $start;
print "Process time = $lapse \n";
print "Done!\n";

exit;