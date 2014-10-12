# Core BaseX
alias bx='basex'
alias bxh='touch .basexhome; basex'
alias bxc='basex -c'
alias bxo='basex -i'
alias bxe='basex -R -x'

# BaseXGUI
alias bxg='basexgui'
alias bxgh='touch .basexhome; basexgui'

# BaseX Server
alias bxsv='basexserver -e 0'
alias bxsvs='basexserver -e 0 -S'
alias bxsvp='basexserver -e 0 -p'
alias bxst='basexserver stop'

# BaseX HTTP
alias bxht='basexhttp -e 0 -p 0 -h 1984'
alias bxhts='basexhttp -e 0 -p 0 -h 1984 -S'
alias bxhtp='basexhttp -e 0 -p 0 -h'
alias bxhst='basexhttp stop'

# BaseX Client
function bxcl() {
  ADDR=("${(s/@/)1}")
  if [[ $#ADDR -eq 2 ]]; then
    ADDR1=("${(s/:/)ADDR[1]}")
    ADDR2=("${(s/:/)ADDR[2]}")
  else
    ADDR1=
    ADDR2=("${(s/:/)ADDR[1]}")
  fi

  USER=$ADDR1[1]
  PW=$ADDR1[2]
  HOST=$ADDR2[1]
  if [ -z "$HOST" ]; then
    PORT="localhost"
  fi
  PORT=$ADDR2[2]
  if [ -z "$PORT" ]; then
    PORT=1984
  fi
  if [ -z "$USER" ]; then
    basexclient -n $HOST -p $PORT
  else
    if [ -z "$PW" ]; then
      basexclient -n $HOST -p $PORT -U $USER
    else
      basexclient -n $HOST -p $PORT -U $USER -P $PW
    fi
  fi
}
