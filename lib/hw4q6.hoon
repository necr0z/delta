|%
++  split-tape
|=  ex=tape
=/  index  0
=/  result  *(list tape)
|-
?:  =(index (lent ex))
  (weld result ~[ex])
?:  =((snag index ex) ' ')
  :: deal w/ word break
  %=  $
    index  0
    result  (weld result ~[`tape`(scag index ex)])
    ex  `tape`(slag +(index) ex)
  ==
::  otherwise just count up
$(index +(index))

++  count-elements
|=  ex=tape
=/  index  0
=/  result  *(list tape)
|-
?:  =(index (lent ex))
  (lent (weld result ~[ex]))
?:  =((snag index ex) ' ')
  :: deal w/ word break
  %=  $
    index  0
    result  (weld result ~[`tape`(scag index ex)])
    ex  `tape`(slag +(index) ex)
  ==
::  otherwise just count up
$(index +(index))
--

