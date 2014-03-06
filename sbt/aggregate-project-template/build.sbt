import sbt._
import Process._
import Keys._

def subProject(sbpr: String) = file("workspace/" + sbpr)

//order of aggregation doesn't matter
lazy val aggregatingProject = project.in(file(".")).aggregate(subProj1, subProjWithMain, subProj2)

lazy val subProj1 = project.in(subProject(SubProjects.Names.SubprojectOne))

lazy val subProj2 = project.in(subProject(SubProjects.Names.SubprojectTwo))

lazy val subProjWithMain = project.in(subProject(SubProjects.Names.SubprojectWithMain)).dependsOn(subProj1, subProj2)

name := "top level project! It doesn't contain any sources, it just aggregates everything"

organization := Common.organization

version := "0.2"

scalaVersion := Common.scalaVersion

scalacOptions ++= Common.scalacOptions

javaOptions ++= Common.javaOptions

javaOptions in Test ++= Testing.javaOptions

//the main class of this project is actually the main class of the sgDownloader subproject
mainClass in Compile := (mainClass in subProjWithMain in Compile).value

//we have to set the classpath to be the one of the project containing the main class
fullClasspath in Runtime := (fullClasspath in subProjWithMain in Runtime).value

//this build definition simply aggregates the subprojects that contain code
sourceDirectories := Seq()
