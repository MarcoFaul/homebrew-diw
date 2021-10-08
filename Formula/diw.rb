class Diw < Formula
  desc "DIW is a CLI utility helper tool."
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/releases/download/v0.9.2.1/diw-0.9.2.1.tar.gz"
  version "0.9.2.1"
  sha256 "f0a07882f6e4ae7b770a0932fd7bcf6c9fd620b7f9bd86103af82dff5acd3bb6"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      Diw is a CLI utility helper tool made for DIW

      To start diw simply run:

            diw

        Documentation is available at: https://diw-tool.netlify.app/
        Created by Marco Faul
    EOS
  end

    test do
      system "#{bin}/diw"
    end
end
