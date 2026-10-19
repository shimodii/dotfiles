#!/bin/sh
# usage: ssh-host.sh PANE_PID FALLBACK_NAME
ps -eo pid=,ppid=,args= | awk -v root="$1" -v fb="$2" '
{ p=$1; par[p]=$2; $1=$2=""; sub(/^ +/,""); a[p]=$0 }
END {
  for (p in a) {
    if (a[p] !~ /^([^ ]*\/)?ssh /) continue
    if ((par[p] in a) && a[par[p]] ~ /^([^ ]*\/)?ssh /) continue
    for (q=p; q && q!=root; q=par[q]);
    if (q!=root) continue
    n=split(a[p], f, " ")
    for (i=2;i<=n;i++) {
      if (f[i] ~ /^-[pilojLRDFbceEImOQSwW]$/) { i++; continue }
      if (f[i] ~ /^-/) continue
      h=f[i]; sub(/.*@/,"",h); print "SSH: " h; found=1; exit
    }
  }
  if (!found) print fb
}'
