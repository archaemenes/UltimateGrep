#! /bin/bash

Help()
{
   # Display Help
   echo "Search for patterns in multiple files present in any locations."
   echo
   echo "Syntax: use the given options [-d|f|h|e]"
   echo -n "options:"
   echo "    -d    Directory to search for"
   echo "            -h    Help Option"
   echo "            -f    Any file pattern"
   echo "            -e    Pattern to search for"
   echo " "
   echo "usage: UltimateGrep -d ./home/user/ -f "*.txt" -e \"ice\""

   echo
   exit;
}

if [ "$#" -eq 0 ]
then
  echo " "
  echo "__No arguments supplied__"
  echo " "
  echo "Syntax: use options [-d|f|h|e]"
  echo "usage: UltimateGrep -d ./home/user/ -f \"*.txt\" -e \"ice\""
  echo "Use -h for help"
  echo " "
  echo "Welcome to UltimateGrep, Happy Searching !"
  echo ""
  exit 1
fi

while getopts d:f:e:h flag
do
    case "${flag}" in
        d) DIR=${OPTARG};;
        f) PATTERN=${OPTARG};;
        e) EXPR=${OPTARG};;
	h) echo "Welcome to UltimateGrep, Happy Searching !" 
	echo " " 
	Help;;		
    esac
done

find ${DIR} -name "${PATTERN}" | xargs -I {}  grep  --color=auto -n -H "${EXPR}" {}
