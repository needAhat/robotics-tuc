function output = rotationMatrixHomogeneous(rotMatrix)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
rotMatrixHom = [];
output = [];

rotMatrixHom = [[rotMatrix(:,1); 0], [rotMatrix(:,2); 0], [rotMatrix(:,3); 0], [0; 0; 0; 1]];

fprintf('Homogeneous 4X4 Rotation Matrix.\n');
output = rotMatrixHom;
end