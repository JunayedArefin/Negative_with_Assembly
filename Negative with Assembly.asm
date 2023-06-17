.model small
.stack 100h
.data
    msg db "Enter a number: $"  
.code
main proc

      mov ah,1   ; 1st value
      int 21h    ; data store in al
      mov cl,al  ; move data from al to cl

      neg cl

      mov ah,2   ; show output
      mov dl,cl
      int 21h

    main endp
end main