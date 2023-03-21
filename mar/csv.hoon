::  takes in (list (list @t)) as a parameter/sample

::  +grab arm convert other marks into our mark
::  +grow arm convert our mark into other marks


/+  *csv
|_  csv=(list (list @t))
++  grab
  |%
  ++  mime  |=((pair mite octs) (de-csv q.q))
  ::  convert from a %mime mark into our %csv mark
  ::  It's a simple gate that takes a $mime (specified as (pair mite octs) 
  ::  to avoid conflict with the arm name), runs the data through
  ::  the +de-csv function and returns a (list (list @t)) of the CSV data.

  ++  noun
    |=  n=*
    ^-  (list (list @t))
    =/  result  ((list (list @t)) n)
    ?>  (validate result)
    result
  --
++  grow
  |%
  ++  mime
    ?>  (validate csv)
    [/text/csv (as-octs:mimes:html (en-csv csv))]
  ::  convert from %csv mark to a %mime mark
  ::  encode our (list (list @t)) csv sample with our +en-csv function,
  ::  and then run through as-octs:mimes:html to get a $octs(so it has byte length)
  ::  also add /text/csv MIME type so its a valid $mime
  ::  Mozila docs: https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types
  

  ++  noun
    ?>  (validate csv)
    csv
  --
++  grad
  |%
  ++  form  %csv-diff
  ++  diff
    |=  bob=(list (list @t))
    ^-  (urge:clay (list @t))
    ?>  (validate csv)
    ?>  (validate bob)
    (lusk:differ csv bob (loss:differ csv bob))
  ++  pact
    |=  dif=(urge:clay (list @t))
    ^-  (list (list @t))
    =/  result  (lurk:differ csv dif)
    ?>  (validate result)
    result
  ++  join
    |=  $:  ali=(urge:clay (list @t))
            bob=(urge:clay (list @t))
        ==
    ^-  (unit (urge:clay (list @t)))
    (csv-join ali bob)
  ++  mash
    |=  $:  [ship desk (urge:clay (list @t))]
            [ship desk (urge:clay (list @t))]
        ==
    ^-  (urge:clay (list @t))
    ~|(%csv-mash !!)
  --
--