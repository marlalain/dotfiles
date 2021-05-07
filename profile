#!/bin/zsh

export EDITOR="vim"
export TERMINAL="termite"
export BROWSER="qutebrowser"

# tmux defaults
tmux new-session -t main -d

export SURPRESA="Quando descodificares esta, vais ter uma surpresa, cabrão. \n"
export SURPRESA=$SURPRESA"Se, por acaso, algum alien encontrar este álbum a flutuar no espaço. \n"
export SURPRESA=$SURPRESA"É porque deu para o torto e eu não escapei aos estragos."
echo $SURPRESA
