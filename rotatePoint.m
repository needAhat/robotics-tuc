function output = rotatePoint(axis, angle, pointX, pointY, pointZ)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
pointVector = [pointX; pointY; pointZ];
rotMatrix = [];
output = [];

rotMatrix = rotationMatrix(axis, angle);

fprintf('Point coordinates in the new system after rotation on %s axis.\n',axis);
output = rotMatrix * pointVector;
end