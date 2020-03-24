#! /usr/bin/env bash
file_path='/root/phpjoern/testCode/'$1'.php';
echo "File Name: ${file_path}";
/root/phpjoern/php2ast ${file_path};
mkdir $1;
mv nodes.csv rels.csv $1;
cp ${file_path} $1;
mv $1 '/root/joern/';
echo $1'/nodes.csv' $1'/rels.csv';
/root/joern/phpast2cpg '/root/joern/'$1'/nodes.csv' '/root/joern/'$1'/rels.csv';
cp -r '/root/joern/'$1 '/tmp/';
mv 'cpg_edges.csv' '/tmp/'$1;
