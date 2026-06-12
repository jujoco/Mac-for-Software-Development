# Contributing

This project follows **GitLab Flow** with two long-lived branches - staging (default) & main.

---

## Sprint board

State is managed by the **GitHub Project kanban board**. Labels on issues reflect *type* only, never state.

| Column | Meaning |
|---|---|
| **Backlog** | All open issues — the full inventory |
| **Ready** | Prioritized and approved to be picked up |
| **In Progress** | Actively being worked on |
| **In Review** | PR is open, awaiting review or merge |
| **Done** | Merged and closed |

---

## Workflow

### 1. Issue first

Create an issue using one of the templates before writing any code. Every branch traces back to an issue. Move the issue to **Ready** before starting work.

### 2. Branch off staging

```
git checkout staging
git pull origin staging
git checkout -b <type>/<issueNumber>-<short-slug>
```

Branch name convention: `<type>/<issueNumber>-<short-slug>`

```
feat/12-zsh-docker-alias
fix/15-zshrc-load-order
chore/3-update-brew-deps
```

- `<type>` matches the Conventional Commits type (`feat`, `fix`, `chore`)
- `<issueNumber>` is the plain issue number — every branch traces back to one issue
- `<short-slug>` is a few kebab-case words describing the work

Move the issue to **In Progress** when you open the branch.

### 3. Commit conventions

Follow [Conventional Commits](https://www.conventionalcommits.org/) with the issue number as the scope:

```
<type>(<issueNumber>): <short summary>

feat(12): add zsh alias for docker compose
fix(15): resolve zshrc load order issue
chore(3): update brew dependencies list
```

Types: `feat`, `fix`, `chore`. Use the plain issue number, no `#`. Keep your branch to **one commit** — squash before you push.

### 4. Open a pull request

- Target branch: `staging`
- Add `Closes #<issue-number>` so the issue auto-closes on merge
- Move the issue to **In Review** when the PR is open

### 5. Merging into staging

- Reviewed and merged by a lead Dev — never the same developer who pushed the commit/PR
- Squash and merge only
- Branch is auto-deleted after merge (enabled in repo settings)
- The issue moves to **Closed** automatically on merge via the `Closes #<issue-number>` keyword
