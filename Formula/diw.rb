class Diw < Formula
  desc "Diw is a CLI utility"
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/releases/download/v0.8.0.0/diw-0.8.0.0.tar.gz"
  version "0.8.0.0"
  sha256 "c0ce5fdef8c093d341eddfb603313eb22bb335fed0c81b121a0189e823fbb86a"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      Diw is a CLI utility made for DIW

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
