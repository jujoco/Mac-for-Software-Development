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
git checkout -b <your-branch-name>
```

Move the issue to **In Progress** when you open the branch.

### 3. Commit conventions

Follow [Conventional Commits](https://www.conventionalcommits.org/) with the issue number as the scope:

```
<type>(<issueNumber>): <short summary>

feat(#12): add zsh alias for docker compose
fix(#15): resolve zshrc load order issue
chore(#3): update brew dependencies list
```

The scope makes every commit on the branch traceable to its issue. Since all commits are squashed on merge, the squash commit inherits this pattern — giving you one line in `staging` history that maps directly to one issue.

`fix:` is the Conventional Commits type for bug fixes. The issue template is named `bug` to describe the *problem*; the commit prefix is `fix:` to describe the *action*.

Commit freely on your branch — all commits are squashed on merge.

### 4. Open a pull request

- Target branch: `staging`
- Title must follow commit convention (`feat:`, `fix:`, `chore:`) — the issue number lives here, in the scope
- Body lists the work that was done in bullet points (no issue number needed)
- Move the issue to **In Review** when the PR is open

example:

```
## Summary
- added X for Y
- updated B dependencies list
- etc.
```

### 5. Squash and merge into staging

- **Squash and merge only** — one commit per issue on `staging`
- The squash commit message is the scoped prefix plus the commit summary: `feat(#12): add zsh aliases`
- This keeps `staging` history linear: one line per issue, fully traceable
- Branch is auto-deleted after merge
- Move the issue to **Done**
