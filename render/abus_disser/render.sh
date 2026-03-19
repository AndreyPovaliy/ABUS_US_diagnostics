#!/bin/bash

echo "=== Step 1: Rendering to HTML ==="
quarto render --to html

echo "=== Step 2: Converting HTML to DOCX ==="
for file in _book/*.html; do
  if [ "$file" != "index.html" ]; then
    echo "Converting $file..."
    pandoc "$file" -o "${file%.html}.docx" \
      --from html \
      --to docx \
      --citeproc \
      --bibliography=references.bib \
      --csl=ama.csl
  fi
done

echo "=== Step 3: Merging all DOCX files ==="
# Создаем временный файл со списком
ls _book/*.docx | grep -v "full_dissertation.docx" > docx_list.txt

# Объединяем
pandoc $(cat docx_list.txt) -o full_dissertation.docx

echo "=== Done! ==="