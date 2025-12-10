# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-0.3.0-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-0.3.0-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-0.3.0-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/0.3.0/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "0.3.0"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v0.3.0/ygrep-0.3.0-darwin-arm64.tar.gz"
      sha256 "e411bdaaa1c6ef20ee80502e7dc4d8d0230271fdc0a90e6010c38f0b2fbb116b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v0.3.0/ygrep-0.3.0-linux-x86_64.tar.gz"
      sha256 "a4672756f0437259ba547ca94596a98154dab3616028d47daeb2cbed8a273f47"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v0.3.0/ygrep-0.3.0-linux-aarch64.tar.gz"
      sha256 "459690077755aab2b4da86273d51099b641156d7a1b38c8c73e1c5fee335ca65"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
