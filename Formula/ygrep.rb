# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-4.0.3-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-4.0.3-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-4.0.3-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/4.0.3/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "4.0.3"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.3/ygrep-4.0.3-darwin-arm64.tar.gz"
      sha256 "aa9bda38e0523ecdf0d9a9b43e362a3c81b51d1e41bb7f29bdcdb6bd5c66a586"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.3/ygrep-4.0.3-darwin-x86_64.tar.gz"
      sha256 "07fb17476abda47e32fa7a9e051b1ad8ed837effe3ab3c3676ea814d7e27b051"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.3/ygrep-4.0.3-linux-x86_64.tar.gz"
      sha256 "bec8a799670fba34f7508daa5f2d36a698f823f972e7e8f2f9180172427dd638"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.3/ygrep-4.0.3-linux-aarch64.tar.gz"
      sha256 "ff27acfa47837a0c804b4b1c58700c541f1466b510bf8a0e167e51da7a561333"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
