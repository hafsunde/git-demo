# Setup before the workshop (15 min)

Please do this **before** the workshop. If something doesn't work, that's fine: note where it stopped and bring your laptop. We will sit in pairs.

## 1. Make a GitHub account

Go to <https://github.com> and sign up.
Pick a username you are happy to put on a CV or in a paper (e.g. `karinordmann`, not `catlover92`).

## 2. Install git

**Work laptop (Windows)**

Open **Company Portal** (*Firmaportal*), search for **Git**, and install it.

**Private laptop (Windows)**

1. Download *Git for Windows* from <https://git-scm.com/downloads/win>.
2. Run the installer. Click *Next* through everything; the defaults are fine.

**Mac**

1. Open the *Terminal* app (search for it with Cmd + Space).
2. Type `git --version` and press Enter.
3. If git is missing, a window asks to install developer tools. Click *Install*. If it prints a version number, you already have git.

This is the only time you'll need the terminal.

## 3. Pick your editor

You need **one** of these. Use the one you already have.

- **RStudio**: restart RStudio after installing git. Check *Tools → Global Options → Git/SVN*: the "Git executable" field should show a path.
- **VS Code**: <https://code.visualstudio.com>. Git support is built in. Stata users: use VS Code for git.

## 4. Tell git who you are (from R)

Paste into the R console, with your own name and the email you used for GitHub:

```r
install.packages("usethis")
usethis::use_git_config(
  user.name  = "Your Name",
  user.email = "you@example.com"
)
```

## 5. Check that it works

Still in R:

```r
usethis::git_sitrep()
```

Look for your name and email under *Git global (user)*. Warnings about tokens are OK at this point; see step 6.

## 6. Logging in to GitHub from your computer

- **VS Code** (Windows and Mac): the first time you push, VS Code opens a browser window to sign in to GitHub. Click *Allow*. Done.
- **RStudio on Windows**: the first time you push, a window opens to sign in with the browser. Done.
- **RStudio on Mac**: you need a *token* (a password for programs). In R:

  ```r
  usethis::create_github_token()   # opens GitHub; click "Generate token" and copy it
  gitcreds::gitcreds_set()         # paste the token when asked
  ```

You can't test this step without a repository. We'll do it together in the workshop.

## Checklist

- [ ] I have a GitHub account and know my username and password
- [ ] git is installed
- [ ] RStudio or VS Code is installed
- [ ] `usethis::git_sitrep()` shows my name and email

---

<details>
<summary>Email text for the organiser (copy-paste)</summary>

**Subject:** Git workshop on 18 November: 15 min setup beforehand

Hi all,

Looking forward to the git/GitHub session at the CeFH Ung Young Researchers Workshop on 18 November at 15:00 in [ROOM].
We'll do a short hands-on part, so please spend about 15 minutes on setup before you come:

[LINK TO setup.md]

If you get stuck, just bring your laptop, and we'll sort it out or you can pair with someone.

Quick question to help me plan (reply with one line):
Windows or Mac? RStudio, VS Code or Stata? Do you already have a GitHub account?

Best,
[NAME]

</details>
