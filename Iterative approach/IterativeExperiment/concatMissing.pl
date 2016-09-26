#! /usr/bin/perl
# Author: Dominic Bett
# Bioinformatics Project: Concatenate Data

use strict;
use warnings;
use laplacian;

my @inputFNames = ("../Experiment/Results/res_Network_950.txt",
					"Results1/res_Network_950.txt",
					"Results2/res_Network_950.txt",
					"Results3/res_Network_950.txt",
					"Results4/res_Network_950.txt");
my @concatMissing = ();

foreach (@inputFNames) {
	my $missingRef = readFileToArray($_);
	@concatMissing = grep { /\S/ } (@concatMissing, @$missingRef);
}

my $dataPath = "TotalMissing/missing_Network_950.txt";
writeCleanPPIsToFile($dataPath, \@concatMissing);

exit;