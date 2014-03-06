## Sample `sbt` project hierarchy
This is a template for a a "bare" sbt project that aggregates several subprojects.
The main pattern is that of having your application specific code into a subproject, and then stand-alone dependencies in seperate subprojects.  

The folder structure is:
* `root`
  * `.gitignore`: containing all sbt specific things to ignore
  * `build.sbt`: the "bare" project definition
  * `project/`    
    * `plugins.sbt`: loads two plugins: `sbteclipse` and `sbt-native-packager`
    * `Build.scala`: contains all common abstractions between the various sbt files
  * `workspace/`: contains a folder for each subproject defined in the top `build.sbt`. Each with its own `build.sbt` where subproject specific dependencies should go. These files also contain dependencies to the scala testing libraries.
    * `.gitignore`: containing eclipse specific things to ignore
    * `subproject-one`: folder for first subproject
    * `subproject-two`
    * `subproject-with-main`: an example of how only one project contains the actual `main` method of your program.

If you start sbt in the `root` folder and run the `eclipse` task, then sbt will generate [ScalaIDE](http://scala-ide.org/) project configuration files in each of the subprojects' folder. By setting your eclipse workspace in the `workspace` folder you have a convenient way to import all projects directly into eclipse, ready to run!  

You can even download this template, compile, run, and test the silly program with `sbt`'s predefined tasks `compile`, and `test`.  

The structure of subfolders is the following:
* `subproject-root/`
  * `src/`
    * `main/`
      * `scala/`
      * `java/`
      * `resources/`
    * `test/`
      * `scala/`
      * `java/`
      * `resources/`

This has the structure of the default `sbt` projects. It can be changed globally or on a per project need basis.  

All subprojects are defined to have the same source folder structure as `subproject-with-main`, but this won't be reflected until you add the structure yourself or run the `eclipse` task.
