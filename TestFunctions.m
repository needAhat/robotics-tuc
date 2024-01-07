%Test
pointA = [2;4;-3];

testMat = translationMatrix(pointA(1), pointA(2), pointA(3));

testmat2 = [[testMat(:,1);69],[testMat(:,2);68]];

matrix = [1 2 3; 4 5 6];

% Get the size of the matrix

% Display the size
%disp(matrixSize(2));

DH = [1 -pi/2 0 0; 0 pi/2 0 0; 1 0 0 0];

solveWIthDHmat(DH)
