{ stdenv, fetchurl }:

stdenv.mkDerivation {
  name = "firehol";
  src = fetchurl {
    url = "https://firehol.org/download/firehol/latest/firehol-3.0.1.tar.gz";
    sha256 = "7df99bb42d6d85c1cd83a98f79a7489089e6bfd467f2f565bddd7ea568916e1d";
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
