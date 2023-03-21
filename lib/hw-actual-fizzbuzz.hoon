|%
++  fizz
|=  a=@ud
=/  count=@ud  1
|-
~&  ?:  =((mod count 3) 0)
"fizz"
count
?:  =(a count)
~
$(count +(count))

++  buzz
|=  a=@ud
=/  count=@ud  1
|-
~&  ?:  =((mod count 5) 0)
"buzz"
count
?:  =(a count)
~
$(count +(count))
--
