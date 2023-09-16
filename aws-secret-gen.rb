class AwsSecretGen < Formula
  desc "Tool to Get secrets FROM AWS Secrets Manager and write them to a file"
  homepage "https://github.com/YangTaeyoung/aws-secret-gen"
  url "https://github.com/YangTaeyoung/aws-secret-gen/archive/v1.0.0.tar.gz"
  sha256 "8688a3b9c69a92e1ce3828d62fb6f6d35a9a5fb6b112086e285620522776e81c"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/aws-secret-gen", "--help"
  end
end
