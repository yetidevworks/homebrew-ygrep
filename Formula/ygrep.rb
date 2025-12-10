# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-0.2.4-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-0.2.4-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-0.2.4-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/0.2.4/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "0.2.4"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v0.2.4/ygrep-0.2.4-darwin-arm64.tar.gz"
      sha256 "929651f7b0e7610af561447d9f74fecb66319075a006feedc6012c067828aa8b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v0.2.4/ygrep-0.2.4-linux-x86_64.tar.gz"
      sha256 "1655dfbe02e58106735187a556527b594094022e9d7409584ed67340ec42dfd4"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v0.2.4/ygrep-0.2.4-linux-aarch64.tar.gz"
      sha256 "fe6634275f46868bd773911844eb31b38666e92bc7e62288576884563900196d"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
