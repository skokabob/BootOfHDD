# Nástroj pro vytvoření virtuální mechaniky FireDisk

## Instalace systému Windows Vista / 7/8 z jednotky USB flash s úpravou distribuce
Jak už můžete vidět, k instalaci systému Windows z jednotky USB flash kromě samotného instalačního obrazu je třeba dalších dvou souborů (AutoUnattend.xml a FiraDisk.cmd) a soubor AutoUnattend.xml musí být umístěn v kořenovém adresáři jednotky. A není to moc výhodné. Navíc tato metoda, jak říkají, nefunguje s USB-HDD. Ale s pomocí menších operací se můžete zbavit těchto nedostatků. Stačí, abyste FiraDisk integrovali do distribuce.
A teď vám ukážeme, jak to udělat.

> **Poznámka:** Před spuštěním vypněte antivirový program! (protože boot.wim obsahuje mnoho souborů, které jsou zpracovávány poměrně rychle a antivirový systém je v té době zkontroluje a nedává jim přístup, z toho důvodu se mohou vyskytnout různé chyby, například "Chyba: 5 Přístup byl odepřen") .
