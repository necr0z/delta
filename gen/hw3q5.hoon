:: Generator accepts a list, returns indexed values in REVERSE
:: Added ++flop arm thats all

|=  input=(list)
=/  counter  0
|-
?:  =(counter (lent input))
  'done'
=/  result  (snag counter (flop input))
~&  result
%=  $
  counter  (add counter 1)

==
