# Contributing

This project follows **GitLab Flow** with two long-lived branches — a pragmatic middle ground between GitHub Flow (too simple) and GitFlow (too complex).

---

## Branch model

| Branch | Role | Default |
|---|---|---|
| `staging` | Integration branch — all work lands here first | yes |
| `main` | Production — promoted from `staging` manually | no |

`staging` is the GitHub default branch. All feature branches are cut from `staging` and merged back into it. Promotions from `staging` → `main` are done manually when the work is ready to ship.

Never commit directly to `staging` or `main`.

---

## Why GitLab Flow, not GitFlow

GitFlow introduces a permanent `develop` branch and multiple long-lived branches (`release/*`, `hotfix/*`) that add overhead without much benefit for most projects. GitLab Flow instead:

- Uses `staging` as the integration branch and `main` as production
- Creates short-lived branches per issue
- Promotes upstream: `staging` → `main` when ready
- No separate hotfix branches — urgent fixes follow the same PR process, just expedited

---

## Sprint board

State is managed by the **GitHub Project kanban board**. Labels on issues reflect *type* only, never state.

| Column | Meaning |
|---|---|
| **Backlog** | All open issues — the full inventory |
| **Up Next** | Prioritised and approved to be picked up |
| **In Progress** | Actively being worked on |
| **In Review** | PR is open, awaiting review or merge |
| **Done** | Merged and closed |

---

## Workflow

### 1. Issue first

Create an issue using one of the templates before writing any code. Every branch traces back to an issue. Move the issue to **Up Next** before starting work.

### 2. Branch off staging

```
git checkout staging
git pull origin staging
git checkout -b <type>/<issue-number>-short-description
```

Branch naming conventions:

| Type | Example |
|---|---|
| `feature/` | `feature/12-add-zsh-aliases` |
| `chore/` | `chore/3-update-readme` |
| `bug/` | `bug/15-zshrc-not-sourcing-aliases` |

Move the issue to **In Progress** when you open the branch.

### 3. Commit conventions

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```
feat: add zsh alias for docker compose
fix: resolve zshrc load order issue
chore: update brew dependencies list
```

`fix:` is the Conventional Commits type for bug fixes. The issue template is named `bug` to describe the *problem*; the commit prefix is `fix:` to describe the *action*.

Commit freely on your branch — all commits are squashed on merge.

### 4. Open a pull request

- Target branch: `staging`
- Title must follow commit convention (`feat:`, `fix:`, `chore:`)
- Body must include `Closes #<issue-number>` — this links the squash commit to the issue and auto-closes it on merge
- Move the issue to **In Review** when the PR is open

```
## Summary
<what and why>

Closes #12
```

### 5. Squash and merge into staging

- **Squash and merge only** — one commit per issue on `staging`
- The squash commit message becomes: `feat: add zsh aliases (#PR) — Closes #12`
- This keeps `staging` history linear: one line per issue, fully traceable
- Branch is auto-deleted after merge
- Move the issue to **Done**

### 6. Promote staging → main

When `staging` is stable and ready to ship, open a PR from `staging` → `main` manually. Use a standard merge commit (not squash) to preserve the full staging history on `main`.

```
git checkout staging
git pull origin staging
# open PR: staging → main via GitHub UI
```
