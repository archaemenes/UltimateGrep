#! /bin/bash
git clone https://github.com/archaemenes/UltimateGrep.git
cd UltimateGrep
mv UltimateGrep.sh UltimateGrep
chmod +x UltimateGrep 
echo "export PATH=\$PATH:`pwd`/"
echo "export PATH=\$PATH:`pwd`/" >> ~/.bashrc && source ~/.bashrc
echo " "
echo "Setup Done"
