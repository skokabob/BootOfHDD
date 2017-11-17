# Popis funkcí pro zavádění operačního systému

## grub4dos

- Který je zaváděčem dosovským GRUB a umožňuje zavádět virtuální operační systémy od Microsoft, ale tomu je potřeba použít pomocí FireDisk, z kterého v paměti výtvoří virtuální mechaniku jako DVD-ROM, aby z obrazu do paměti RAM nenahrál a nezabíral zbytečně v paměti.

## menu
- v složce jsou konfirační skriptovací soubory s příponou **\*.lst** pro *grub4dos*, v kterém upravíme konfirační skripty pro načtení operačních dat z obrazu.

## syslinux
- hlavní zavaděč linuxovský

# Rozdíl zdrojového kódu mezi zavaděči

### grub4dos
```
debug off
set MYISO=W7_SP1_x86.iso
map --mem (md)0x800+4 (99)
map /iso/install-win/%MYISO% (0xff)
map (hd0) (hd1)
map (hd1) (hd0)
map --hook
write (99) [FiraDisk]\nStartOptions=cdrom,vmem=find:/iso/install-win/%MYISO%;\n\0
chainloader (0xff)/BOOTMGR || chainloader (0xff)
clear
```

### grub2
```
menuentry "SLAX - CZ - 7.0.8   (i486)" {
	set root=(hd0,msdos1)
	set soubor=/iso/slax
	loopback loop $soubor
	root=(loop)
	linux /boot/vmlinuz xmode from=$soubor
	initrd /boot/initrfs.img 
}
```

### syslinux/isolinux
```
LABEL hbcd
	MENU LABEL ^Instalacni CD/DVD - OS Windows
	LINUX /boot/grub4dos/grub.exe
APPEND --config-file="configfile /boot/menu/instwin.lst"
TEXT HELP
	Vyber operacnich systemu pro instalaci
ENDTEXT
```
