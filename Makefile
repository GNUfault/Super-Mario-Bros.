AS   = ./asm6f
ROM  = smb.nes
SRC  = smb.asm
PRG  = smb.prg
INES = ines.bin
CHR  = chr.bin

all:
	$(AS) $(SRC) $(PRG)
	cat $(INES) $(PRG) $(CHR) > $(ROM)

clean:
	rm $(ROM) $(PRG)

