@echo off

::set /p link="> "

echo "Baixar um video de uma qualidade qualquer em mp4 numa pasta com metadados"
set /p link="Digite o link> "


yt-dlp -f mp4 --embed-metadata --embed-chapters --all-subs --embed-subs --embed-thumbnail --write-thumbnail --write-description --write-info-json --write-annotations --write-comments -o "%%(title)s/%%(title)s [%%(upload_date)s] [%%(id)s].%%(ext)s" %link%

