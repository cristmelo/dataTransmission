% DECODER %

% DIGITAL DATA, DIGITAL SIGNALS

x = [0 1 0 0 1 1 0 0 ] % Book's example
	
function ans = NRZ_L( signal_vector )
    n = length( signal_vector )
    for( k = 1:n )
      if( signal_vector(k) == 0 ) ans(k) = 1 else ans(k) = 0 end
    endfor

endfunction


function ans = BIPOLAR_AMI( signal_vector )
    n = length( signal_vector )
    last_number_one = 0; % ZERO indicates last number one was NEGATIVE
    for( k = 1:n )
      if ( signal_vector(k) == 0 ) 
        ans(k) = 0
      elseif( signal_vector(k) == 1 && last_number_one == 0 )
        last_number_one = 1
        ans(k) = 1
      else
          last_number_one = 0
          ans(k) = -1
      endif
    endfor
endfunction

BIPOLAR_AMI( x )