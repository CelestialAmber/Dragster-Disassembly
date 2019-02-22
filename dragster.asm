; Disassembly of dragster.a26
; Disassembled Fri Feb 22 11:26:00 2019
; Using DiStella v3.01a
;
; Command Line: distella dragster.a26 
;

VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
VDELP0  =  $25
HMOVE   =  $2A
HMCLR   =  $2B
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF6F2   =   $F6F2

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
LF004: LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       LDA    $82     
       BNE    LF013   
       JMP    LF2FD   
LF013: JSR    LF6D3   
LF016: LDX    #$06    
LF018: LDA    LF6CA,X 
       EOR    $84     
       AND    $85     
       STA    $86,X   
       DEX            
       BPL    LF018   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDX    $8F     
       SEC            
       LDY    #$00    
       LDA    $BA,X   
LF030: INY            
       SBC    #$03    
       BPL    LF030   
       DEY            
       SEC            
       TYA            
       LDY    #$00    
LF03A: INY            
       SBC    #$05    
       BPL    LF03A   
       DEY            
       STY    $BC,X   
       ADC    #$05    
       STA    $BE,X   
LF046: LDA    INTIM   
       BNE    LF046   
       STA    WSYNC   
       STA    VBLANK  
       STA    $AA     
LF051: LDX    $AA     
       LDA    $BA,X   
       JSR    LF4E5   
       LDX    $AA     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    $C4,X   
       LDA    LF6C0,Y 
       STA    WSYNC   
       STA    PF0     
       STA    PF2     
       LDA    LF6C4,Y 
       STA    PF1     
       JSR    LF7D0   
       LDY    #$05    
LF075: STA    WSYNC   
       DEY            
       BPL    LF075   
       LDX    $AA     
       LDY    $BC,X   
LF07E: DEY            
       BPL    LF07E   
       LDY    $BE,X   
       CPY    #$04    
       BEQ    LF095   
       CPY    #$03    
       BEQ    LF098   
       CPY    #$02    
       BEQ    LF09B   
       CPY    #$01    
       BEQ    LF09E   
       BNE    LF0A0   
LF095: NOP            
       LDA    $D8     
LF098: NOP            
       LDA    $D8     
LF09B: NOP            
       LDA    $D8     
LF09E: LDA    $D8     
LF0A0: NOP            
       NOP            
       LDA    #$16    
       STA    $8E     
       CLC            
LF0A7: LDY    $8E     
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDA    ($94),Y 
       STA    GRP0    
       LDA    ($9A),Y 
       STA    $D8     
       LDA    ($98),Y 
       TAX            
       LDA    ($96),Y 
       LDY    $D8     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDA    $D8     
       NOP            
       LDA    $8E     
       LSR    A       
       LSR    A       
       LSR    A       
       TAY            
       LDA    LF6D0,Y 
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDY    $8E     
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDA    ($94),Y 
       STA    GRP0    
       LDA    ($96),Y 
       LDY    $D8     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       NOP            
       NOP            
       NOP            
       DEC    $8E     
       BPL    LF0A7   
       LDX    #$01    
LF0FD: LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       DEX            
       BPL    LF0FD   
       STX    WSYNC   
       LDA    $88     
       STA    COLUBK  
       LDX    #$09    
LF10E: STA    WSYNC   
       LDA    #$F7    
       STA    $90,X   
       DEX            
       DEX            
       BPL    LF10E   
       LDA    $89     
       STA    COLUBK  
       LDA    #$02    
       STA    CTRLPF  
       LDA    $8A     
       STA    COLUP0  
       LDA    $8B     
       STA    COLUP1  
       LDX    $AA     
       LDY    #$07    
LF12C: STA    WSYNC   
       LDA    $9C,X   
       STA    PF0     
       LDA    $9E,X   
       STA    PF1     
       LDA    $A0,X   
       STA    PF2     
       LDA    $D8     
       LDA    $A2,X   
       STA    PF0     
       LDA    $D8     
       LDA    $A4,X   
       STA    PF1     
       LDA    $D8     
       LDA    $A6,X   
       STA    PF2     
       DEY            
       BPL    LF12C   
       STA    WSYNC   
       INY            
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDA    #$10    
       STA    CTRLPF  
       LDA    $86     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$0F    
       JSR    LF4E5   
       LDA    #$06    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDX    $AA     
       LDY    $D4,X   
       STA    WSYNC   
       BEQ    LF181   
       JSR    LF53B   
       STA    WSYNC   
       STA    WSYNC   
       JMP    LF209   
LF181: LDA    $8C     
       STA    COLUPF  
       LDX    $AA     
       LDY    #$68    
       LDA    $B3,X   
       BEQ    LF195   
       LDY    #$50    
       AND    #$F0    
       BEQ    LF195   
       LSR    A       
       TAY            
LF195: STA    WSYNC   
       TYA            
       STA    $90     
       LDA    $B3,X   
       AND    #$0F    
       ASL    A       
       ASL    A       
       ASL    A       
       STA    $92     
       LDA    $B5,X   
       AND    #$F0    
       LSR    A       
       STA    $96     
       LDA    $8D     
       BEQ    LF1B6   
       AND    #$F0    
       LSR    A       
       ADC    #$08    
       JMP    LF1BD   
LF1B6: LDA    $B5,X   
       AND    #$0F    
       ASL    A       
       ASL    A       
       ASL    A       
LF1BD: STA    $94     
       LDA    #$0C    
       LDY    $CC,X   
       BMI    LF1CA   
       TYA            
       BNE    LF1CA   
       LDA    #$0B    
LF1CA: ASL    A       
       ASL    A       
       ASL    A       
       STA    $98     
       LDA    #$07    
       LDY    $B5,X   
       CPY    #$AA    
       BNE    LF1D9   
       LDA    #$0A    
LF1D9: TAX            
       LDY    #$07    
LF1DC: STA    WSYNC   
       NOP            
       LDA    ($92),Y 
       STA    GRP1    
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($96),Y 
       STA    GRP1    
       LDA    ($94),Y 
       STA    GRP0    
       STA    GRP1    
       LDA    ($98),Y 
       STA    GRP0    
       STA    GRP1    
       LDA    LF56A,X 
       STA    ENABL   
       DEX            
       DEY            
       BPL    LF1DC   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    ENABL   
LF209: LDA    $88     
       STA    COLUPF  
       INC    $AA     
       LDA    $AA     
       LSR    A       
       BCC    LF217   
       JMP    LF051   
LF217: LDA    #$0F    
       JSR    LF4E5   
       LDY    #$39    
       JSR    LF53B   
       LDA    #$21    
       STA    TIM64T  
       LDA    $81     
       AND    #$01    
       TAX            
       STX    $8F     
       LDY    #$00    
       LDA    $B9     
       BMI    LF27F   
       LDA    $D2,X   
       BNE    LF27F   
       LDA    $D0,X   
       BEQ    LF242   
       LDY    #$08    
       DEC    $D0,X   
       JMP    LF24E   
LF242: LDA    $8D     
       BEQ    LF257   
       AND    #$0F    
       BNE    LF257   
       LDY    #$0C    
       LDA    #$18    
LF24E: STA    AUDV0,X 
       STY    AUDF0,X 
       STY    AUDC0,X 
       JMP    LF285   
LF257: LDA    $CE,X   
       BNE    LF27F   
       LDA    $81     
       AND    #$02    
       BEQ    LF271   
       LDY    #$09    
       LDA    #$01    
       STA    AUDF0,X 
       LDA    $C0,X   
       BEQ    LF271   
       LDA    $C8,X   
       ORA    $CA,X   
       BNE    LF27F   
LF271: LDA    $A8,X   
       CMP    #$20    
       BCC    LF279   
       LDA    #$1F    
LF279: EOR    #$1F    
       STA    AUDF0,X 
       LDY    #$03    
LF27F: STY    AUDC0,X 
       LDA    $B1,X   
       STA    AUDV0,X 
LF285: LDA    INTIM   
       BNE    LF285   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF2A5   
       INC    $B9     
       BNE    LF2A5   
       SEC            
       ROR    $B9     
LF2A5: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF2B0   
       LDY    #$0F    
LF2B0: LDA    #$00    
       BIT    $B9     
       BPL    LF2BD   
       TYA            
       AND    #$F7    
       TAY            
       LDA    $B9     
       ASL    A       
LF2BD: STA    $84     
       STY    $85     
       LDA    #$19    
       STA    WSYNC   
       STA    TIM64T  
       LDA    SWCHA   
       TAY            
       AND    #$0F    
       STA    $AE     
       TYA            
       LSR    A       
       LSR    A       
       LSR    A       
       LSR    A       
       STA    $AD     
       LDA    $A8     
       ORA    $A9     
       BNE    LF2E3   
       LDA    $AD,X   
       CMP    #$07    
       BEQ    LF2E9   
LF2E3: LDA    SWCHB   
       LSR    A       
       BCS    LF2EE   
LF2E9: LDX    #$B9    
       JMP    LF004   
LF2EE: LDY    #$00    
       LSR    A       
       BCS    LF31C   
       LDA    $B0     
       BEQ    LF2FB   
       DEC    $B0     
       BPL    LF31E   
LF2FB: INC    $80     
LF2FD: LDA    $80     
       AND    #$01    
       STA    $80     
       STA    $B9     
       TAY            
       INY            
       STY    $CC     
       JSR    LF6D3   
       LDA    #$0A    
       STA    $CD     
       LDA    #$00    
       STA    $8D     
       STA    $D4     
       LDY    #$1E    
       STY    $D2     
       STY    $D3     
LF31C: STY    $B0     
LF31E: LDA    $8D     
       BEQ    LF32E   
       DEC    $8D     
       BNE    LF32E   
       LDX    #$05    
       LSR    A       
LF329: STA    $B3,X   
       DEX            
       BPL    LF329   
LF32E: LDX    $8F     
       LDA    $B9     
       BMI    LF341   
       LDA    $D2,X   
       BEQ    LF344   
LF338: LDY    #$01    
       STY    $D2,X   
       DEY            
       STY    $A8,X   
       STY    $C8,X   
LF341: JMP    LF4A4   
LF344: LDA    $8D     
       BNE    LF367   
       SED            
       CLC            
       LDA    $B7,X   
       ADC    #$34    
       STA    $B7,X   
       LDA    $B5,X   
       ADC    #$03    
       STA    $B5,X   
       LDA    $B3,X   
       ADC    #$00    
       STA    $B3,X   
       CLD            
       BCC    LF367   
       LDA    #$99    
       STA    $B3,X   
       STA    $B5,X   
LF365: BNE    LF338   
LF367: LDA    $C0,X   
       BEQ    LF3A0   
       CLC            
       ADC    $C2,X   
       STA    $C2,X   
       BCC    LF374   
       INC    $BA,X   
LF374: LDA    $C0,X   
       ROL    A       
       ROL    A       
       ROL    A       
       AND    #$03    
       TAY            
       LDA    LF6C8,Y 
       AND    $81     
       BNE    LF392   
       INC    $C4,X   
       CLC            
       LDA    $C6,X   
       ADC    #$17    
       CMP    #$2F    
       BCC    LF390   
       LDA    #$00    
LF390: STA    $C6,X   
LF392: LDA    $C4,X   
       AND    #$03    
       STA    $C4,X   
       LDA    $BA,X   
       CMP    #$60    
       BCC    LF3A0   
       BNE    LF365   
LF3A0: LDA    $CE,X   
       BNE    LF3CF   
       LDA    $81     
       LDY    $CC,X   
       BPL    LF3AC   
       LDY    #$00    
LF3AC: AND    LF6F6,Y 
       BNE    LF401   
       LDA    REFP1,X 
       BMI    LF3D1   
       LDA    $CA,X   
       BEQ    LF3BF   
       LDA    $81     
       AND    #$02    
       BEQ    LF3D1   
LF3BF: CLC            
       LDA    $A8,X   
       ADC    LF6FB,Y 
       STA    $A8,X   
       LDA    #$0C    
       STA    $B1,X   
       STA    $B9     
       BNE    LF3E3   
LF3CF: BNE    LF43B   
LF3D1: SEC            
       LDA    $A8,X   
       SBC    LF6FB,Y 
       STA    $A8,X   
       DEC    $B1,X   
       LDA    #$04    
       CMP    $B1,X   
       BCC    LF3E3   
       STA    $B1,X   
LF3E3: LDA    $A8,X   
       BPL    LF3E9   
       LDA    #$00    
LF3E9: CMP    #$20    
       BCC    LF3FF   
       LDA    #$0F    
       STA    $D0,X   
       LDA    #$01    
       STA    $D4,X   
       LDA    #$04    
       STA    $AB,X   
       LDA    #$1A    
       STA    $CE,X   
       LDA    #$00    
LF3FF: STA    $A8,X   
LF401: LDA    #$00    
       STA    $C8,X   
       TYA            
       BEQ    LF43B   
       LDA    $A8,X   
       CMP    #$14    
LF40C: DEY            
       BEQ    LF413   
       ROL    A       
       JMP    LF40C   
LF413: STA    $D8     
       CMP    $C0,X   
       BEQ    LF43B   
       BCS    LF424   
       LDA    $C0,X   
       BEQ    LF43B   
       DEC    $C0,X   
       JMP    LF43B   
LF424: LDA    $D8     
       SEC            
       SBC    $C0,X   
       INC    $C0,X   
       INC    $C0,X   
       CMP    #$10    
       BCC    LF43B   
       LDA    $CE,X   
       BNE    LF43B   
       LDA    #$17    
       STA    $C8,X   
       DEC    $A8,X   
LF43B: LDA    $AD,X   
       AND    #$04    
       CMP    $D6,X   
       STA    $D6,X   
       BEQ    LF466   
       CMP    #$00    
       BNE    LF450   
       ASL    $CC,X   
       SEC            
       ROR    $CC,X   
       BMI    LF466   
LF450: LDA    $8D     
       BEQ    LF458   
       LDA    #$1D    
       STA    $D4,X   
LF458: INC    $CC,X   
       LDA    $CC,X   
       AND    #$7F    
       CMP    #$04    
       BCC    LF464   
       LDA    #$04    
LF464: STA    $CC,X   
LF466: LDA    $80     
       LSR    A       
       BCC    LF4A4   
       LDA    $CE,X   
       BNE    LF4A4   
       LDA    $C0,X   
       BEQ    LF4A4   
       LDA    $81     
       AND    #$06    
       BNE    LF4A4   
       LDA    $AD,X   
       LSR    A       
       BCS    LF480   
       DEC    $AB,X   
LF480: LSR    A       
       BCS    LF485   
       INC    $AB,X   
LF485: LDA    $82     
       BPL    LF48D   
       INC    $AB,X   
       INC    $AB,X   
LF48D: DEC    $AB,X   
       LDA    #$00    
       STA    $CA,X   
       LDY    $AB,X   
       BPL    LF49A   
       TAY            
       INC    $CA,X   
LF49A: CPY    #$08    
       BCC    LF4A2   
       LDY    #$08    
       INC    $CA,X   
LF4A2: STY    $AB,X   
LF4A4: LDA    $82     
       ASL    A       
       ASL    A       
       ASL    A       
       EOR    $82     
       ASL    A       
       ROL    $82     
       TXA            
       ORA    #$0A    
       TAY            
       LDA    #$00    
LF4B4: STA    $009C,Y 
       DEY            
       DEY            
       BPL    LF4B4   
       LDY    $A8,X   
       CPY    #$13    
       BCC    LF4D1   
       TYA            
       SBC    #$13    
       TAY            
       LDA    #$FF    
       STA    $9C,X   
       STA    $9E,X   
       STA    $A0,X   
       TXA            
       ORA    #$06    
       TAX            
LF4D1: DEY            
       BMI    LF4E2   
       LDA    $9C,X   
       ORA    #$08    
       ASL    A       
       STA    $9C,X   
       ROR    $9E,X   
       ROL    $A0,X   
       JMP    LF4D1   
LF4E2: JMP    LF016   
LF4E5: STA    $D9     
       LDX    #$00    
LF4E9: STA    HMCLR   
LF4EB: LDY    $8C     
       STY    WSYNC   
       STY    COLUBK  
       CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $D8     
       TYA            
       LSR    A       
       LSR    A       
       LSR    A       
       LSR    A       
       TAY            
       CLC            
       ADC    $D8     
       CMP    #$0F    
       BCC    LF509   
       SBC    #$0F    
       INY            
LF509: EOR    #$07    
       ASL    A       
       ASL    A       
       ASL    A       
       ASL    A       
       STA    HMP0,X  
       STA    WSYNC   
LF513: DEY            
       BPL    LF513   
       STA    RESP0,X 
       LDA    $D9     
       CLC            
       ADC    #$08    
       INX            
       CPX    #$02    
       BCC    LF4EB   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $89     
       STA    WSYNC   
       STA    COLUBK  
       RTS            

LF52D: LDA    LF7C5,Y 
       STA    $0091,Y 
       DEY            
       DEY            
       BMI    LF53A   
       JMP    LF7D2   
LF53A: RTS            

LF53B: LDA    #$01    
       STA    NUSIZ0  
       STA    WSYNC   
       LDX    #$06    
LF543: STA    WSYNC   
       INY            
       LDA    LF76E,Y 
       STA    GRP0    
       LDA    LF775,Y 
       STA    GRP1    
       LDA    LF77C,Y 
       STA    GRP0    
       LDA    LF783,Y 
       NOP            
       STA    GRP1    
       STA    GRP0    
       DEX            
       BPL    LF543   
       INX            
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STA    WSYNC   
       RTS            

LF56A: .byte $02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$07,$1F,$3F,$7E
       .byte $7D,$FD,$EF,$F7,$FE,$7E,$7D,$3F,$1F,$07,$01,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$07,$1F,$3F,$77,$77,$FB,$FF,$FF,$FB,$77,$7F,$3F,$1F
       .byte $07,$01,$00,$00,$00,$00,$00,$00,$00,$00,$07,$1F,$3F,$7F,$6F,$F6
       .byte $FB,$FF,$FD,$7B,$77,$3F,$1F,$07,$01,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$80,$E0,$F7,$FB,$FB,$FF,$BF,$DF,$FD,$FA,$FA,$F6,$EC,$B8,$E0
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$80,$E0,$F7,$FB,$BB,$7F,$FF,$FF
       .byte $7D,$BA,$BA,$F6,$EC,$B8,$E0,$00,$00,$00,$00,$00,$00,$00,$00,$80
       .byte $E0,$F7,$BB,$7B,$FF,$FF,$7F,$BD,$DA,$FA,$F6,$EC,$B8,$E0,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$44,$22
       .byte $EE,$F7,$FB,$FD,$FF,$EF,$E8,$F8,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$20,$92,$E1,$F6,$FB,$FB,$FF,$EF,$E0
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$20,$EF,$74
       .byte $BA,$DD,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$20,$10,$60,$B6,$BB,$FA,$FF,$0F,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$FF,$80
       .byte $80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$0E,$E1,$1F,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$30,$78,$FC,$FE,$FA,$34,$18,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$60,$F0,$F8,$FC,$F4,$68,$30,$00,$00
       .byte $00,$00,$00,$00,$00,$00
LF6C0: .byte $77,$BB,$DD,$EE
LF6C4: .byte $EE,$DD,$BB,$77
LF6C8: .byte $06,$02
LF6CA: .byte $00,$00,$88,$CC,$D8,$46
LF6D0: .byte $00,$00,$FF
LF6D3: LDA    #$9F    
       STA    $8D     
       LDX    #$01    
LF6D9: LDA    #$01    
       STA    VDELP0,X
       STA    $82     
       LDA    #$AA    
       STA    $B3,X   
       STA    $B5,X   
       LDA    #$04    
       STA    $AB,X   
       STA    $D6,X   
       STA    $B1,X   
       DEX            
       BPL    LF6D9   
       TAX            
       LDA    #$23    
       JMP    LF4E9   
LF6F6: .byte $00,$00,$02,$06,$0E
LF6FB: .byte $03,$01,$01,$01,$01,$3C,$66,$66,$66,$66,$66,$66,$3C,$7E,$18,$18
       .byte $18,$18,$78,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06
       .byte $0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06
       .byte $06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18
       .byte $18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06
       .byte $3E,$66,$66,$66,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$C3,$C7,$CF
       .byte $DF,$FB,$F3,$E3,$C3,$7E,$C3,$C0,$C0,$C0,$C0,$C3,$7E,$7E,$C3,$C3
       .byte $CF,$C0,$C0
LF76E: .byte $C3,$7E,$F2,$4A,$4A,$72,$4A
LF775: .byte $4A,$F3,$0E,$11,$11,$11,$11
LF77C: .byte $11,$CE,$45,$45,$45,$45,$55
LF783: .byte $6D,$45,$10,$90,$50,$30,$10,$10,$10,$F8,$81,$82,$E2,$83,$82,$FA
       .byte $8F,$48,$28,$2F,$EA,$29,$28,$21,$A1,$A0,$20,$20,$20,$BE,$10,$10
       .byte $A0,$40,$40,$40,$40,$0F,$41,$ED,$A9,$E9,$A9,$AD,$F0,$11,$53,$56
       .byte $5C,$58,$50,$FE,$80,$3A,$A2,$BA,$8A,$BA,$00,$00,$E9,$AD,$AF,$AB
       .byte $E9
LF7C4: .byte $6E
LF7C5: .byte $F5,$B3,$F5,$00,$F6,$2E,$F6,$5C,$F6,$8A,$F6
LF7D0: LDY    #$0A    
LF7D2: LDA    LF7C4,Y 
       CLC            
       ADC    $AB,X   
       CPY    #$04    
       BCC    LF7F1   
       CLC            
       ADC    $C8,X   
       CPY    #$08    
       BCS    LF7F4   
       STA    $D8     
       LDA    $CE,X   
       BEQ    LF7EC   
       ADC    LF6F2,Y 
LF7EC: ADC    $D8     
       JMP    LF7F4   
LF7F1: CLC            
       ADC    $C6,X   
LF7F4: STA    $0090,Y 
       JMP    LF52D   
LF7FA: .byte $00,$00,$00,$F0,$00,$00
