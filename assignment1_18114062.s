mov r1,1      //Current number to be checked for ramanujan number
.loop:        
   mov r3,0       //counter
   mov r4,r1      
  .loopL1:
         mov r5,r1
        .loopL2:
               mul r6,r4,r4
               mul r6,r6,r4
               mul r7,r5,r5
               mul r7,r7,r5
               add r8,r6,r7             //sum of cubes of two integers
               cmp r8,r1               //compares sum and current number
               bgt.countInc           //increase counter by 1(as defined)
               sub r5,r5,1
               cmp r5,0
               bgt.loopL2
        sub r4,r4,1
        cmp r4,0
        bgt.loopL1
   cmp r3,2
   bgt.exit                      //if count=2 then exit
   add r1,r1,1
.countInc:
add r3,r3,1
.exit:
exit
