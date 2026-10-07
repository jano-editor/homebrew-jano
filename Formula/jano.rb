class Jano < Formula
  desc "Terminal editor with plugin-based syntax highlighting and formatting"
  homepage "https://janoeditor.dev"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jano-editor/jano/releases/download/editor-v#{version}/jano-darwin-arm64"
      sha256 "b6315e24adc1aa07b2f20e6f21d9304092a11a28105faee462324d14aac6d8c0"
    end
    on_intel do
      url "https://github.com/jano-editor/jano/releases/download/editor-v#{version}/jano-darwin-x64"
      sha256 "bb5ee82644d48ffa58081107f9628bc9caea6134b8cc1530e8ede55dfa354122"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jano-editor/jano/releases/download/editor-v#{version}/jano-linux-x64"
      sha256 "9bf6c52248ac561d2018099d6e98443c96df011f5fe2ee9e9bce0a68885d6c9b"
    end
    on_arm do
      url "https://github.com/jano-editor/jano/releases/download/editor-v#{version}/jano-linux-arm64"
      sha256 "af0c847d512f89795367d09b131ebcd3123fa8f24ca368c06e2a6a4341f38efa"
    end
  end

  def install
    binary = stable.url.split("/").last
    bin.install binary => "jano"
  end

  test do
    assert_match "jano v#{version}", shell_output("#{bin}/jano --version")
  end
end
