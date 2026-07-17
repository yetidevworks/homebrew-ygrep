# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.3.1-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.3.1-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.3.1-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.3.1/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.3.1"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.3.1/ygrep-3.3.1-darwin-arm64.tar.gz"
      sha256 "326d5a45d2c4135079acd2f9e0c6f4cb51af2e4ac37daf6f6a0b0ebb70ac60e2"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.3.1/ygrep-3.3.1-darwin-x86_64.tar.gz"
      sha256 "9ca1851bb8989b228b56b3947f785c18a60212830b49e135920a01d1217171ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.3.1/ygrep-3.3.1-linux-x86_64.tar.gz"
      sha256 "d896bfecb0f97a11b26f2fbda6abbc583da5920416efda32cdb8a95443c68351"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.3.1/ygrep-3.3.1-linux-aarch64.tar.gz"
      sha256 "0e98e6b1f3ef8fcca900a86f7610e5a116ebc2264e8802fbacb5cca7f923292c"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
