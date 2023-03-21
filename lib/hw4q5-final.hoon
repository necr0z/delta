|%
++  fizz
|=  a=@ud
%+
turn
(gulf [1 a])
|=  a=@ud
?:  =((mod a 3) 0)
"Fizz"
a


++  buzz
|=  a=@ud
%+
turn
(gulf [1 a])
|=  a=@ud
?:  =((mod a 5) 0)
"Buzz"
a


++  fizzbuzz
|=  a=@ud
%+
turn
(gulf [1 a])
|=  a=@ud
?:  =((mod a 5) 0)
?:  =((mod a 3) 0)
"FizzBuzz"
"Buzz"
?:  =((mod a 3) 0)
"Fizz"
a
--

