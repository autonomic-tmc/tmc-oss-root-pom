# Autonomic TMC OSS Root POM

## Overview

This module provides the "parent pom" for TMC OSS projects.

Using the `tmc-oss-parent` module as your "parent pom" will ensure the proper Apache 2 LICENSE file is created and the proper header is automatically added to source files when a project builds.

More information about parent poms and maven configuration can be found here: [https://maven.apache.org/pom.html](https://maven.apache.org/pom.html)

## Example Usage
```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <artifactId>example-project</artifactId>
  <version>LOCAL-SNAPSHOT</version>
  <packaging>jar</packaging>

  <parent>
    <groupId>com.autonomic.tmc</groupId>
    <artifactId>tmc-oss-parent</artifactId>
    <version>1.0.0</version>
  </parent>

  <name>Example Project</name>
  <description>Example Project Description</description>

</project>
```
