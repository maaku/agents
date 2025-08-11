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

**Git Commit Workflow:**

When user says "commit":
1. Check currently staged changes using `git diff --staged`
2. Generate a commit message following Linux kernel mailing list style:
   - First line: subsystem: Brief description (50 chars or less)
   - Blank line
   - Detailed explanation wrapped at 72 characters
   - Focus on what and why, not how
3. Display the proposed commit message to the user
4. Ask for feedback/approval
5. Wait for explicit instruction to proceed (e.g., "do it", "yes", "proceed")
6. Only then execute the commit with the approved message

**Important:**
- NEVER commit without explicit user approval after showing the message
- No LLM attribution or AI-generated markers in commit messages
- Always use the exact approved message, no modifications
