class Diw < Formula
  desc "Diw is a CLI utility"
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/releases/download/v0.5.0.0/diw-0.5.0.0.tar.gz"
  version "0.5.0.0"
  sha256 "e804728e4758f3538fa7f23d0efbce00eb25c700c92449a1648cc0b8b125c462"

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
