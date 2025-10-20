AS   = ./asm6f/asm6f
EMU  = ./fceux/src/fceux
ROM  = smb.nes
SRC  = smb.asm
PRG  = smb.prg
INES = ines.bin
CHR  = chr.bin

all:
	$(AS) $(SRC) $(PRG)
	cat $(INES) $(PRG) $(CHR) > $(ROM)

run:
	$(EMU) $(ROM)

clean:
	rm $(ROM) $(PRG)
