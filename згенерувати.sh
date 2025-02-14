#!/usr/bin/env sh

set -e

if ! [ -d ".вебсайт" ]; then
  git clone "https://github.com/tsil-ukr/website" ".вебсайт" --depth=1
else
  cd ".вебсайт"
  git pull
  cd -
fi

rm -rf ".будування/ресурси"
rm -rf ".будування/*.html"

докс перетворити --вхід=. --вихід=.будування --вигляд=.вебсайт/тема --ґтег=G-DCB6ENR1SK
cp -a 404.html .будування
докс карта --вхід=.будування --вихід=.будування --домен=часопис.ціль.укр