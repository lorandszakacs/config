import sbt._
import Keys._

name := SubProjects.Names.SubprojectOne

organization := Common.organization

version := "0.1"

scalaVersion := Common.scalaVersion

scalacOptions ++= Common.scalacOptions

javaOptions ++= Common.javaOptions

javaOptions in Test ++= Testing.javaOptions

sourceDirectories := Common.sourceDirectories(name.value)

mainClass := None

//===================================================
//         dependencies for testing libraries
//===================================================
resolvers ++= Testing.resolvers

libraryDependencies ++= Testing.libraryDependencies

scalacOptions in Test ++= Testing.scalacOptions

//===================================================
//         dependencies for dev libraries
//===================================================
