#! /bin/env bash
# Author: <mvdw at airmail dot cc>
# added rxvt support - skr0tm at protonmail dot com
SCHEME() {
    cat $HOME/.Xresources|grep color[0-9] | \
    tr -d ' '| grep color$1 | head -n1 | cut -d: -f2
}

F=3 B=4
for J in F B; do
    for I in {0..7}; do
        printf -v $J$I %b "\033[${!J}${I}m"
    done
done

D=$'\033[1m'
T=$'\033[0m'
V=$'\033[7m'

cat << EOF

    $F0 ███ 0           $D ███ 8$T
    $F0 ███ $(SCHEME 0)     $D ███ $(SCHEME 8)$T
    $F1 ███ 1           $D ███ 9$T
    $F1 ███ $(SCHEME 1)     $D ███ $(SCHEME 9)$T
    $F2 ███ 2           $D ███ 10$T
    $F2 ███ $(SCHEME 2)     $D ███ $(SCHEME 10)$T
    $F3 ███ 3           $D ███ 11$T
    $F3 ███ $(SCHEME 3)     $D ███ $(SCHEME 11)$T
    $F4 ███ 4           $D ███ 12$T
    $F4 ███ $(SCHEME 4)     $D ███ $(SCHEME 12)$T
    $F5 ███ 5           $D ███ 13$T
    $F5 ███ $(SCHEME 5)     $D ███ $(SCHEME 13)$T
    $F6 ███ 6           $D ███ 14$T
    $F6 ███ $(SCHEME 6)     $D ███ $(SCHEME 14)$T
    $F7 ███ 7           $D ███ 15$T
    $F7 ███ $(SCHEME 7)     $D ███ $(SCHEME 15)$T

EOF


