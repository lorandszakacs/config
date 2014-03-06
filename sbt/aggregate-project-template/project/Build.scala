import sbt._
import Keys._

object SubProjects{
  object Names{
    val SubprojectOne = "subproject-one"
    val SubprojectTwo = "subproject-two"
    val SubprojectWithMain = "subproject-with-main"
  }
  
}

object Common {
  lazy val organization = "lorandszakacs.me"

  lazy val scalaVersion = "2.10.3"

  lazy val scalacOptions = Seq("-deprecation")

  lazy val javaOptions = Seq("-Xmx1G")
}

object Testing { 

  def libraryDependencies = Seq(
    "org.scalatest" % "scalatest_2.10" % "2.1.0" % "test",
    "org.scalacheck" %% "scalacheck" % "1.11.3" % "test",
    "org.specs2" %% "specs2" % "2.3.8" % "test"
  )

  //required for use with the specs2 library
  def resolvers =
      Seq("snapshots", "releases").map(Resolver.sonatypeRepo)

  //required for use with the specs2 library.
  def scalacOptions = Seq("-Yrangepos")

  def javaOptions = Seq("-Xmx2G")
}