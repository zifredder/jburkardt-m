%*****************************************************************************80
%
%% TRIDIAG_SPARSE_TEST tests TRIDIAG_SPARSE.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'TRIDIAG_SPARSE_TEST\n' );
  fprintf ( 1, '  TRIDIAG_SPARSE is a TESTMAT routine for generating\n' );
  fprintf ( 1, '  a tridiagonal matrix.\n' );
%
%  1) TRIDIAG_SPARSE(N)
%
  fprintf ( 1, '\n' );
  fprintf ( 1, '  1) TRIDIAG_SPARSE(N) returns the (-1,2,-1) \n' );
  fprintf ( 1, '     tridiagonal matrix.\n' );
  fprintf ( 1, '\n' );

  n = 8;
  T = tridiag_sparse ( n )
%
%  2) TRIDIAG_SPARSE(N,A,B,C)
%  A,B,C scalars.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, '  2) TRIDIAG_SPARSE(N,A,B,C), where A, B, and C are \n' );
  fprintf ( 1, '     scalars, returns a scalar tridiagonal matrix.\n' );
  fprintf ( 1, '\n' );

  n = 5;
  T = tridiag_sparse ( n, 1, 2, 3 )
%
%  3) TRIDIAG_SPARSE(N,A,B,C) 
%  A,B,C vectors.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, '  3) TRIDIAG_SPARSE(N,A,B,C), where A, B, and C are\n' );
  fprintf ( 1, '     vectors, returns a vector tridiagonal matrix.\n' );
  fprintf ( 1, '\n' );

  n = 5;
  a = 10 * [2:n]   + [1:n-1];
  b = 10 * [1:n]   + [1:n];
  c = 10 * [1:n-1] + [2:n];

  T = tridiag_sparse ( n, a, b, c )