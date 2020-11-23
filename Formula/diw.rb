class Diw < Formula
  desc "Diw is a CLI utility"
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/releases/download/v0.7.0.0/diw-0.7.0.0.tar.gz"
  version "0.7.0.0"
  sha256 "281a4c411cec4025129ee3fe1a2d02f3f506e1d6a90736d20edc2060de2e2978"

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
