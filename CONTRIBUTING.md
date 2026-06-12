# Contributing

This project follows the **GitLab Flow** workflow — a pragmatic middle ground between GitHub Flow (too simple) and GitFlow (too complex). It keeps `main` always deployable, ties every branch to an issue, and avoids long-lived parallel branches.

---

## Why GitLab Flow, not GitFlow

GitFlow introduces a permanent `develop` branch and multiple long-lived branches (`release/*`, `hotfix/*`) that add overhead without much benefit for most projects. GitLab Flow instead:

- Keeps `main` as the single source of truth
- Creates short-lived branches per issue
- Uses environment branches (`staging`, `production`) only when the project needs them
- Fixes go to `main` first, then are cherry-picked to release branches if needed ("upstream first")

---

## Workflow

### 1. Issue first

Before writing any code, create an issue using one of the templates. Every branch must trace back to an issue.

Sprint state is managed by the **GitHub Project kanban board** (Backlog → In Progress → In Review → Done). Labels on issues reflect issue *type* only, not state.

### 2. Branch off main

```
git checkout main
git pull origin main
git checkout -b <type>/<issue-number>-short-description
```

Branch naming conventions:

| Type | Example |
|---|---|
| `feature/` | `feature/12-add-zsh-aliases` |
| `chore/` | `chore/3-update-readme` |
| `bug/` | `bug/15-zshrc-not-sourcing-aliases` |

### 3. Commit conventions

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>: <short summary>

feat: add zsh alias for docker compose
fix: resolve zshrc load order issue
chore: update brew dependencies list
```

`fix:` is the Conventional Commits type for bug fixes. The issue template is named `bug` to describe the *problem*; the commit prefix is `fix:` to describe the *action*.

Reference the issue number in the PR description, not in every commit.

### 4. Open a pull request

- Target branch: `main`
- Title should match your commit convention (`feat:`, `fix:`, `chore:`)
- Move the issue to `In Progress` on the kanban board when you open the PR
- At least one approval before merging (for shared repos)

### 5. Merge and close

- Squash or merge commit — keep `main` history readable
- Move the issue to `Done` on the kanban board and close it when the PR merges
- Delete the feature branch after merge (auto-deleted if repo setting is enabled)

---

## Environment branches (optional)

If this project ever needs staged deployments, add environment branches downstream of `main`:

```
main → staging → production
```

Changes flow strictly downstream. Never commit directly to `staging` or `production`.
