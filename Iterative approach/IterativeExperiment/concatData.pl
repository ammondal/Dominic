#! /usr/bin/perl
# Author: Dominic Bett
# Bioinformatics Project: Concatenate Data

use strict;
use warnings;
use laplacian;

my $input1FName = "Data3/expt_Asthma_and_Allergy.txt";
my $input2FName = "Results3/res_Asthma_and_Allergy.txt";

my $data1Ref = readFileToArray($input1FName);
my $data2Ref = readFileToArray($input2FName);

my @concatData = grep { /\S/ } (@$data1Ref, @$data2Ref);

my $dataPath = "Data4/expt_Asthma_and_Allergy.txt";
writeCleanPPIsToFile($dataPath, \@concatData);

exit;