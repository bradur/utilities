import os
file = open("dirlist.txt", "w")
for d in os.listdir(os.getcwd()):
  if os.path.isdir(d):
    file.write(d+"\n")
file.close()