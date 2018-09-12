echo "---start run auto build & push----"
echo "please make sure are you install gitbash ,node.js and dependency librarys!"
base=$(cd `dirname $0`; pwd)
source_dir=$base\static
target_dir=D:\tmp\ddd
echo "!!! Will be deleted $target_dir and copy $source_dir to $target_dir !!!"

npm run build 
cd $target_dir
rm -rf $target_dir\*
cp -r $source_dir\* $target_dir

echo "--build sucdess! start commit and push file ---"

git add .
git commit -m "auto build and commit"
git pull
git push
pause
