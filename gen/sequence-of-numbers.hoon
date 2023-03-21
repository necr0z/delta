:: give me 0 1 4 9 16 25

=/  counter  0
=/  squared  0
|-  ?:  (gth numba 5)
  numba
  squared
%=  $
  counter  (mul counter counter)
  counter   +(counter)
~& counter
~& > squared
==
