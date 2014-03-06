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
  * `workspace/`: contains a folder for each subproject defined in the top `build.sbt`. Each with its own `build.sbt` where subproject specific dependencies should go. These files also contain dependencies, as a template, the scala testing libraries.
    * `.gitignore`: containing eclipse specific things to ignore
    * `subproject-one`: folder for first subproject
    * `subproject-two`
    * `subproject-with-main`: an example of how only one project contains the actual `main` method of your program.

If you start sbt in the `root` folder and run `eclipse` then sbt will generate [ScalaIDE](http://scala-ide.org/) project configuration files in each of the subproject folders. By setting your eclipse workspace in the `workspace` folder you have a convenient way to import all projects directly into eclipse, ready to run!

You can even download this template, compile, run, and test the silly program with `sbt` predefined tasks `compile`, and `test`.