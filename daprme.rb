class Daprme < Formula
  desc "New app wizard for creation of a new Dapr project"
  homepage "https://dapr.io"
  url "https://github.com/dapr-templates/daprme/releases/download/v0.6.2/daprme"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855 "
  license "MIT"

  def install
    bin.install "daprme" => "daprme"
  end

  test do
    system "#{bin}/daprme", "--version"
  end
end