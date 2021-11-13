# vim-zap

This is a vim plugin for my boring task management format.

## The “spec”

- Projects or are lines that **ends with a colon**.
- Tasks **begins** with a pair or brackets followed by a space. They are filled
  with a character that can signigy multiple steps:
  - The TODO state is empty: `[ ]`
  - The DONE state is filled with an ‘X’: `[X]`
  - The DOING state is filled with an ‘/’: `[/]`
  - The PRIORITY state is filled with a ‘!’: `[!]`
  - The SUBMITTED state is filled with an ‘>’: `[>]`
- There is **no** tabulation to signify any depth level.
- Comments starts with `//` until the end of the line. There’s no multiline
  comments. Comments are basically notes. You can add an additional ‘/’ to
  comments to align them vertically to tasks.
- The file extension is `.zap`

Here is an example:

```
Example project:
[ ] Something I should really do // Check mail from Bob for more informations
[/] I’m doing this :^)
[X] I did this!
[!] I really should do this
/// I really should do this because blah blah...
[>] Waiting for approval...
/// Sent to Jon on 2021-11-11
/// Expecting a reply before 2021-11-14

Another project:
<snip>
```

Boring and easy.
