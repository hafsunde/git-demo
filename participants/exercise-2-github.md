# Exercise 2: your first commit and push (15 min)

Goal: make a repository on GitHub, get it onto your laptop, change something, and send the change back.

You need git working and the workshop repo cloned from Exercise 1 (`participants/exercise-1-setup.md`). Not finished? Pair with someone whose setup works, or use the browser-only route at the bottom.

Working in pairs is fine.

---

## Before you start: a GitHub account

No account yet? Go to <https://github.com> and sign up.
Pick a username you are happy to put on a CV or in a paper (e.g. `karinordmann`, not `catlover92`).

Logging in from your computer:

- **VS Code** (Windows and Mac) and **RStudio on Windows**: nothing to do now. The first time you push (step 5), a browser window opens to sign in to GitHub. Click *Allow*.
- **RStudio on Mac**: you need a *token* (a password for programs). In R:

  ```r
  usethis::create_github_token()   # opens GitHub; click "Generate token" and copy it
  gitcreds::gitcreds_set()         # paste the token when asked
  ```

## 1. Make a repository on GitHub (2 min)

1. Go to <https://github.com> and log in.
2. Click **+** (top right) → **New repository**.
3. Name: `git-practice`. Choose **Private**.
4. Tick **Add a README file**.
5. Click **Create repository**.
6. Click the green **Code** button and copy the HTTPS link.

## 2. Get it onto your laptop ("clone") (3 min)

Same as cloning the workshop repo in Exercise 1, but with your own link:

- **VS Code**: *File → Close Folder*, then **Source Control** → **Clone Repository**, paste the link, choose a folder (e.g. `Documents/GitHub`), click **Open**.
- **RStudio**: *File → New Project → Version Control → Git*, paste the link, choose a folder, **Create Project**.

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

The first time, a login window appears. Follow it. On a Mac with RStudio you need the token from *Before you start*.

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
| VS Code says git is not found | Install git (Exercise 1, step 1), then restart VS Code. |
| "Please tell me who you are" | Do Exercise 1, step 3. |
| Push asks for a password | GitHub doesn't accept your password here. Use the browser login, or a token (see *Before you start*). |
| "Updates were rejected" | Someone (maybe you, on the web) changed GitHub first. Pull, then push. |
