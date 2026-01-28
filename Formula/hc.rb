class Hc < Formula
  desc "Secure CLI password manager with dual-key encryption and TOTP support"
  homepage "https://github.com/shabaraba/holecard"
  version "0.1.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shabaraba/holecard/releases/download/v0.1.1/hc-aarch64-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shabaraba/holecard/releases/download/v0.1.1/hc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "hc"
  end

  test do
    system "#{bin}/hc", "--version"
  end
end
