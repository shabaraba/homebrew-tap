class ShabaCli < Formula
  desc "Personal CLI toolkit by shabaraba"
  homepage "https://github.com/shabaraba/shaba-cli"
  version "0.1.6"
  license "MIT"

  on_macos do
    url "https://github.com/shabaraba/shaba-cli/releases/download/v0.1.6/shaba-cli-darwin-arm64"
    sha256 "bc4176891443f986a11873419335da1260d520bc32d3e3c2ccc212601ac1b15b"

    def install
      bin.install "shaba-cli-darwin-arm64" => "shaba-cli"
    end
  end

  on_linux do
    url "https://github.com/shabaraba/shaba-cli/releases/download/v0.1.6/shaba-cli-linux-x64"
    sha256 "443a2f5a3c49adf4a70c4d3da7c42c83f2f2a3daee820395e123223f2edcbc85"

    def install
      bin.install "shaba-cli-linux-x64" => "shaba-cli"
    end
  end

  test do
    assert_match "Personal CLI toolkit", shell_output("#{bin}/shaba-cli --help")
  end
end
