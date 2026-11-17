# Demo run sheet

18 November 2026, 15:00, 60 min. Slides: press `S` for speaker notes.

## Before

- [ ] Copy `example-project/` to `Documents/GitHub/toy-project`. Don't initialize. (Optional, for the RStudio init if time: a second copy, `toy-project-rstudio`.)
- [ ] `git-demo`: everything committed, no `git-demo` repo on GitHub yet.
- [ ] Logged in to github.com in the browser and in VS Code (*Accounts*, bottom left).
- [ ] Large font, notifications off, charger and adapter.

## Demo 1: VS Code, then RStudio

1. VS Code: open `toy-project`. *Initialize Repository*. Point at `.gitignore`. Commit all: "First version".
2. `analysis.R`: add `+ education`, save, run (0.90 → 0.09). Show the diff. Commit: "Adjust for education".
3. AI edit ("make figure showing coefficient before and after adjustment for education"). Read the diff and evaluate.
4. History: *Graph* or *Timeline*, click an old commit.
5. RStudio: open the same project, `toy-project/toy-project.Rproj`. The Git tab is there: git is in the folder, not in the editor.
6. History (clock icon): the same commits. Make a small edit, show *Diff*. *"Same ideas, different buttons."*
7. If time: initialize in RStudio on `toy-project-rstudio` (*Tools → Version Control → Project Setup → Git*).

## Demo 2: GitHub (with `git-demo`)

1. Open `git-demo` in VS Code. *Publish Branch* → **public**, keep the name `git-demo`.
2. On github.com: show the files, the list of commits, click one to see the diff. *"This is the link you'll clone."*
3. Play the coauthor: edit `README.md` on github.com (pencil), *Commit changes*.
4. VS Code: *Sync Changes*. The edit arrives. Show it in the history.

## Exercises

Exercise 1 on the slides (install, restart, who you are, clone). Exercise 2 in `participants/exercise-2-github.md`.
Pairs are fine. No working setup: Exercise 2 in the browser (pencil icon). Common problems: editor not restarted after installing git; login at first push.

## If something fails

No internet: screenshots in `slides/img/`. Login prompt: show it, it's what they'll see too.
