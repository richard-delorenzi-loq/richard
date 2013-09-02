# Why is the demo server slow?

## Low on Ram
  Could get some more.
## Multiple users still logged in
  Could get a way to log out after a short time, or use one account.
## Resource intensive OS
  We **may** be stuck with the one we have.
## Running lots of unnecessary services/processes:
  e.g. Nvidia Stereoscopic 3d driver service
  Could remove some of it.
## Virus scanner
  Could protect ourself from malicious software differently.
## Multiple copies of qsmart:
  The 9 q-smart services (2 per park) are 17 out of 20 of the top RAM users on the server (when measured), (the other was at position 23). About 50% of 1.66GB (but looks like the least recently used is shrinking).

  This not only wastes disk space, but also wastes RAM, by having multiple copies of the same data in RAM (commit or disk cache). By sharing what is common it may be possible to save RAM. 

  The NT kernel can use copy on write: If multiple processes read a resource it will be shared. If a process writes to it, then those blocks will be copied and modified. On NT a .exe is its own pagefile (swap).

  Could share common disk resources.
  Could change software to run multiple parks using same software.
