#!/usr/bin/env python

import os.path
from os import listdir
from os.path import isfile, join, relpath, realpath, abspath
import calendar
import time
from subprocess import call

def main():
  userHome=os.environ["HOME"]

  print("Executing setup scripts")
  scriptsHome = "config/scripts"
  filesToExecute = ["{}/{}".format(scriptsHome, f) for f in listdir(scriptsHome) if isfile(join(scriptsHome, f))]
  for file in filesToExecute:
    print("calling {}".format(file))
    returnCode = call(["./{}".format(file)])
    if returnCode != 0:
      raise RuntimeError("executing file {} exited with code: {}".format(file, returnCode))

  # place symlinks in $HOME for each file in config/home
  configHome = "config/home"
  filesToLink = [(configHome, f) for f in listdir(configHome) if isfile(join(configHome, f))]

  # place a symlink in $HOME for the script directory
  filesToLink.append((".", "script"))

  for sourceDir, fileName in filesToLink:
    source=abspath(join(sourceDir, fileName)) # absolute path of the file to link
    dest=userHome # path at which to create the link

    setSymlink(source, dest)

  print("")

  print "Configuring global gitignore..."
  call(["git", "config", "--global", "core.excludesfile", "~/.gitignore"])
  print("")



# Create a symlink in DIRECTORY dest which points to src.
# If a file or symlink already exists at dest, rename to [filename]-[date seconds]
# src should contain an absolute path, as this function will determine the relative path.
def setSymlink(src, dest):
  print("")

  print "Creating a link to: " + src
  print "From: " + dest

  srcDir, srcFile = os.path.split(src)
  relPath = relpath(src, dest)
  # print relPath

  # destName is the destination directory AND file name
  destName=os.path.join(dest, srcFile)

  # Check for an existing file with the proper name.
  needToInspect=os.path.exists(destName)

  # needToInspect is false at this point if the file doesn't exist OR if it's a broken symlink.
  # NOTE: os.readlink will throw if it's called against a nonexistent file OR A REAL (non symlink) FILE.
  # THIS IS FINE because (a) we want needToInspect to be True in that case, and (b) won't happen cuz os.path.exists above.
  if not(needToInspect):
    try:
      os.readlink(destName)
      needToInspect=True
    except OSError, e:
      needToInspect=False
    
  if needToInspect: 
    currentlink=relpath(realpath(destName), dest) # relative path of the real path of the existing symlink
    # print currentlink
    if currentlink == relPath:
      print("Correct link exists")
      return
    else:
      datestring=str(calendar.timegm(time.gmtime()))
      newname=destName+"-"+datestring
      print "Renaming from " + destName + " to " + newname
      os.rename(destName, newname)

  # Create the symlink
  # print "relPath: "+relPath+"; dest: "+destName
  os.symlink(relPath, destName)

# If this file is being run as a script, then call the main() function.
if __name__ == "__main__":
  main()


