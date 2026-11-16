# Exercise: your first commit and push (15 min)

Goal: make a repository on GitHub, get it onto your laptop, change something, and send the change back.

Working in pairs is fine.

---

## 1. Make a repository on GitHub (2 min)

1. Go to <https://github.com> and log in.
2. Click **+** (top right) → **New repository**.
3. Name: `git-practice`. Choose **Private**.
4. Tick **Add a README file**.
5. Click **Create repository**.
6. Click the green **Code** button and copy the HTTPS link.

## 2. Get it onto your laptop ("clone") (3 min)

**VS Code**

1. Close any open folder (*File → Close Folder*).
2. Click the **Source Control** icon in the left bar → **Clone Repository**.
3. Paste the link, press Enter.
4. Choose where to put it, e.g. `Documents/GitHub`. Click **Open** when asked.

**RStudio**

1. *File → New Project → Version Control → Git*.
2. Paste the link in *Repository URL*.
3. Choose where to put it (*Create project as subdirectory of*), e.g. `Documents/GitHub`.
4. Click **Create Project**. A **Git** tab appears top right.

> Don't put it in OneDrive or Dropbox.

## 3. Change something (1 min)

Open `README.md`. Add a line, for example what you work on. Save.

## 4. Look at the change and commit (3 min)

**VS Code**

1. Click **Source Control**. `README.md` is listed under *Changes*.
2. Click the file: you see the diff (old left, new right).
3. Type a message in the box, e.g. `Describe my project`.
4. Click **Commit**. If asked about staging, click **Yes**.

**RStudio**

1. In the **Git** tab, `README.md` has an **M** (modified).
2. Tick the box under *Staged*, click **Commit**.
3. The window shows the diff. Type a message, click **Commit**, then close.

## 5. Send it to GitHub ("push") (3 min)

**VS Code**: click **Sync Changes**.
**RStudio**: click the green **Push** arrow.

The first time, a login window appears. Follow it.

Now refresh your repo on github.com. Your change and your message are there.
Click the commit message to see the diff in the browser.

---

## Done early?

**Get a change from GitHub ("pull")**

1. On github.com, open `README.md`, click the pencil icon, change a line, click **Commit changes**.
2. In VS Code: **Sync Changes**. In RStudio: blue **Pull** arrow.
3. The change appears on your laptop.

**Tell git to ignore data files**

1. Create a file called `.gitignore` in the project folder with this line:
   ```
   *.rds
   ```
2. In R, run `saveRDS(mtcars, "test.rds")` in the project folder.
3. Check Source Control / the Git tab: `.gitignore` shows up, `test.rds` doesn't.
4. Commit and push `.gitignore`.

**Look at the history**

- VS Code: the **Graph** section in Source Control, or *Timeline* at the bottom of the Explorer.
- RStudio: the clock icon (**History**) in the Git tab.

---

## No working setup?

Do steps 1, 3 and 4 directly on github.com: open `README.md`, click the pencil icon, edit, then **Commit changes**. You get the same commit and history, just without the laptop part.

## Common problems

| Problem | Try |
|---|---|
| RStudio has no Git tab | Restart RStudio. Check *Tools → Global Options → Git/SVN*. Make sure you opened a *project*. |
| VS Code says git is not found | Install git (see `setup.md`), then restart VS Code. |
| "Please tell me who you are" | Run the `usethis::use_git_config()` step in `setup.md`. |
| Push asks for a password | GitHub doesn't accept your password here. Use the browser login, or a token (`setup.md`, step 6). |
| "Updates were rejected" | Someone (maybe you, on the web) changed GitHub first. Pull, then push. |
