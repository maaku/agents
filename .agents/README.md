# .agents/README.md

This file provides guidance for LLMs to help discover available subagents for use in this repository.

## Repository Overview

This repository contains specialized LLM agent definitions organized into 10 categories. Each agent is defined as a markdown file with YAML frontmatter specifying the agent's name, description, and available tools.

## Repository Structure

```
.agents/
├── 01-core-development/      # Backend, frontend, fullstack, mobile, API development
├── 02-language-specialists/  # Language-specific experts (Python, JS, Go, Rust, etc.)
├── 03-infrastructure/        # DevOps, cloud, Kubernetes, database administration
├── 04-quality-security/      # Testing, security, code review, performance
├── 05-data-ai/               # ML, data science, LLM, data engineering
├── 06-developer-experience/  # Tooling, documentation, refactoring, build systems
├── 07-specialized-domains/   # Fintech, IoT, blockchain, game development
├── 08-business-product/      # Product management, business analysis, sales
├── 09-meta-orchestration/    # Multi-agent coordination, workflow orchestration
└── 10-research-analysis/     # Research, market analysis, competitive intelligence
```

## Agent File Format

Each agent definition follows this structure:
```yaml
---
name: agent-name
description: Brief description of the agent's expertise
tools: List, of, available, tools
---

Agent prompt and behavioral instructions...
```

## Development Commands

### Working with Agent Files
```bash
# Find all agent definitions
find .agents/agents -name "*.md" -not -name "README.md"

# Search for agents with specific tools
grep -l "tools:.*Docker" .agents/agents/**/*.md
```

## Key Architecture Patterns

### Agent Categories
1. **Core Development** - Essential development agents for building applications
2. **Language Specialists** - Deep expertise in specific programming languages
3. **Infrastructure** - DevOps, cloud architecture, and system administration
4. **Quality & Security** - Testing, security auditing, and code quality
5. **Data & AI** - Machine learning, data engineering, and AI systems
6. **Developer Experience** - Tooling, documentation, and workflow optimization
7. **Specialized Domains** - Industry-specific expertise (fintech, IoT, gaming)
8. **Business & Product** - Non-technical roles supporting development
9. **Meta-Orchestration** - Coordination and management of multi-agent systems
10. **Research & Analysis** - Information gathering and competitive analysis

### Agent Naming Conventions
- Use lowercase with hyphens: `backend-developer`, `python-pro`
- Suffix specialists with `-pro`, `-expert`, or `-specialist`
- Role-based names for functional agents: `-engineer`, `-developer`, `-architect`
- Action-based names for task agents: `-reviewer`, `-optimizer`, `-analyzer`

### Tool Assignment Guidelines
- Core tools: `Read`, `Write`, `MultiEdit`, `Bash`
- Infrastructure agents include: `Docker`, `kubernetes`, `terraform`
- Database agents include: `postgresql`, `redis`, database tools
- Testing agents include: test frameworks and CI/CD tools
- Security agents include: scanning and auditing tools

## Adding New Agents

When creating a new agent:
1. Choose the appropriate category directory
2. Create a markdown file with descriptive kebab-case name
3. Include complete YAML frontmatter with name, description, and tools
4. Write comprehensive behavioral instructions
5. Update the category's README.md if needed

## Testing Agent Definitions

Verify agent files are properly formatted:
```bash
# Check for required frontmatter fields
for file in .agents/agents/**/*.md; do
  if ! grep -q "^name:" "$file"; then echo "Missing name: $file"; fi
  if ! grep -q "^description:" "$file"; then echo "Missing description: $file"; fi
  if ! grep -q "^tools:" "$file"; then echo "Missing tools: $file"; fi
done
```

## Best Practices

1. **Agent Descriptions**: Keep descriptions concise (1-2 sentences) and focus on the agent's primary expertise
2. **Tool Selection**: Only include tools the agent actually needs; avoid tool bloat
3. **Behavioral Instructions**: Be specific about the agent's approach, checklist items, and quality standards
4. **Category Placement**: Place agents in the most specific appropriate category
5. **Documentation**: Update category README files when adding or modifying agents
