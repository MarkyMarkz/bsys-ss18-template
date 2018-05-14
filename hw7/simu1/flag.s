.var lock
.var count

.main
add $2, %bx

.top

.acquire
mov  lock, %ax      # get lock
test $0, %ax        # if we get 0 back: lock is free!
jne  .acquire       # if not, try again
mov  $1, lock       # store 1 into lock

# critical section
mov  count, %ax     # get the value at the address
add  $1, %ax        # increment it
mov  %ax, count     # store it back

# release lock
mov  $0, lock       # clear the lock now

# see if we're still looping
sub  $1, %bx
test $0, %bx
jgt .top	

halt

