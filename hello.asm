[org 0x0100] 
jmp main

Correct:
    add bx,1
    mov dx,MSG6
    mov ah,9
    int 0x21
ret 

Wrong:
    add cx,1
    mov dx,MSG7
    mov ah,9
    int 0x21
ret

main:
    mov cx,0
    mov  dx, msg      
    mov  ah, 9        
    int  0x21 
    mov dx,MSG2
    mov  ah, 9        
    int  0x21 
    mov dx,MSG3
    mov  ah, 9        
    int  0x21 
    mov dx,MSG4
    mov  ah, 9        
    int  0x21 
    mov dx,MSG5
    mov  ah, 9        
    int  0x21  
    mov ah,1
    int  0x21
    mov ax,0
    mov dx,Q1
    mov ah,9
    int 0x21
    mov dx,QA1
    int 0x21
    mov ah,1
    int 0x21
    cmp al,'a'
    jnz skip
    call Correct
    jmp alskip
skip:
    call Wrong
alskip:

    mov dx,Q2
    mov ah,9
    int 0x21
    mov dx,QA2
    int 0x21
    mov ah,1
    int 0x21
    cmp al,'b'
    jnz skip2
    call Correct
    jmp alskip2
skip2:
    call Wrong
alskip2:
    mov dx,Q3
    mov ah,9
    int 0x21
    mov dx,QA3
    int 0x21
    mov ah,1
    int 0x21
    cmp al,'c'
    jnz skip3
    call Correct
    jmp alskip3
skip3:
    call Wrong
alskip3:
    mov dx,Q4
    mov ah,9
    int 0x21
    mov dx,QA4
    int 0x21
    mov ah,1
    int 0x21
    cmp al,'b'
    jnz skip4
    call Correct
    jmp alskip4
skip4:
    call Wrong
alskip4:
    mov dx,Q5
    mov ah,9
    int 0x21
    mov dx,QA5
    int 0x21
    mov ah,1
    int 0x21
    cmp al,'a'
    jnz skip5
    call Correct
    jmp alskip5
skip5:
    call Wrong
alskip5:
    mov dx,Q6
    mov ah,9
    int 0x21
    mov dx,QA6
    int 0x21
    mov ah,1
    int 0x21
    cmp al,'c'
    jnz skip6
    call Correct
    jmp alskip6
skip6:
    call Wrong
alskip6:
    mov dx,Q7
    mov ah,9
    int 0x21
    mov dx,QA7
    int 0x21
    mov ah,1
    int 0x21
    cmp al,'b'
    jnz skip7
    call Correct
    jmp alskip7
skip7:
    call Wrong
alskip7:
    mov dx,Q8
    mov ah,9
    int 0x21
    mov dx,QA8
    int 0x21
    mov ah,1
    int 0x21
    cmp al,'c'
    jnz skip8
    call Correct
    jmp alskip8
skip8:
    call Wrong
alskip8:
    mov dx,Q9
    mov ah,9
    int 0x21
    mov dx,QA9
    int 0x21
    mov ah,1
    int 0x21
    cmp al,'a'
    jnz skip9
    call Correct
    jmp alskip9
skip9:
    call Wrong
alskip9:
    mov dx,Q10
    mov ah,9
    int 0x21
    mov dx,QA10
    int 0x21
    mov ah,1
    int 0x21
    cmp al,'a'
    jnz skip10
    call Correct
    jmp alskip10
skip10:
    call Wrong
alskip10:
    mov dx,MSG8
    mov ah,9
    int 0x21
    mov dx,MSG9
    int 0x21 
    cmp bx,cx
    jnc ca
    mov dx,0
    add dx,48
    mov ah,2
    int 0x21
    jmp all
ca:
    sub bx,cx
    cmp bx,10
    jnz ls
    mov dx,msgg
    mov ah,9
    int 0x21
    jmp s
ls:
    mov dx,bx
    add dx,48
    mov ah,2
    int 0x21
s:
all:
    mov dx,MSG11
    mov ah,9
    int 0x21

    mov  ah, 0x4c     
    int  0x21   
   
msg  db '                     WELECOME TO YOUR FIRST QUIZ',0x0d, 0x0a, '$'
MSG2 DB 'Rules :',0x0d, 0x0a, '$'
MSG3 DB '*. For Every Correct answer you will get 1 point.',0x0d, 0x0a,'$'
MSG4 DB '*. For Every Wrong answer 1 Point will cut from your total point.',0x0d, 0x0a,'$'
MSG5 DB 'Press Enter to start the quiz :',0x0d, 0x0a,' $'
MSG6 DB  0x0a,'Right Answer....',0x0a,'$'
MSG7 DB  0x0a,'Wrong Answer....',0x0a,'$'
MSG8 DB 'You have successfully completed your quiz.',0x0d,0x0a,'$'
MSG9 DB 'Your Total obtained point is $'
MSG10 DB 'Press 1 to Re-attempt quiz or 0 to Exit.$' 
MSG11 DB 0x0a,'                    **Thank you.! **$'

Q1 DB '1. 2+3=?',0x0d, 0x0a,'$'
QA1 DB '   a) 5    b) 6    c) 7',0x0d,0x0a,'$'
Q2 DB '2. 5+6=?',0x0d, 0x0a,'$'
QA2 DB '   a) 10    b) 11    c) 12',0x0d,0x0a,'$'
Q3 DB '3. 15-12=?',0x0d, 0x0a,'$'
QA3 DB '   a) 5    b) 1    c) 3',0x0d,0x0a,'$'
Q4 DB '4. 3*6=?',0x0d, 0x0a,'$'
QA4 DB '   a) 10    b) 18    c) 12',0x0d,0x0a,'$'
Q5 DB '5. 6/3=?',0x0d, 0x0a,'$'
QA5 DB '   a) 2    b) 1    c) 12',0x0d,0x0a,'$'
Q6 DB '6. 8-8=?',0x0d, 0x0a,'$'
QA6 DB '   a) -1    b) -2    c) 0',0x0d,0x0a,'$'
Q7 DB '7. 3*12=?',0x0d, 0x0a,'$'
QA7 DB '   a) 33    b) 36    c) 38',0x0d,0x0a,'$'
Q8 DB '8. 9*9=?',0x0d, 0x0a,'$'
QA8 DB '   a) 72    b) 91    c) 81',0x0d,0x0a,'$'
Q9 DB '9. 11+13=?',0x0d, 0x0a,'$'
QA9 DB '   a) 24    b) 26    c) 19',0x0d,0x0a,'$'
Q10 DB '10. 56/8=?',0x0d, 0x0a,'$'
QA10 DB '   a) 7    b) 9    c) 6',0x0d,0x0a,'$'
msgg DB '10. $'
