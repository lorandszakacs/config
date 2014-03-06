import sbt._
import Keys._

name := SubProjects.Names.SubprojectWithMain

organization := Common.organization

version := "0.2"

scalaVersion := Common.scalaVersion

scalacOptions ++= Common.scalacOptions

javaOptions ++= Common.javaOptions

javaOptions in Test ++= Testing.javaOptions

mainClass := Some("Main")

//required to create the default `sbt` folder structure
EclipseKeys.createSrc := EclipseCreateSrc.Default + EclipseCreateSrc.Resource

//===================================================
//         dependencies for testing libraries
//===================================================
resolvers ++= Testing.resolvers

libraryDependencies ++= Testing.libraryDependencies

scalacOptions in Test ++= Testing.scalacOptions

//===================================================
//         dependencies for dev libraries
//===================================================