rm -rf gam
rm -rf build
rm -rf dist
rm -f gamadv-xtd3-$1-macos.tar

pyinstaller-3.6 --clean -F --distpath=gam macos-gam.spec
cp LICENSE gam
cp license.rtf gam
cp whatsnew.txt gam
cp Gam*.txt gam
cp cacerts.pem gam

tar -cf gamadv-xtd3-$1-macos.tar gam/ 
