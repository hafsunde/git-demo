# Exercise 1: set up git and clone the workshop repo

Goal: git installed, git knowing who you are, and a copy of the workshop material on your laptop.
You don't need a GitHub account for this exercise.

If something doesn't work, note where it stopped and ask. Working in pairs is fine.

---

## 1. Install git

**Work laptop (Windows)**

Open **Company Portal** (*Firmaportal*), search for **Git**, and install it.

**Private laptop (Windows)**

1. Download *Git for Windows* from <https://git-scm.com/downloads/win>.
2. Run the installer. Click *Next* through everything; the defaults are fine.

**Mac**

1. Open the *Terminal* app (search for it with Cmd + Space).
2. Type `git --version` and press Enter.
3. If git is missing, a window asks to install developer tools. Click *Install*. If it prints a version number, you already have git.

On a Mac, this is the only time you need the Terminal app.

## 2. Restart your editor

You need **one** of these. Use the one you already have.

- **RStudio**: restart RStudio after installing git. Check *Tools → Global Options → Git/SVN*: the "Git executable" field should show a path.
- **VS Code**: <https://code.visualstudio.com>. Git support is built in. Restart VS Code after installing git. Stata users: use VS Code for git.

## 3. Tell git who you are

Every commit records who made it: a name and an email. Git won't commit until it knows, and GitHub uses the email to link your commits to your account.
Use the email you use (or will use) for GitHub. You only do this once per computer.

**RStudio**: paste into the R console, with your own name and email:

```r
install.packages("usethis")
usethis::use_git_config(
  user.name  = "Your Name",
  user.email = "you@example.com"
)
```

Check it with `usethis::git_sitrep()`: your name and email are under *Git global (user)*. Warnings about GitHub or tokens are OK for now.

**VS Code**: open *Terminal → New Terminal* and type, one line at a time:

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

Check it with `git config --global --list`.

## 4. Clone the workshop repo

The link: **<https://github.com/hafsunde/git-demo>**

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

> Tip: a normal folder works best. OneDrive or Dropbox is usually fine as a backup, but syncing between computers can clash with git.

You now have the slides, the exercises and the cheatsheet on your laptop, with their full history.
Next: open `participants/exercise-2-github.md`.

---

## Done early?

Look at the history of the workshop repo:

- VS Code: the **Graph** section in Source Control, or *Timeline* at the bottom of the Explorer.
- RStudio: the clock icon (**History**) in the Git tab.

Click a commit to see what it changed.
