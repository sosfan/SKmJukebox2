OUTPUT_BIN="skmjukebox"

if [[ -e FILE ]]; then
  echo "Limpiando..."
  rm ./$OUTPUT_BIN.gambas
fi

gbc3 -aeg

gba3 -o $OUTPUT_BIN.gambas
