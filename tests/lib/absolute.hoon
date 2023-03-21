/+  *test, *absolute
|%
++  test-absolute
  ;:  weld
  %+  expect-eq
    !>  .1
    !>  (absolute .-1)
  %+  expect-eq
    !>  .1
    !>  (absolute .1)
  %+  expect-eq
    !>  .0
    !>  (absolute .0)
  ==
--
