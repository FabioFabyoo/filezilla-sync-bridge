# FileZilla Cloud Sync Bridge

Uno script Batch leggero e meticoloso per sincronizzare i siti salvati di FileZilla tramite Nextcloud (o qualsiasi altro servizio Cloud).

## 💡 Perché usare questo script?
FileZilla salva i tuoi siti in un file locale. Se lavori su più computer (fisso e laptop), devi inserire ogni volta le credenziali. Questo script crea un "ponte" via Cloud per avere i tuoi server sempre sincronizzati.

## ⚙️ Come funziona
Lo script automatizza il movimento del file `sitemanager.xml`:
- **Upload:** Copia il file dalla cartella `%APPDATA%` locale al tuo Cloud.
- **Download:** Sovrascrive la configurazione locale con quella aggiornata dal Cloud.

## 🛠️ Requisiti
- Windows OS
- Un client Cloud (Nextcloud, Dropbox, OneDrive) installato con una cartella locale.

## 🔧 Personalizzazione
Basta modificare la riga `set "CLOUD_PATH=..."` all'interno dello script per puntare alla cartella del tuo servizio Cloud preferito.
