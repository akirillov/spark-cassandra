#!/bin/sh
#Submitting applications to Spark guide: https://spark.apache.org/docs/latest/submitting-applications.html

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd $DIR

while getopts "a" opt; do
  case $opt in
    a)
      echo "=> rebuilding JAR"
      sbt clean assembly
      ;;
  esac
done

spark-submit \
  --class io.clusterthoughts.SparkExample \
  --master spark://192.168.5.101:7077 \
  --deploy-mode client \
  --supervise \
  ./target/scala-2.10/spark-cassandra.jar
#JAR args follow here
