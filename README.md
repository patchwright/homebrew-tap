# patchwright/homebrew-tap

Homebrew tap for [patchwright](https://github.com/patchwright) tools.

## mcpdrain

Deadlock-proof stdio guardian for MCP servers.

```bash
brew install patchwright/tap/mcpdrain
```

Recent Homebrew versions gate third-party taps. If you see
`Refusing to load formula … from untrusted tap`, trust it once:

```bash
brew tap patchwright/tap
brew trust patchwright/tap
brew install mcpdrain
```

Verified: `brew install` + `brew test` + `brew audit --strict` all pass on
Linux and the formula ships per-arch macOS/Linux binaries with pinned SHA256.

See [patchwright/mcpdrain](https://github.com/patchwright/mcpdrain).
