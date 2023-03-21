:: if @ud < 10 return zero, else normal
|%
++  corrected-weight
  |=  a=@ud
  ^-  @ud
  ?:  (lth a 10)
    0
  a
--
