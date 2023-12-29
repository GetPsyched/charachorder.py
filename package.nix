{ buildPythonPackage, lib, pythonOlder, pynput, pyserial }:

buildPythonPackage rec {
  pname = "charachorder";
  version = "0.2.2";
  format = "setuptools";

  disabled = pythonOlder "3.8";

  src = ./.;

  nativeBuildInputs = [ pynput pyserial ];

  meta = with lib; {
    description = "A wrapper for CharaChorder's Serial API written in Python";
    downloadPage = "https://pypi.org/project/charachorder/#files";
    homepage = "https://github.com/GetPsyched/charachorder.py";
    license = licenses.mit;
    maintainers = [ maintainers.getpsyched ];
    platforms = platforms.all;
    sourceProvenance = [ sourceTypes.fromSource ];
  };
}
