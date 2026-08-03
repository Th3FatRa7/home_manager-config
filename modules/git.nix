{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "th3fatra7";
        email = "142910646+Th3FatRa7@users.noreply.github.com";
      };
      init.defaultBranch = "main";
      alias = {
        st = "status";
	cm = "commit -m";
	l = "log --oneline";
	ll = "log";
      };
    };
  };
}
