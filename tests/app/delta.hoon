::  This tests the 2 actions found in sur/delta, which are %push and %pop respectively

/-  *delta
/+  *test
/=  agent  /app/delta
|%
++  bowl
  |=  run=@ud
  ^-  bowl:gall
  :*  [~zod ~zod %hark-store]
      [~ ~]
      [run `@uvJ`(shax run) (add (mul run ~s1) *time) [~zod %delta ud+run]]
  ==
::
::  Added state-0 arm
::
+$  state-0
  $:  [%0 values=(list @)]
  ==
--
|%
++  test-push
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 1]))
  =+  !<(=state-0 on-save:agent)
  %+  expect-eq
    !>  `(list @)`~[1]
    !>  values.state-0
++  test-pop
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 1]))
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%pop ~zod]))
  =+  !<(=state-0 on-save:agent)
  %+  expect-eq
  ::  empty list returns ~
    !>  ~
    !>  values.state-0
--
