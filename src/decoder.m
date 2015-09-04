% DECODER %

% DIGITAL DATA, DIGITAL SIGNALS

x = [1 0 1 0 1 0]
	
function ans = NRZ_L( signal_vector )
    n = length( signal_vector )
    for( k = 1:n )
      if( signal_vector(k) == 0 ) ans( k ) = 1 else ans( k ) = 0 end
    endfor

endfunction

NRZ_L( x )

