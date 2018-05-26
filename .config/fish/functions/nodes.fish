function nodes
  curl -s http://optica.d.musta.ch/\?role\=^$argv\$ | jq '.nodes[].hostname' | sed s/'"'//g
end
