function s = r4_to_s_left ( r )

%*****************************************************************************80
%
%% R4_TO_S_LEFT writes an R4 into a left justified character string.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    22 November 2003
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, real R, the real number to be written into the string.
%
%    Output, string S, the string into which the real number is to be written.
%
  s = sprintf ( '%f', r );

  return
end
