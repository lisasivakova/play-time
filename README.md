# Play Time: how to install on iPhone (GitHub + Supabase)

Play Time is a web app. GitHub hosts it for free, and Supabase stores the game so both phones stay in sync. Then each of you adds it to the iPhone home screen, where it opens full-screen like a normal app.

You need a computer for steps 1–3 (about 15 minutes). Step 4 is on each iPhone.

## 1. Create the database (Supabase)

1. Open https://supabase.com and click **Start your project → Continue with GitHub**.
2. Click **New project**.
   - Name: `play-time`. Set any database password (you won't need it again).
   - Region: **Central EU (Frankfurt)** or the closest one. Click **Create new project** and wait about a minute.
3. In the left menu open **SQL Editor → New query**. Paste the whole contents of `setup.sql` from this folder and click **Run**. You should see "Success".
4. Open **Project Settings → API** (in some versions, **Data API** and **API Keys**). Keep this page open. You need:
   - **Project URL**, which looks like `https://abcdefgh.supabase.co`
   - the **anon public** key, a long line of letters

## 2. Connect the app (config.js)

1. Open `config.js` from this folder in TextEdit (right-click → Open With → TextEdit).
2. Replace the first `ВСТАВЬ_СЮДА` with the Project URL and the second with the anon public key. Keep the quotes.
3. Save.

`gameCode` is your shared game name. Leave it as it is, or change it later to start a fresh score.

## 3. Put it online (GitHub Pages)

1. On https://github.com, click **+ → New repository**.
   - Name: `play-time`. Choose **Public**, because free GitHub Pages needs a public repository. Click **Create repository**.
2. On the new page click **uploading an existing file**.
3. Open the `play-time-app` folder, select **all the files inside it** (index.html, config.js, manifest.webmanifest, the icons and the rest), and drag them onto the page. Upload the files themselves, not the folder. Click **Commit changes**.
4. Go to **Settings → Pages**. Under **Build and deployment** choose **Deploy from a branch**, branch **main**, folder **/ (root)**, then **Save**.
5. After a minute or two, refresh. The page shows your link: `https://YOUR-NAME.github.io/play-time/`.

Open the link on the computer once. You should see the two cats. If you see «Приложение ещё не подключено к базе», check `config.js`.

## 4. Install on each iPhone

1. Open the link in **Safari**. Telegram, Instagram and Chrome can't install it.
2. Tap **Share** (square with an arrow) → **Add to Home Screen** → **Add**.
3. Open **Play Time** from the home screen and tap your cat: **LS** black, **SH** white.

Send SH the same link. The first round starts by itself, and LS writes the first clues. Moves sync within a few seconds.

## Good to know

- The cat choice is saved on each phone. To switch, tap the round button with your name at the top right → **Сменить кошку**.
- To update the app later: in your GitHub repository click **Add file → Upload files**, drag in the new `index.html` (and other changed files, but not your filled-in `config.js`), then **Commit changes**. Pages updates in a minute.
- The anon key is meant to be public, so it's fine in a public repository. Anyone with the link could still open your game, so don't post the link publicly.
- A Supabase project on the free plan pauses after a week with no activity. If that happens, open supabase.com and click **Restore**.
- If GitHub or Supabase doesn't open on your network, try again with a VPN for the setup steps.
