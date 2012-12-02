function value = f ( xy, t )

%*****************************************************************************80
%
%% F evaluates the right hand side of the heat equation.
%
%  Discussion:
%
%    This routine must be changed by the user to reflect a particular problem.
%
%  Modified:
%
%    26 February 2004
%
%  Author:
%
%    Jochen Alberty, Carsten Carstensen, Stefan Funken.
%
%  Reference:
%
%    Jochen Alberty, Carsten Carstensen, Stefan Funken,
%    Remarks Around 50 Lines of MATLAB:
%    Short Finite Element Implementation,
%    Numerical Algorithms,
%    Volume 20, pages 117-137, 1999.
%
%  Parameters:
%
%    Input, real XY(N,M), contains the M-dimensional coordinates of N points.
%
%    Output, VALUE(N), contains the value of the right hand side of Laplace's
%    equation at each of the points.
%
  n = size ( xy, 1 );

  value(1:n) = 0;

  return
end