function DC = DiceCoeff(A,B)
-------------------------------------------------------------------------------------------
if nargin<2
    error('The function requires two input-vectors')
end
if (sum(A==0) + sum(A==1)) < length(A)
    error('Input A must be binary (0,1) !!!')
end
  
if (sum(B==0) + sum(B==1)) < length(B)
    error('Input B must be binary (0,1) !!!')
end
       
DC = 2*(sum(A.*B))/sum(A + B);