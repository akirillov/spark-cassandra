name := """spark-examples"""

version := "1.0"

scalaVersion := "2.10.4"

scalacOptions += "-target:jvm-1.7"

libraryDependencies ++= Seq(
  "org.apache.spark" % "spark-core_2.10" % "1.2.0" % "provided",
  "com.datastax.spark" %% "spark-cassandra-connector" % "1.2.0-alpha1"
)

assemblyJarName in assembly := "spark-cassandra.jar"
