class Mcpdrain < Formula
  desc "Deadlock-proof stdio guardian for MCP servers"
  homepage "https://github.com/patchwright/mcpdrain"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/patchwright/mcpdrain/releases/download/v0.2.0/mcpdrain-aarch64-apple-darwin.tar.gz"
      sha256 "be45e20ed2dbb131d8f06fcb34e95de654a4d24065849a48150a54ff3ecbcb78"
    end
    on_intel do
      url "https://github.com/patchwright/mcpdrain/releases/download/v0.2.0/mcpdrain-x86_64-apple-darwin.tar.gz"
      sha256 "b1d13a67a664b0346ea0c91fd6b78859d493f9484aba71eb4b9217e1a7c0fe55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/patchwright/mcpdrain/releases/download/v0.2.0/mcpdrain-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e79bd57c34c6274456c84b0f0ddc8bf68e6543103a8b8f1205a111de477095af"
    end
    on_intel do
      url "https://github.com/patchwright/mcpdrain/releases/download/v0.2.0/mcpdrain-x86_64-unknown-linux-musl.tar.gz"
      sha256 "29c4046f7dba03eee828a6d14ace7389a94dfd4c125647a1830223d234f5f500"
    end
  end

  def install
    # The release tarball contains a single binary named mcpdrain-<target>.
    bin.install Dir["mcpdrain-*"].first => "mcpdrain"
  end

  test do
    assert_match "mcpdrain #{version}", shell_output("#{bin}/mcpdrain --version")
  end
end
