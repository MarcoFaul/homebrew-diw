class Diw < Formula
  desc "DIW is a CLI utility helper tool."
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/releases/download/v0.9.3.2/diw-0.9.3.2.tar.gz"
  version "0.9.3.2"
  sha256 "a78d7e14839b0e5f33fa017a384fd2dbd4f2da64c51de0df6dc512e1f3dc64a0"
  license ""

  def post_install
    if !(File.exist?((etc/"diw-override.config.yaml"))) then
      (etc/"diw-override.config.yaml").write override_conf
    end
  end

  def override_conf; <<~EOS
    docker:
      container:
  EOS
  end


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
