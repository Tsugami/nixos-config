{ pkgs, config, ... }:
{
  programs.git = {
    enable = true;
    userName = "Yslan Ramos";
    userEmail = "yslanramos.r@gmail.com";

    aliases = {
        aliases = "config --show-scope --get-regexp alias";
        # Swtich to a branch
        co = "checkout";
        # Switch to a branch, create a branch if it doesn't exist
        go = "checkout -B";
        # Pull remote changes of main branch (or current branch)
        ph = "pull origin HEAD";
        # Commit changes
        cm = "commit -m";
        # Undo the last commit to stage
        rl = "reset --soft HEAD~1";
        # Clean log
        l = " log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative";
        # Push current branch
        psh = "git push -u origin HEAD";
        # List git aliases
        alias = "! git config --get-regexp ^alias\\. | sed -e s/^alias\\.// -e s/\\ /\\ =\\ / | grep -v ^'alias '";
        # Credit an author on the latest commit
        # credit = ""!f() { git commit --amend --author \"$1 <$2>\" -C HEAD; }; f"";
        # View the current working tree status using the short format
        s = "status -s";
        st = "status -s";
        clean-branchs = "git remote prune origin";
      };

    extraConfig = {
      init.defaultBranch = "main";
      core.editor = "vim";

      color = {
        status = {
          added = "yellow";
          changed = "green";
          untracked = "cyan";
          branch = "magenta";
        };

        diff = {
          meta = "yellow bold";
          frag = "magenta bold";
          old = "red bold";
          new = "green bold";
        };
      };
    };
  };

}
