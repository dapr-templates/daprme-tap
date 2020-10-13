class DaprMe < Formula
    desc "New app wizard for creation of a new Dapr project."
    homepage "https://dapr.io"
    version '0.5.1'
    url "https://github.com/dapr-templates/daprme/archive/v0.5.1.tar.gz"
    sha256 "6afb2fb15541ecaed71243851c3ed4419db1135bed68fb47705da929a27c1f5b"
  
    depends_on "go" => :build
  
    bottle do
      root_url "https://github.com/dapr-templates/daprme-tap/releases/download/v0.5.1"
      cellar :any_skip_relocation
      sha256 "6db2f36609f71c21e788c9001728c048240addd598e68b341e311ebf795335c6" => :catalina
    end
  
    def install
      system "go", "build", "-ldflags", "-X main.version=#{version} -X main.apiVersion=1.0", "-o", "./cli"
      bin.install "cli" => "dapr"
    end
  
    test do
      system "#{bin}/dapr", "--version"
    end
end