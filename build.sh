OUTPUT_BIN="skmjukebox"

if [[ -e $OUTPUT_BIN.gambas ]]; then
  echo "Limpiando..."
  rm ./$OUTPUT_BIN.gambas
fi

gbc3 -aeg

gba3 -o $OUTPUT_BIN.gambas
