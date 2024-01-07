function output = solveWIthDHmat(dhMat)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Tmat = [];
matricesToMultiply = [];
Imat = eye(4);

    if size(dhMat, 2) > 4
            % If the matrix has more than 4 columns, return a function
            output = 'Your HD Matrix hase more than 4 columns!';
    else
        for i = 1 : size(dhMat, 1)
            
            translationMatrixRi = translationMatrix(0, 0, dhMat(i,3))
            rotationMatrixZthetai = rotationMatrixHomogeneous(rotationMatrix('z',dhMat(i,4)))
            translationMatrixDi = translationMatrix(dhMat(i,1), 0, 0)
            rotationMatrixXai = rotationMatrixHomogeneous(rotationMatrix('x',dhMat(i,2)))
            
            
            
            Tmat = translationMatrixRi * rotationMatrixZthetai * translationMatrixDi * rotationMatrixXai
            
            matricesToMultiply = Imat * Tmat
        end

        pointVector = matricesToMultiply(:,4);
        pointVector(end) = [];

        fprintf('End point coordinated are:\n');
        output = pointVector; %matricesToMultiply(:,4);
    end
end