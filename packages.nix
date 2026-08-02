{ pkgs, ... }: {
  update = 
    let
      repo = "https://github.com/th3fatra7/home_manager-config";
      branch = "main";
    in
      pkgs.writeShellScriptBin "update" ''
    (git pull ${repo} ${branch} && home-manager switch --flake .) || echo "An error occured. Make sure this is a git directory and the remote repository is correctly set!"
  '';
}
