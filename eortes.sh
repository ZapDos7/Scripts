#simera=$(wget -q -O- http://www.greeknamedays.gr/tools/eortologiorssfeed/index.php\?langid\=gr | grep -o ".*" | tail -n1 | cut -c 14- | cut -f1 -d"<" | sed 's/\, /\n/g')
simera=$(wget -q -O- http://www.greeknamedays.gr/tools/eortologiorssfeed/index.php\?langid\=gr | grep -o "<description>.*" | tail -n1  | cut -c 14- | cut -f1 -d"<" | sed 's/\, /\n/g')
#notify-send "$simera"
zenity --title "Σήμερα γιορτάζει" --info --text="$simera" --width=250