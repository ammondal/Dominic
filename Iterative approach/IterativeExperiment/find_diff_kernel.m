% Author: Dominic Bett
% Bioinformatics Project: Diffusion Kernel(Matrix Exponential)

disp('Computing the diffusion kernel...')
[data, varnames, casenames] = tblread('/Users/dbett/Dropbox/CONFERENCES/ERN copy/IterativeExperiment/Laplacian4/lapl_Asthma_and_Allergy.txt', '\t');
diff_kernel = expm(data);
tblwrite(diff_kernel,varnames,casenames,'/Users/dbett/Dropbox/CONFERENCES/ERN copy/IterativeExperiment/Diffusion4/diff_Asthma_and_Allergy.txt','\t');
disp('Done!')