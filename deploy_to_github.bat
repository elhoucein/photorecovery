@echo off
echo ==========================================
echo Deploying Landing Page to GitHub
echo Repository: https://github.com/elhoucein/photorecovery
echo ==========================================

cd /d "%~dp0"

if not exist .git (
    git init
    git branch -M main
    git remote add origin https://github.com/elhoucein/photorecovery.git
)

git add .
git commit -m "Deploy Photo Recovery Pro landing page and app-ads.txt"
git push -u origin main

echo.
echo ==========================================
echo Done! Remember to enable GitHub Pages in:
echo https://github.com/elhoucein/photorecovery/settings/pages
echo ==========================================
pause
