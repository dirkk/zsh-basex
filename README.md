## BaseX zsh plugin
**Maintainer:** [dirkk](https://github.com/dirkk)

This plugin adds several BaseX (http://www.basex.org) aliases for simplified usage

## Cheetsheet

Alias | Expand
--- | ---
`bx` | `basex`
`bxh` | `basex` with the root directoy as the current directory
`bxc` | `basex -c` execute database command
`bxo` | `basex -i` open initial file or db
`bxe` | `basex -R -x` emulate execution, show query plan
 | 
`bxg` | `basexgui`
`bxgh` | `basexgui` with the root directoy as the current directory
 | 
`bxsv` | `basexserver -e 0`
`bxsvs` | `basexserver -e 0 -S`
`bxsvp` | `basexserver -e 0 -p`
`bxst` | `basexserver stop`
 | 
`bxcl` | `basexclient` with the first command being `[[username[:password]@]host[:port]]`
 | 
`bxht` | `basexhttp -e 0 -p 0 -h 1984`
`bxhts` | `basexhttp -e 0 -p 0 -h 1984 -S`
`bxhtp` | `basexhttp -e 0 -p 0 -h`
`bxhst` | `basexhttp stop`

