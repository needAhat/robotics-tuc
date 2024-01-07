function output = translationMatrix(pointX, pointY, pointZ)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%pointVector = [pointX; pointY; pointZ; 1];
translMatrix = [];
output = [];

translMatrix = [1 0 0 pointX; 0 1 0 pointY; 0 0 1 pointZ; 0 0 0 1];

fprintf('Homogeneous 4X4 Translation Matrix.\n');
output = translMatrix;
end