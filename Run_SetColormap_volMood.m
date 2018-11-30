%Create a custom color palette for BrainNet Viewer.

%Load the .csv file with the significant t-values.
SigRegions = csvread('/data/jux/BBL/projects/pncT1AcrossDisorder/subjectData/JLFvol_signifROIs_mood.csv');

%Define a vector of t values for the significant regions.
TValue = SigRegions(:,1,:);

%Define the colormap to use.
ColorMap_Matrix = autumn;

%Specify the path of the output file.
ResultantFile = '/data/jux/BBL/projects/pncT1AcrossDisorder/images/JLF_vol/autumn_volMood.txt';

%Run the SetColormap function.
SetColormap(TValue, ColorMap_Matrix, ResultantFile)
