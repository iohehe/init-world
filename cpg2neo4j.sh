#! /usr/bin/env bash
java -classpath ./lib/* -Dfile.encoding=UTF-8 org.neo4j.batchimport.Importer graph.db nodes.csv rels.csv,cpg_edges.csv

