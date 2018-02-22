# BootOfHDD

## Zavaděč operačních systémů z externího HDD či flash disku

- Který umožnuje vybrat operační systémy pro instalaci či oprav PC

### Úvodní menu
![Úvodní menu](/nastroje/images/screen01.png)

### Menu výběr instalačního operačního systému MS Windows

* [Návod pro zakazání digitálního podpisu ovladačů po instalaci MS Windows 10](https://github.com/skokabob/BootOfHDD/tree/master/nastroje)

![Menu výběr operačního systému MS Windows](/nastroje/images/screen03.png)

### Menu DLC Boot 2017
![Menu DLC Boot 2017](/nastroje/images/screen02.png)

## Postup

- Stahněte si \*.zip do počítače a rozbalíte do externího HDD či Flash disku.
- Nakopírujte operační obrazy do složky **iso**!
  - Ale u OS Windows v obrazovém formátu \*.iso je potřeba nahrát pomocí nástroje ovladače **FiraDisk** pro vytvoření virtuální mechaniky
- Vytvořte zavaděč pomocí konfiguračního adresáře `../boot/syslinux/bootinst.bat`, aby z disku umožnil spustit tzv. bootovatelný zavaděč operačních systémů.
