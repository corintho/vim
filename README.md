# Dependencies
We ty to keep external dependencies to a minimum, always looking for self-contained plugins. But, we cannot always achieve complete independency, so here is a list of external resources upon which we depend.

## NPM
In order to properly have tern inspecting and completing javascript code, we need to have node and npm installed properly. Please refer to http://nodejs.org/ for instructions to your platform.

## Font
In order for airline to display some neat graphics, we need to use a custom font with those graphics enabled. We are currently using the **Hack** font, and as such, we have to download a modified font from: https://github.com/powerline/fonts/tree/master/Hack

After that, it should be installed properly according to your own operating system requirements.

# Instructions
Clone the repo into your home directory.
* For a \*nix OS, it should be in `~/.vimrc`
* From windows, it should de `~/vimfiles.` (On Windows, ~ will generally be C:\\Users\\&lt;UserName&gt;)

After cloning, open up vim and run `:PlugInstall`. This will install most of the necessary stuff right away. The only pending will be npm dependencies.

The final step is to enable tern for javascript code completion.
* Go to your vim files folder 
* cd into `plugged\tern_for_vim`
* run `npm install`
