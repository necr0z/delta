:: Generator accepts a list, returns indexed values in order

|=  input=(list)
=/  counter  0
|-
?:  =(counter (lent input))
  'done'
=/  result  (snag counter input)
~&  result
%=  $
  counter  (add counter 1)
==
