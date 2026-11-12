# Deployment & Google AdMob Verification Guide

## 1. Quick Deploy to GitHub Repository (`elhoucein/photorecovery`)

Open PowerShell or Terminal inside this `landing_page` directory:

```bash
cd "d:\app 2027\LAHCEN\RecoveryPhoto\landing_page"

# Initialize git if needed
git init
git add .
git commit -m "Add Photo Recovery landing page and app-ads.txt verification"
git branch -M main

# Link to your repository
git remote add origin https://github.com/elhoucein/photorecovery.git

# Push to GitHub
git push -u origin main --force
```

### Enable GitHub Pages in your repo:
1. Open your repository on GitHub: [https://github.com/elhoucein/photorecovery](https://github.com/elhoucein/photorecovery)
2. Go to **Settings** > **Pages** (in left menu).
3. Under **Branch**, select `main` and `/ (root)`, then click **Save**.
4. Your website will be live in ~1-2 minutes at:
   - **Landing Page**: `https://elhoucein.github.io/photorecovery/`
   - **app-ads.txt**: `https://elhoucein.github.io/photorecovery/app-ads.txt`
   - **ads.txt**: `https://elhoucein.github.io/photorecovery/ads.txt`

---

## 2. CRITICAL: How AdMob Crawls `app-ads.txt` with GitHub Pages

> **Important**: According to IAB and Google AdMob specifications, the crawler will extract the **root domain** from your Google Play Store listing.
> - If your developer website is `https://elhoucein.github.io/photorecovery`, AdMob will attempt to crawl:
>   `https://elhoucein.github.io/app-ads.txt`

### To guarantee 100% verification approval by AdMob:

#### Option A (Recommended by Google developers):
Create a repository named **`elhoucein.github.io`** on your GitHub account:
1. Create a new repository named exactly: `elhoucein.github.io` (Public).
2. Copy `app-ads.txt`, `ads.txt`, `index.html`, and `assets/` into it.
3. Enable Pages on it.
4. Now `https://elhoucein.github.io/app-ads.txt` will be live at the root domain!
5. In your Google Play Console store listing, set your developer website to:
   `https://elhoucein.github.io`

#### Option B (Custom Domain):
If you have a custom domain (e.g., `photorecoveryapp.com`):
1. In `elhoucein/photorecovery` Settings > Pages, add your custom domain.
2. The file will be available at `https://photorecoveryapp.com/app-ads.txt` (root domain).

---

## 3. Google Play Console & AdMob Verification Checklist

1. **Google Play Console**:
   - Go to your app (**Photo Recovery Pro**, `photorecovery.files`).
   - Go to **Store presence** > **Store settings**.
   - Under **Website**, enter: `https://elhoucein.github.io` (or your domain).
   - Under **Privacy Policy**, enter: `https://elhoucein.github.io/photorecovery/privacy.html`
   - Save and submit updates.

2. **Google AdMob Console**:
   - Go to **Apps** > **All apps** > **app-ads.txt** tab.
   - Look for **Photo Recovery Pro**.
   - Click **Check for updates** / verify.
   - *Note*: Google crawlers typically take 24–48 hours to crawl and update the status to **Ready**.
