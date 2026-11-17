# Demo run sheet

18 November 2026, 15:00, 60 min. Slides: press `S` for speaker notes.

## Before

- [ ] Copy `example-project/` to `Documents/GitHub/toy-project` (VS Code) and `Documents/GitHub/toy-project-rstudio` (RStudio). Don't initialize. Delete any old `toy-project` repo on GitHub.
- [ ] Logged in to github.com in the browser and in VS Code (*Accounts*, bottom left).
- [ ] Large font, notifications off, charger and adapter.

## Demo 1: VS Code

1. Open `toy-project`. *Initialize Repository*. Point at `.gitignore`. Commit all: "First version".
2. `analysis.R`: add `+ education`, save, run (0.90 → 0.09). Show the diff. Commit: "Adjust for education".
3. AI edit ("add input checks and tidy the script"). Read the diff, revert one block, commit the rest.
4. History: *Graph* or *Timeline*, click an old commit.

## Demo 2: GitHub and RStudio

1. *Publish Branch* `toy-project`. Show commits and a diff on github.com.
2. Open `git-demo` in VS Code, *Publish Branch* → **public**, keep the name `git-demo`. *"This is the link you'll clone."*
3. On github.com: edit `README.md` of `toy-project` (pencil), *Commit changes*.
4. RStudio: open `toy-project-rstudio`, *Tools → Version Control → Project Setup → Git*, first commit.
5. RStudio: open `toy-project`, *Pull*, change something, commit, *Push*.

## Exercises

Exercise 1 on the slides (install, restart, who you are, clone). Exercise 2 in `participants/exercise-2-github.md`.
Pairs are fine. No working setup: Exercise 2 in the browser (pencil icon). Common problems: editor not restarted after installing git; login at first push.

## If something fails

No internet: screenshots in `slides/img/`. Login prompt: show it, it's what they'll see too.
