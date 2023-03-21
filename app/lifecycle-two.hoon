::  app school 1 lesson 4 lifecycle tutorial

/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
      state-1              :: NEW STATE-1
      state-2              :: I MAKE NEW STATE-2
  ==
+$  state-0  [%0 val=@ud]  ::  defined structure of our state @ud; tagged head with %0 constant as version number
+$  state-1  [%1 val=[@ud @ud]]  ::  NEW STATE-1 WITH NEW TYPE
+$  state-2  [%2 val=[@ud @ud]]  ::  I MAKE NEW STATE-2
+$  card  card:agent:gall  ::  card arm added so use `card` as type, not `card:agent:gall`
--
%-  agent:dbug
=|  state-2                ::  bunt state-0 type, which will produce [%0 val=0]  | NEW STATE 1 UPGRADED  |  ANOTHER ONE
=*  state  -               ::  tisstar to give subject name of `state`
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
::
++  on-init
  ^-  (quip card _this)
  `this(val [420 69])            ::  `this`(our agent core) with value replaced  by 42.  |  NOW ITS [27 32]  | NOPE
::
++  on-save
  ^-  vase                 ::  pack state value into a `vase`
  !>(state)                ::  exports our agent's state, called during upgrades suspensions etc.
::
++  on-load
  |=  old-state=vase       ::  takes in the old state in a `vase`
  ^-  (quip card _this)
  =/  old  !<(versioned-state old-state)  ::  unpacks it to the versioned-state type defined earlier
  ?-  -.old
    %2  `this(state old)                               ::  tests its head for version
    %1  `this(state old)                  ::  NEW STATE
    %0  `this(state 1+[val.old val.old])  ::  load it back into the state of our agent if it matches  |  NOW OLD STATE
    :: %0  `this(state 2+[val.old val.old val.old])  ::  HAHA EVEN OLDER
  ==
::
++  on-poke   on-poke:def
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent  on-agent:def
++  on-arvo   on-arvo:def
++  on-fail   on-fail:def
--

