# Peerless Git-Hooks
A central organizational-wide Git Hooks.

After cloning this repository to your local machine, you'd need to do a one time setup by executing one simple command. What this command will do is to change the default per project git hooksPath on your machine to the path of this repository. Meaning, all git repositories on your machine would look up their hooks commands from this repository.

### 🛠 Setup (run once)
#### For macOS / Linux / WSL / Git Bash
navigate to the root of this directory and execute this command:

```bash ./setup.sh```

Note: This script will not work for you if you use Windows PowerShell or CMD. Use GitBash instead

#### To unset/undo what the script does, do:
```git config --global --unset core.hooksPath```


### 👤 Author

**Abetang Joseph Abetang**

### 👤👤 Contributors

**Sunmonu Oluwole**

