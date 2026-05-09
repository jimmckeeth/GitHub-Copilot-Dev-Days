# Copilot Instructions for GitHub Copilot Dev Days

This repository is a **non-code community event kit** designed to help organizers plan, promote, and execute GitHub Copilot Dev Days events. It contains marketing materials, presentation content, organization guides, and educational resources—no application code.

## 📂 Repository Structure

### Core Directories

- **`/content`** — Technical presentation slides (`.pptx` files) and workshop index. Includes product-specific decks (VS Code, Visual Studio, Xcode, CLI, Cloud Agent, SDK, JetBrains/Eclipse, Agentic Workflows) and links to hands-on lab content hosted at **copilot-dev-days.github.io**.
  - Update: When a new product release or workshop becomes available, add it to the workshop table in `content/README.md`.

- **`/marketing`** — Social media templates, registration page drafts, and branding guidelines.
  - Files: PowerPoint templates (for Instagram, LinkedIn, X, Facebook), `draft-registration-page.md`, branding specs.
  - Convention: All event names must follow: **"GitHub Copilot Dev Days [City Name]"**
  - Series hashtag: **#GitHubCopilotDevDays**

- **`/organization`** — Event planning guides and checklists.
  - Files: `README.md` (organizer guide), event checklist covering initial planning, venue logistics, speakers/facilitators, marketing, communications, event day, and post-event.
  - This is the **"Source of Truth"** for event logistics.

- **`/assets`** — Visual assets (logos, banners, example event covers) referenced in READMEs and marketing materials.

### Key Documentation Files

- **`README.md`** — Primary entry point. Links to all resource categories and explains the two event formats.
- **`CONTRIBUTING.md`** — Contribution workflow; explains when to use **Discussions** vs **Issues**.
- **`GEMINI.md`** — Instructions for Gemini AI; parallel to this file but for a different AI model.

## 🤝 Contribution Workflow

### When to Use GitHub Discussions

Use Discussions for:
- Questions about event content, marketing materials, or organizing guidance
- Sharing ideas, feedback, or lessons learned
- Starting conversations about potential improvements
- General collaboration and brainstorming

### When to Use GitHub Issues

Use Issues for:
- Bug reports (e.g., broken links, typos, formatting issues)
- Specific change requests with clear scope

### When to Create a Pull Request

- For substantive content updates that align with the event kit's goals
- After opening a Discussion or Issue to get feedback
- Ensure changes maintain consistency with existing patterns

## 📝 Content Update Guidelines

### Updating Workshop Tables

When adding or updating workshop content:
1. Ensure the workshop exists on **copilot-dev-days.github.io**
2. Add a row to the appropriate table in `content/README.md`
3. Include: name (with link), type, estimated time, description, level, and "Train the Trainer" link (if available)
4. Maintain table formatting and alphabetical/logical grouping

### Updating Marketing Materials

When customizing social media templates:
1. Use the provided PowerPoint templates in `/marketing/templates/`
2. Include the standardized event name: **"GitHub Copilot Dev Days [City Name]"**
3. Always include the series hashtag: **#GitHubCopilotDevDays**
4. Save finalized assets in JPG or PNG format

When creating a registration page:
1. Use `marketing/draft-registration-page.md` as a template
2. Include: event description, agenda, date, time, location, banner, and standardized event name
3. Recommended platform: **Luma** (free, ensures your event appears in the Luma calendar)

### Updating Organization Guides

When updating event planning or logistics:
1. Edit `organization/README.md` (the Source of Truth for organizers)
2. Update the checklist with any new best practices or resources
3. Ensure consistency with content prerequisites and time allocations
4. Include accessibility and logistics considerations

## 🔗 Cross-References and Links

- **Always use relative paths** when linking to files within the kit (e.g., `[Content Guide](/content)`)
- **Link to external resources** for hands-on labs:
  - Attendees: **copilot-dev-days.github.io** (main workshop hub)
  - Organizers: Internal resources are in `/content/README.md`
- **Do not hardcode** external URLs in templates; reference the Luma calendar or event registration page instead

## 📋 Key Conventions

### Event Naming
- Standard format: **"GitHub Copilot Dev Days [City Name]"**
- Use consistently across registration pages, social media, and promotional materials

### Event Format
Two supported formats:
1. **Sessions-only**: Multiple technical sessions, no hands-on component
2. **Sessions + Workshop** (recommended): 2 sessions (~30–45 min each) + 1 workshop (~60 min+)

### Target Audience & Levels
- **Beginner**: New to GitHub Copilot or specific products
- **Intermediate**: Hands-on labs; requires some development experience
- Events are open to all levels; clearly define topics in registration materials

### Time Allocations
- Overview session: 30–60 minutes
- Product-specific sessions: ~30 minutes each
- Hands-on workshops: minimum 60 minutes
- Include 15-minute buffer at event start for setup

### Venue & Infrastructure (for Sessions + Workshop format)
- Minimum capacity: 30 participants
- Required: Tables, chairs, stable Wi-Fi, projector/display, microphones (for larger spaces)
- Computer lab access OR participant laptops + power outlets + stable Wi-Fi

## 🛠️ Maintenance

### Content Freshness
- Review workshop links monthly; update if external site changes
- When GitHub Copilot features update, check if product-specific decks need refreshing
- Solicit feedback from organizers in Discussions before making breaking changes

### Link Checking
- Periodically verify that:
  - All links to copilot-dev-days.github.io are valid
  - All internal relative paths resolve correctly
  - External references (Luma, documentation) haven't moved

### Documentation Consistency
- Keep README files in sync:
  - `content/README.md` (workshop index) ↔ `organization/README.md` (time allocations)
  - `marketing/README.md` (event naming conventions) ↔ `draft-registration-page.md` (examples)
  - `GEMINI.md` (parallel instructions) should reflect major structural changes

## 🔄 Workflow Examples

### Adding a New Workshop

1. Verify the workshop is live at **copilot-dev-days.github.io**
2. Open a Discussion to propose the addition
3. Create a PR adding a row to the appropriate table in `content/README.md`
4. Ensure time allocations and levels are accurate
5. Merge and verify links work

### Improving Organization Guidance

1. Open a Discussion sharing lessons learned or new best practices
2. Get feedback from the community
3. Update `organization/README.md` with the new guidance
4. Verify all checklists and time allocations remain consistent

### Fixing a Bug (Broken Link, Typo)

1. Open an Issue describing the problem
2. Create a PR with the fix
3. Link the PR to the Issue
4. Merge directly (no Discussion required for minor fixes)

## 🎯 Non-Goals

- **No code to maintain**: This is not a software project. Do not add CI/CD, build scripts, or automated tooling unless specifically required for event delivery.
- **No exhaustive file listings**: Use `view` on directories to discover structure; the README files provide high-level guidance.
- **No generic development practices**: Focus on this repository's specific conventions and structure.

## 📞 Questions?

Head to [Discussions](https://github.com/jimmckeeth/GitHub-Copilot-Dev-Days/discussions) to ask questions, share feedback, or start conversations about improvements.
