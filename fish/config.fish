if status is-interactive
	alias ll="exa -lla --icons --sort=Extension"
	alias l="exa -lla --icons --sort=Extension"
	alias tamusql="psql -h csce-315-db.engr.tamu.edu -U csce315906_15user csce315906_15db"
	alias javafx="java --module-path /Users/elitracy/Documents/Coding/Libraries/javafx-sdk-17.0.0.1/lib --add-modules javafx.controls,javafx.fxml"
	alias javacfx="javac --module-path $PATH_TO_FX --add-modules javafx.controls,javafx.fxml"
    alias vimrc="v ~/.config/nvim/.vimrc"
    alias c="clear"
    alias monkey="open https://monkeytype.com"
    alias canvas="open https://canvas.tamu.edu"
    alias v="nvim"
    alias py="python3"
    alias python="python3"
    alias p="ping 1.1.1.1"
    alias g="git"
    alias rsync="rsync -av"

    # Homebrew path
    export PATH="/opt/homebrew/bin:$PATH"

    # Android Simulator path settings
    export ANDROID_HOME=$HOME/Library/Android/sdk
    export PATH="~/Library/Android/sdk:$PATH"
    export PATH="$ANDROID_HOME/platform-tools:$PATH"
    set -gx TERM xterm-256color
    set -g theme_color_scheme dark


    export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
    export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
    export LIBRARY_PATH="$LIBRARY_PATH:/opt/homebrew/opt/openssl/lib"
end
rvm default
