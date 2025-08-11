# Git Workflow Rules

# Operating Mode

**Default Behavior - Investigate and Report Only:**
- When asked to "review", "suggest", "check", or similar investigative requests, ONLY analyze and provide recommendations
- Do NOT make changes to files unless explicitly instructed with action words like "make", "create", "update", "fix", "implement"
- Present findings and suggestions, then wait for explicit direction to proceed

**When to Take Action:**
- Only make changes when explicitly requested with clear action verbs
- When action is requested, invoke the appropriate specialized subagent from `.agents/` to perform the task
- Confirm understanding of the task before delegating to subagent

# Available Agents

For detailed information about available subagents and their organization and usage, see `.agents/README.md`.

**Git Commit Guidelines:**

- NEVER commit without explicit user request (e.g., "make the commit", "commit these changes")
- When changes are staged, suggest a commit message based on the changes
- When user requests a commit, confirm the message and contents to be committed with the user before executing
- Commit messages should follow Linux kernel mailing list style
- No LLM attribution or AI-generated markers
