function lambda = householder_eigenvalues ( n, x )

%*****************************************************************************80
%
%% HOUSEHOLDER_EIGENVALUES returns the eigenvalues of a HOUSEHOLDER matrix.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    31 May 2002
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer N, the order of A.
%
%    Input, real X(N,1), the vector that defines the 
%    Householder matrix.
%
%    Output, real LAMBDA(N,1), the eigenvalues.
%
  lambda = zeros ( n, 1 );

  x = x(:);

  lambda(1,1)   = -1.0;
  lambda(2:n,1) = +1.0;

  return
end
