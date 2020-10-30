class Diw < Formula
  desc "Diw is a CLI utility"
  homepage "https://dasistweb.de"
  version "v0.0.1"
  url "https://github.com/marcofaul/diw/archive/v0.0.1.tar.gz"
  sha256 "42d8dbaf0ec7ea5208ff92fe7ad5bf0d9449e54e2608da145da9e1b116e8afd1"
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
