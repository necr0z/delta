:: hw 2 boxcar question, returns 1 if x is (3 5], else return 0
|=  x=@ud
^-  @ud
?:  (gth x 3)  ?:  (lte x 5)
    1
  0
0
