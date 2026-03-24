## General

- Always use Sanity MCP for querying, creating, or modifying Sanity CMS content, GROQ queries, and schema work. Never write Sanity code without consulting it first.
- Always use Context7 MCP before writing code involving any third-party library or framework — for documentation, API references, and setup steps.
- Always use Motion MCP for any animation work — documentation, spring/easing configurations, and Motion and Motion+ code examples.

## TypeScript

Tris is new to TypeScript. When writing TypeScript code:

- Keep types simple and obvious. Avoid clever generics or complex utility types unless truly necessary.
- When you introduce a TypeScript-specific pattern (type alias, interface, generic, etc.), add a brief inline comment explaining what it does and why — not what the code says, but what it means.
- Prefer explicit types over inferred ones where it aids readability.
- Never write TypeScript that Tris couldn't roughly follow with a comment to guide him.
