::  Procudes a gate/generator |= , accepts tape value and returns (list @ud)
::  Uses barhep trap |-


|=  [input=tape]
=/  counter  0
=/  results  *(list @ud)
|-
?:  =(counter (lent input))
  results
=/  ascii  `@ud`(snag counter input)
~&  ascii
%=  $
  counter  (add counter 1)
  results  (snoc results ascii)
==

