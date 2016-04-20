#仓库路径
REPO_PATH=$1
#文件的类型
OPEN_TYPE=$2

#判断打开项目文件的类型，根据类型筛选出项目文件路径
if [ $OPEN_TYPE = "xcodeproj" ]; then
    LIST=`find $REPO_PATH -name "*.xcodeproj" | grep -v "Pods.xcodeproj"`
else
    LIST=`find $REPO_PATH -name "*.xcworkspace" | grep -v ".xcodeproj/project.xcworkspace"`
fi

for ITEM in $LIST
do
#打开项目文件
open $ITEM

done