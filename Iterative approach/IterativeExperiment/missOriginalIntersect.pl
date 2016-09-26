#! /usr/bin/perl
# Author: Dominic Bett
# Bioinformatics Project: Concatenate Data

use strict;
use warnings;
use laplacian;

my $missingFNames = ("../Experiment/Results/res_Network_500.txt");
my $originalFNames = ("../Experiment/Data/ppi_kernel_Asthma_and_Allergy.txt");

my $missingRef = readFileToArray($missingFNames);
my $originalRef = readFileToArray($originalFNames);

my @intersectPPI = intersect($missingRef, $originalRef);

my $dataPath = "missIntersectOrig/xxxxx_Network_500.txt";
writeCleanPPIsToFile($dataPath, \@intersectPPI);


sub intersect(\@\@) {
	print "Finding the intersecting PPIs...";
	my %e = map { $_ => undef } @{$_[0]};
	return grep { exists( $e{$_} ) } @{$_[1]};
}
exit;