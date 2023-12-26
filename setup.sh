#! /bin/bash
git clone https://github.com/archaemenes/UltimateGrepDir.git
cd UltimateGrepDir
mv UltimateGrep.sh UltimateGrep
chmod +x UltimateGrep 
echo "export PATH=\$PATH:`pwd`/"
echo "export PATH=\$PATH:`pwd`/" >> ~/.bashrc && source ~/.bashrc

