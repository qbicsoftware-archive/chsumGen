# chsumGen
@author: Sven Fillinger

_"A useful checksum generator that scans a directory and produces SHA256 checksums for all files"_

## Usage
It is super easy. Just provide the directory with your files you want to write the checksums as first argument. The script will then automatically iterate over all files and generate ```*.sha256_checksum```files in the same directory.

```bash
> ./chsumGen.sh [DIRECTORY] 
```

Be sure that the script has executable rights and that it is allowed to write files in the given directory. 

Have fun :)
