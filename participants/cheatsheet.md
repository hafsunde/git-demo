# Git cheat sheet

## Words

| Word | Means |
|---|---|
| repository (repo) | A project folder that git keeps track of |
| commit | A saved snapshot of the project, with a short message |
| diff | What changed: red removed, green added |
| hash | A commit's unique ID, e.g. `e81c5f3` |
| `.git` | Hidden folder inside the project that holds the history |
| stage | Choose which changes go into the next commit. Optional in VS Code (nothing staged = commit all). In RStudio you tick *Staged* for the files to commit, usually all of them |
| push | Send your commits to GitHub |
| pull | Get new commits from GitHub |
| clone | Download a repo from GitHub the first time |
| `.gitignore` | A file listing what git should never track |
| branch | A side version of the project (not needed to start) |
| conflict | You and someone else changed the same line; you choose which to keep |

## Start a repo

There are two ways. Either way, add a `.gitignore` (see below) before your first commit, so data files are never tracked.

**A. New project: start on GitHub, then clone.** The easiest route, because the link to GitHub is set up for you.

1. github.com: **+** → *New repository*. Choose *Private*, tick *Add a README file*, click *Create repository*.
2. Click the green **Code** button and copy the HTTPS link.
3. Clone it:
   - VS Code: Source Control → *Clone Repository*, paste the link, choose a folder.
   - RStudio: *File → New Project → Version Control → Git*, paste the link, choose a folder.

**B. Folder you already have: initialize it.** Git starts tracking the folder where it is. Nothing is moved or uploaded.

| | VS Code | RStudio |
|---|---|---|
| Initialize | *File → Open Folder*, then Source Control → *Initialize Repository* | Open the project (`.Rproj`), then *Tools → Version Control → Project Setup* → *Git*. RStudio restarts with a Git tab. No `.Rproj` yet? *File → New Project → Existing Directory* first. |
| First commit | Message `First version` → *Commit* (click *Yes* when asked about staging) | Tick all files under *Staged* → *Commit* |
| Put it on GitHub | *Publish Branch*, choose private or public | No button. In the R console: `usethis::use_github(private = TRUE)` |

## The daily cycle

1. **Pull** when you start
2. Edit and save as usual
3. **Commit** with a message that says why
4. **Push** when you're done

Look at the **diff** when you didn't make every change yourself: after an AI edit, or after pulling a coauthor's work.

## Where the buttons are

| | VS Code | RStudio |
|---|---|---|
| See changes | Source Control icon (left bar) | Git tab (top right) |
| Diff | Click the file | *Diff* button |
| Commit | Type message → *Commit* | Tick *Staged* → *Commit* |
| Push / pull | *Sync Changes* | Green arrow / blue arrow |
| History | *Graph* in Source Control, or *Timeline* | Clock icon |
| Throw away unsaved-to-git changes | Curved arrow next to the file (*Discard*) | *More → Revert* |
| Keep or throw away part of a file | In the diff: buttons next to each block, or select lines → right-click → *Stage / Revert Selected Ranges* | *Diff* → *Stage chunk* / *Discard chunk*, or select lines → *Stage selection* / *Discard selection* |
| Undo last commit (not pushed) | `…` menu → *Commit → Undo Last Commit* | Ask for help, or use VS Code |

Stata: Stata has no git button. Open the project folder in VS Code and use it for git.

## Before letting AI edit your code

1. Commit
2. Let the AI edit
3. Read the diff
4. Keep what you asked for, discard the rest

## History is permanent

Deleting a file later doesn't remove it from earlier commits.
A public repo shows the whole history, so before making code public, consider copying the final version into a **new repo** and publishing that one.

To keep data files out from the start, add a `.gitignore` file. A starting point for R/Stata projects:

```
*.rds
*.RData
*.dta
*.sav
data/
.Rhistory
.Rproj.user/
```

## Good habits

- Small commits, often
- Messages that say why (`Adjust for education`, not `changes`)
- Plain text files work best: `.R`, `.do`, `.tex`, `.md`, `.qmd`
- LaTeX and Markdown: one sentence per line
- Prefer a normal folder (e.g. `Documents/GitHub`) over OneDrive/Dropbox; syncing can clash with git

## Learn more

- *Happy Git and GitHub for the useR*: <https://happygitwithr.com>
- GitHub Docs: <https://docs.github.com>
