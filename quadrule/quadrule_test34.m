function quadrule_test34 ( )

%*****************************************************************************80
%
%% QUADRULE_TEST34 tests LEGENDRE_SET_X2_01 and SUM_SUB
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    19 October 2009
%
%  Author:
%
%    John Burkardt
%
  order_max = 8;

  nfunc = func_set ( 'COUNT', 'DUMMY' );

  a = 0.0;
  b = 1.0;

  nsub = 1;
  xlo = 0.0;
  xhi = 1.0;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'QUADRULE_TEST34\n' );
  fprintf ( 1, '  LEGENDRE_SET_X2_01 sets up Gauss-Legendre quadrature\n' );
  fprintf ( 1, '    for integrating X*X * F(X) over [0,1];\n' );
  fprintf ( 1, '  SUM_SUB carries it out.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  The integration interval is [%f, %f]\n', a, b );
  fprintf ( 1, '  Number of subintervals is %d\n', nsub );
  fprintf ( 1, '  Quadrature order will vary.\n' );
  fprintf ( 1, '  Integrand will vary.\n' );
  fprintf ( 1, '\n' );

  for ilo = 1 : 5 : nfunc

    ihi = min ( ilo + 4, nfunc );

    fprintf ( 1, '\n' );
    fprintf ( 1, '    ' );
    for i = ilo : ihi
      fprintf ( '%14s', fname(i) );
    end
    fprintf ( 1, '\n' );
    fprintf ( 1, '\n' );

    for norder = 1 : order_max

      fprintf ( 1, '  %2d', norder );

      for i = ilo : ihi

        func_set ( 'SET', i );

        [ xtab, weight ] = legendre_set_x2_01 ( norder );

        result(i) = sum_sub ( @func, a, b, nsub, norder, xlo, xhi, ...
          xtab, weight );

        fprintf ( 1, '  %12f', result(i) );

      end

      fprintf ( 1, '\n' );

    end

  end

  return
end
