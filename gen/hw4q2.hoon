|=  [input=tape]
=/  counter  0
=/  results  *(list @ud)
|-
?:  =(counter (lent input))
  results
=/  ascii  `@t`(snag counter input)
~&  ascii
%=  $
  counter  (add counter 1)
  results  (snoc results ascii)
==

