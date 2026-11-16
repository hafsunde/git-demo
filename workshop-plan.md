# Workshop plan: Git and GitHub for researchers

Working document. Edit freely. Fields marked `DECISION:` are open; tick `[ ]` boxes as you go.

---

## 1. Decision log

| Item | Decision |
|---|---|
| Event | CeFH Ung · 2nd Annual Young Researchers Workshop |
| Date, time | 18 November 2026, 15:00 (60 min) |
| Room | DECISION: ___ |
| Title | DECISION: *Git and GitHub for researchers* / other: ___ |
| Subtitle | DECISION: *Track changes for your code, and a place to share it* / other: ___ |
| Online / in person / hybrid | DECISION: ___ |
| Record the session? | DECISION: yes / no |
| Demo repo name on GitHub | DECISION: e.g. `toy-project` |
| Demo repo public or private | DECISION: public (easier to share) / private |
| Make demo repo a template for participants? | DECISION: yes / no |
| Exercise variant (see §5) | DECISION: A (own new repo) / B (from template) |
| Publish slides on GitHub Pages? | DECISION: yes / no |
| Send setup email when | DECISION: ___ (at least 1 day before) |
| Pre-workshop poll (OS, editor, GitHub account) | DECISION: yes / no |
| Follow-up channel after workshop | DECISION: Teams/Slack channel / office hour / none |

---

## 2. Learning goals

After the hour, participants can:

1. Explain what a commit is, and why one `analysis.R` with a history beats `analysis_final_v3.R`.
2. See what changed in a file (a diff), and use it to review their own and AI edits.
3. Push to and pull from GitHub, from VS Code or RStudio.
4. Share code on GitHub, knowing that the whole history goes along.

Main message: **the first week is annoying, after that it saves you time and nerves.**

Scope: no command line (a choice to keep it simple; mention once that it exists). No branches. Data protection only where it touches git (history is permanent).

---

## 3. Agenda (60 min)

| Min | Block | Mode | Slides |
|---|---|---|---|
| 0–5 | Why bother: many files vs one file with history | Talk | 1–6 |
| 5–15 | Core ideas: repo, `.git` folder, commit, diff, the cycle, laptop vs GitHub | Talk + diagram | 7–14 |
| 15–25 | Demo 1, VS Code: edit, diff, commit, AI edit review, history | Live demo | 15–18 |
| 25–32 | GitHub: sharing, coauthors, making code public. Demo 2: same in RStudio | Talk + live demo | 19–23 |
| 32–47 | Hands-on | Exercise | 24–25 |
| 47–56 | It's a hurdle, it's worth it. Tips. Idea for secure servers. Learn more | Talk | 26–30 |
| 56–60 | Questions | | 31 |

DECISION: If setup turns out patchy (from the poll), cut hands-on to 10 min and give the time to demo 1.

DECISION: Show a merge conflict (30 s, to defuse fear)? yes / no (currently only mentioned in words)

---

## 4. Demo script

### Prepare the demo repo (day before)

- [ ] Copy `example-project/` to its own folder outside this repo, e.g. `Documents/GitHub/toy-project`.
- [ ] Open it in VS Code, *Initialize repository*, and build up a short history (one commit each):
  1. "Add project skeleton and README"
  2. "Add simulation and model scripts"
  3. "Add first results from the server"
  4. "Add figure script and manuscript draft"
- [ ] Publish to GitHub (VS Code: *Publish Branch*). Choose public/private per §1.
- [ ] Prepare the "AI edit" for demo 1. Either do it live with Copilot/Claude, or have the change ready in a text file to paste. DECISION: live AI / pasted
- [ ] Prepare a "collaborator" change for demo 2: edit `README.md` directly on github.com, so there is something to pull.
- [ ] Take fallback screenshots of each step into `slides/img/`.
- [ ] Close other windows, large font in VS Code and RStudio (Ctrl + `+`), turn off notifications.

### Demo 1: VS Code (10 min)

1. Open the toy project. Point at the Source Control icon (left bar).
2. Change one line in `TSD/R/fit_model.R`: add `+ birth_year` to the model. Save.
3. Show: the file gets an `M`, click it, side-by-side diff. *"This is track changes for code."*
4. Write message "Adjust for birth year", click *Commit*. The file is clean again.
5. **AI edit.** Ask the AI assistant to "add input checks and tidy the script". It changes many lines.
6. Open the diff. Walk through it. Undo one change you didn't ask for: in the editor, click the coloured bar in the left margin → *Revert* (or use the AI tool's own keep/undo buttons). Commit the rest.
   *Point: commit before you let AI touch your code, then review the diff like a referee.*
7. Show history: *Graph* in Source Control, or *Timeline* at the bottom of the Explorer. Click an old commit, see what it changed.

### Demo 2: GitHub and RStudio (5 min)

1. In VS Code: *Sync Changes*. Switch to github.com, refresh, show the commit appears.
2. On github.com: show the list of commits, click one, same diff in the browser.
3. Show *Settings → Collaborators* (just point, don't add).
4. Open the same project in RStudio (`.Rproj`). Git pane, top right.
5. *Pull* (blue arrow) to get the change made on the web.
6. Tick a file, *Commit*, write message, *Push* (green arrow). Same ideas, different buttons.

### If something fails

- No internet: switch to screenshots, keep talking.
- Login prompt appears: that is actually a good teaching moment ("this is what you'll see the first time").

---

## 5. Hands-on (15 min)

Full steps in [participants/exercise.md](participants/exercise.md).

- **Variant A**: create a new repo on github.com (with README), clone it, edit README, commit, push, see it online.
- **Variant B**: "Use this template" on the demo repo, clone, make a change in `analysis/`, commit, push.

DECISION: A / B. A is safer (fewer moving parts).

- [ ] Ask people to sit in pairs, so one working laptop per pair is enough.
- [ ] Fallback for those without git: do the edit-and-commit on github.com in the browser (pencil icon).
- [ ] Bonus for fast people: edit on the web and pull it down; add a `.gitignore`.

---

## 6. Key messages, one per block

Keep slides to these; the rest goes in speaker notes.

- **Why**: "One `analysis.R`. Git keeps the old versions for you."
- **Commit**: "One commit per change that belongs together. Not once a day, not every line."
- **Diff**: "Shows exactly what changed. Check it when the changes aren't all yours: AI or coauthor."
- **Local vs GitHub**: "Git lives on your machine. GitHub is the shared copy, for coauthors and for your other computers."
- **AI**: "Commit first, let the AI edit, then read the diff."
- **Sharing**: "GitHub is where code goes with the paper. A public repo shows the whole history; start a fresh repo if needed."
- **Worth it**: "Painful for a week. Useful for the rest of your career."

---

## 7. Making code public (talk notes, slide 22)

- A public repo shows every commit, not only the current files.
- That includes old drafts, comments, and deleted files. Deleting a file only removes it from new versions.
- Simple fix: make a new repo, copy in the final code, publish that one. Keep the original private.
- Zenodo + GitHub gives a DOI for the exact version used in the paper.

## 8. Idea for secure servers (talk notes, slide 29)

Short, near the end. One way to do it, not a recommendation everyone must follow.

- Git can be installed on TSD, but I don't use it there.
- Instead: the server scripts live in a folder in the local repo (`TSD/` or `on_server/`). Edit there, copy to TSD, run, export aggregate results back.
- Fake data with the same columns lets me run the server scripts locally and build figures before real results exist.
- `example-project/` shows the layout (based on `hPGS-sem` and `hs_phewas`).

DECISION: Why I don't use git on TSD (one line for the slide notes): ___

---

## 9. Things to mention briefly (pick some)

- [ ] Everything today can also be done from the command line. Most guides online use it. Same git underneath. (On "Learn more" slide.)
- [ ] Don't put a git repo inside OneDrive/Dropbox; they fight.
- [ ] Word/Excel/.dta files are tracked but can't be compared line by line. Plain text (R, .do, .tex, .md) works best.
- [ ] LaTeX/Markdown: one sentence per line gives readable diffs.
- [ ] Stata has no git button: use VS Code on the project folder.
- [ ] Overleaf can sync with GitHub, but only on a paid plan.
- [ ] Branches exist; you don't need them to start.

---

## 10. Pre-workshop checklist

- [ ] Send setup email with [participants/setup.md](participants/setup.md). Date: ___
- [ ] (Optional) Poll: Windows/Mac? RStudio/VS Code/Stata? GitHub account?
- [ ] Test the setup instructions on a Mac if any participants use one. Who can test: ___
- [ ] Prepare demo repo (§4).
- [ ] Render slides, check speaker notes (press `S`).
- [ ] Fill in screenshots in `slides/img/`.
- [ ] Do the exercise once yourself, in both VS Code and RStudio, with a timer.
- [ ] Laptop charger, HDMI/USB-C adapter.

## 11. After the workshop

- [ ] Share link to this repo / the slides.
- [ ] Follow-up: ___
- [ ] Note what to change next time: ___
