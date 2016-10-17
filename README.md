sasconfigger
============

Generate config files for SAS projects

Description
-----------

Reads in SAS program files and creates copies of them with macro variables for "configurable" values (resource file paths, passwords, etc.). Two additional files will be created: a configuration file that sets these values, and a "project master" program to run the project.

Requirements
------------

-   R (&gt;= 3.0.0)
-   shiny (&gt;= 0.13.1)
-   stringi (&gt;= 1.0.1)
