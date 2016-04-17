{ stdenv, fetchurl }:

stdenv.mkDerivation {
  name = "firehol";
  src = fetchurl {
    url = "https://firehol.org/download/firehol/latest/firehol-3.0.1.tar.gz";
    sha512 = "8c1bdb2a8b1bf551036d0ee58e7538a2e6513427db353af7e4415ed91cab95fe363e348d5ff32a82767b0fa4db69c469d228a05fa70fdfb8a9b81a2e6b78bae4";
  };

  doCheck = false;

  meta = {
    description = "Firehol is a firewall";
    longDescription = ''
    FireHOL is a language (and a program to run it) which builds
    secure, stateful firewalls from easy to understand, human-readable
    configurations. The configurations stay readable even for very
    complex setups.
    '';
    homepage = http://firehol.org/;
    license = stdenv.lib.licenses.gpl2Plus;
    maintainers = [];
    platforms = stdenv.lib.platforms.all;
  };
}
