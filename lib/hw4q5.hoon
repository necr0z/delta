|%
++  fizz
%+
turn
(gulf [1 100])
|=  a=@ud
?:  =((mod a 3) 0)
"Fizz"
a


++  buzz
%+
turn
(gulf [1 100])
|=  a=@ud
?:  =((mod a 5) 0)
"Buzz"
a


++  fizzbuzz
%+
turn
(gulf [1 100])
|=  a=@ud
?:  =((mod a 5) 0)
?:  =((mod a 3) 0)
"FizzBuzz"
"Buzz"
?:  =((mod a 3) 0)
"Fizz"
a
--
