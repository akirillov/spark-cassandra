package io.clusterthoughts

import org.apache.spark.{SparkContext, SparkConf}
import com.typesafe.config.ConfigFactory
import com.datastax.spark.connector._

object SparkExample extends Serializable {
  private lazy val config = ConfigFactory.load()
  private lazy val conf = new SparkConf(true)
    .set("spark.cassandra.connection.host", config.getString("cassandra.host"))


  def main(args: Array[String]): Unit = {
    val sc = new SparkContext(s"${config.getString("spark.master")}", "test", conf)

    val rdd = sc.cassandraTable("test", "kv")
    println(rdd.count)
    println(rdd.first)
//    println(rdd.map(_.getInt("value")).sum)

    val collection = sc.parallelize(Seq(("key3", 3), ("key4", 4)))
    collection.saveToCassandra("test", "res", SomeColumns("key", "value"))
  }
}
