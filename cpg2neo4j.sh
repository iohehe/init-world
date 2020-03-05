#! /usr/bin/env bash
#patch in the batch_importer_21
java -classpath "../lib/*" -Dfile.encoding=UTF-8 org.neo4j.batchimport.Importer graph.db nodes.csv rels.csv,cpg_edges.csv

rm -rf /root/graph.db
mv graph.db /root
echo "[+] copy right"
sh restart_neo4j.sh
