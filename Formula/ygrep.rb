# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.0.4-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.0.4-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.0.4-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.0.4/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.0.4"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.4/ygrep-3.0.4-darwin-arm64.tar.gz"
      sha256 "237a0424cdf1b124b8919feb49b286b120c2317cdd88c34739c3cd57ca92a44d"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.4/ygrep-3.0.4-darwin-x86_64.tar.gz"
      sha256 "d49f90d23f446602532d17e3b96a0f92e58bf1b8f32781c3e82ab62dfab3f743"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.4/ygrep-3.0.4-linux-x86_64.tar.gz"
      sha256 "5f03e87197f00356810910cb4b47c1777e0f488b8810afb1244b5debd7d5382a"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.4/ygrep-3.0.4-linux-aarch64.tar.gz"
      sha256 "9335bb8b4f8aed004273e436e1018b9f0ef21236d48711a30812d53e76e41822"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
