class Diw < Formula
  desc "Diw is a CLI utility"
  homepage "https://dasistweb.de"
  url "{{{tarballUrl}}}"
  version "{{version}}"
  sha256 "{{sha256}}"
  head "https://ithub.com:marcofaul/diw.git", :branch => "develop"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      diw ftw
    EOS
  end
end
