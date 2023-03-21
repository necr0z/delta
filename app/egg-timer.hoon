/+  default-agent, dbug
|%
+$  card  card:agent:gall
--
::
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  =/   t   !<(@dr vase)
  :_  this
    [%pass /egg-timer %arvo %b %wait (add now.bowl t)]~

::
++  on-arvo
  ^+  on-arvo:*agent:gall
  |=  [=wire =sign-arvo]
  ^-  (quip card _this)
  ~&  "Timer went off!"
  ~&  now.bowl
  ~&  vase
  ~&  vase
  ~&  /egg-timer
  [~ this]
::
++  on-init   on-init:def
++  on-save   on-save:def
++  on-load   on-load:def
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent  on-agent:def
++  on-fail   on-fail:def
--