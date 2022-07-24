#!/bin/sh
#
# This script uses echo to generate a icon shortcut file. - Mozilla Thunderbird 32-bit - current stable release
#
# Creating icon
echo "[Desktop Entry]
# The file name should be different from the default 64-bit names (keeps compatibility so you can install both if you choose).
Name=Thunderbird 32-bit
Comment=Send and receive mail with Thunderbird
Comment[ast]=Lleer y escribir corréu electrónicu
Comment[ca]=Llegiu i escriviu correu
Comment[cs]=Čtení a psaní pošty
Comment[da]=Skriv/læs e-post/nyhedsgruppe med Mozilla Thunderbird
Comment[de]=E-Mails und Nachrichten mit Thunderbird lesen und schreiben
Comment[el]=Διαβάστε και γράψτε γράμματα με το Mozilla Thunderbird
Comment[es]=Lea y escriba correos y noticias con Thunderbird
Comment[fi]=Lue ja kirjoita sähköposteja
Comment[fr]=Lire et écrire des courriels
Comment[gl]=Lea e escriba correo electrónico
Comment[he]=קריאה/כתיבה של דוא״ל/חדשות באמצעות Mozilla Thunderbird
Comment[hr]=Čitajte/šaljite e-poštu s Thunderbird
Comment[hu]=Levelek írása és olvasása a Thunderbirddel
Comment[it]=Per leggere e scrivere email
Comment[ja]=メールの読み書き
Comment[ko]=Mozilla Thunderbird 메일/뉴스 읽기 및 쓰기 클라이언트
Comment[nl]=E-mail/nieuws lezen en schrijven met Mozilla Thunderbird
Comment[pl]=Czytanie i wysyłanie e-maili
Comment[pt_BR]=Leia e escreva suas mensagens
Comment[ru]=Читайте и пишите письма
Comment[sk]=Čítajte a píšte poštu pomocou programu Thunderbird
Comment[sv]=Läs och skriv e-post
Comment[ug]=ئېلخەت ۋە خەۋەرلەرنى Mozilla Thunderbird دا كۆرۈش ۋە يېزىش
Comment[uk]=Читання та написання листів
Comment[vi]=Đọc và soạn thư điện tử
Comment[zh_CN]=阅读邮件或新闻
Comment[zh_TW]=以 Mozilla Thunderbird 讀寫郵件或新聞
GenericName=Mail Client
GenericName[ast]=Client de correu
GenericName[ca]=Client de correu
GenericName[cs]=Poštovní klient
GenericName[da]=E-postklient
GenericName[de]=E-Mail-Anwendung
GenericName[el]=Λογισμικό αλληλογραφίας
GenericName[es]=Cliente de correo
GenericName[fi]=Sähköpostiohjelma
GenericName[fr]=Client de messagerie
GenericName[gl]=Cliente de correo electrónico
GenericName[he]=לקוח דוא״ל
GenericName[hr]=Klijent e-pošte
GenericName[hu]=Levelezőkliens
GenericName[it]=Client email
GenericName[ja]=電子メールクライアント
GenericName[ko]=메일 클라이언트
GenericName[nl]=E-mailprogramma
GenericName[pl]=Klient poczty
GenericName[pt_BR]=Cliente de E-mail
GenericName[ru]=Почтовый клиент
GenericName[sk]=Poštový klient
GenericName[ug]=ئېلخەت دېتالى
GenericName[uk]=Поштова програма
GenericName[vi]=Phần mềm khách quản lý thư điện tử
GenericName[zh_CN]=邮件新闻客户端
GenericName[zh_TW]=郵件用戶端
Exec=/opt/thunderbird-32bit/thunderbird/thunderbird %u --class Thunderbird32
Icon=/opt/thunderbird-32bit/thunderbird/chrome/icons/default/default256.png
Terminal=false
Type=Application
Categories=Network;Email;
MimeType=message/rfc822;x-scheme-handler/mailto;application/x-xpinstall;
StartupNotify=true
Actions=ComposeMessage;OpenAddressBook;

[Desktop Action ComposeMessage]
Name=Write new message
Name[ar]=اكتب رسالة جديدة
Name[ast]=Redactar mensaxe nuevu
Name[be]=Напісаць новы ліст
Name[bg]=Съставяне на ново съобщение
Name[br]=Skrivañ ur gemennadenn nevez
Name[ca]=Escriu un missatge nou
Name[cs]=Napsat novou zprávu
Name[da]=Skriv en ny meddelelse
Name[de]=Neue Nachricht verfassen
Name[el]=Σύνταξη νέου μηνύματος
Name[es_AR]=Escribir un nuevo mensaje
Name[es_ES]=Redactar nuevo mensaje
Name[et]=Kirjuta uus kiri
Name[eu]=Idatzi mezu berria
Name[fi]=Kirjoita uusi viesti
Name[fr]=Rédiger un nouveau message
Name[fy_NL]=Skriuw in nij berjocht
Name[ga_IE]=Scríobh teachtaireacht nua
Name[gd]=Sgrìobh teachdaireachd ùr
Name[gl]=Escribir unha nova mensaxe
Name[he]=כתיבת הודעה חדשה
Name[hr]=Piši novu poruku
Name[hu]=Új üzenet írása
Name[hy_AM]=Գրել նոր նամակ
Name[is]=SKrifa nýjan póst
Name[it]=Scrivi nuovo messaggio
Name[ja]=新しいメッセージを作成する
Name[ko]=새 메시지 작성
Name[lt]=Rašyti naują laišką
Name[nb_NO]=Skriv ny melding
Name[nl]=Nieuw bericht aanmaken
Name[nn_NO]=Skriv ny melding
Name[pl]=Nowa wiadomość
Name[pt_BR]=Nova mensagem
Name[pt_PT]=Escrever nova mensagem
Name[rm]=Scriver in nov messadi
Name[ro]=Scrie un mesaj nou
Name[ru]=Создать новое сообщение
Name[si]=නව ලිපියක් ලියන්න
Name[sk]=Nová e-mailová správa
Name[sl]=Sestavi novo sporočilo
Name[sq]=Shkruani mesazh të ri
Name[sr]=Писање нове поруке
Name[sv_SE]=Skriv ett nytt meddelande
Name[ta_LK]=புதிய செய்தியை எழுதுக
Name[tr]=Yeni ileti yaz
Name[uk]=Написати нового листа
Name[vi]=Viết thư mới
Name[zh_CN]=编写新消息
Name[zh_TW]=寫一封新訊息
Exec=/opt/thunderbird-32bit/thunderbird/thunderbird -compose %u --class Thunderbird32

[Desktop Action OpenAddressBook]
Name=Open address book
Name[ar]=افتح دفتر العناوين
Name[ast]=Abrir llibreta de direiciones
Name[be]=Адкрыць адрасную кнігу
Name[bg]=Отваряне на адресник
Name[br]=Digeriñ ur c'harned chomlec'hioù
Name[ca]=Obre la llibreta d'adreces
Name[cs]=Otevřít Adresář
Name[da]=Åbn adressebog
Name[de]=Adressbuch öffnen
Name[el]=Άνοιγμα ευρετηρίου διευθύνσεων
Name[es_AR]=Abrir libreta de direcciones
Name[es_ES]=Abrir libreta de direcciones
Name[et]=Ava aadressiraamat
Name[eu]=Ireki helbide-liburua
Name[fi]=Avaa osoitekirja
Name[fr]=Ouvrir un carnet d'adresses
Name[fy_NL]=Iepenje adresboek
Name[ga_IE]=Oscail leabhar seoltaí
Name[gd]=Fosgail leabhar-sheòlaidhean
Name[gl]=Abrir a axenda de enderezos
Name[he]=פתיחת ספר כתובות
Name[hr]=Otvori adresar
Name[hu]=Címjegyzék megnyitása
Name[hy_AM]=Բացել Հասցեագիրքը
Name[is]=Opna nafnaskrá
Name[it]=Apri rubrica
Name[ja]=アドレス帳を開く
Name[ko]=주소록 열기
Name[lt]=Atverti adresų knygą
Name[nb_NO]=Åpne adressebok
Name[nl]=Adresboek openen
Name[nn_NO]=Opne adressebok
Name[pl]=Książka adresowa
Name[pt_BR]=Catálogo de endereços
Name[pt_PT]=Abrir livro de endereços
Name[rm]=Avrir il cudeschet d'adressas
Name[ro]=Deschide agenda de contacte
Name[ru]=Открыть адресную книгу
Name[si]=ලිපින පොත විවෘත කරන්න
Name[sk]=Otvoriť adresár
Name[sl]=Odpri adressar
Name[sq]=Hapni libër adresash
Name[sr]=Отвори адресар
Name[sv_SE]=Öppna adressboken
Name[ta_LK]=முகவரி பத்தகத்தை திறக்க
Name[tr]=Adres defterini aç
Name[uk]=Відкрити адресну книгу
Name[vi]=Mở sổ địa chỉ
Name[zh_CN]=打开通讯录
Name[zh_TW]=開啟通訊錄
Exec=/opt/thunderbird-32bit/thunderbird/thunderbird -addressbook %u --class Thunderbird32" > Thunderbird-32bit.desktop ;
# Exit
exit 0
