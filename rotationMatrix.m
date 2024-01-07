function output = rotationMatrix(axis, angle)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
rotMatrix = [];
output = [];

switch axis
    case 'x'
        % Code block to execute when variable is X.
        fprintf('Rotation axis is %s.\n', axis);
        rotMatrix = [1 0 0; 0 cos(angle) -sin(angle); 0 sin(angle) cos(angle)]

    case 'y'
        % Code block to execute when variable is Y.
        fprintf('Rotation axis is %s.\n', axis);
        rotMatrix = [cos(angle) 0 sin(angle); 0 1 0; -sin(angle) 0 cos(angle)]

    case 'z'
        % Code block to execute when variable is Z.
        fprintf('Rotation axis is %s.\n', axis);
        rotMatrix = [cos(angle) -sin(angle) 0; sin(angle) cos(angle) 0; 0 0 1]

    otherwise
        % Code block to execute when variable doesn't match any case.
        fprintf('Variable does not match any case. Accepted values: x, y, z\n');
end

fprintf('3X3 Rotation Matrix for %s axis.\n', axis);
output = rotMatrix;
end