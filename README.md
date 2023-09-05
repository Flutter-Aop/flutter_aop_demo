## 项目中字符常量混淆，例如
```dart
//混淆前：
String test = '123';

//混淆后，'123'已经被混淆，且运行时由opt方法解密
String test='dsds'.opt()
```

## Demo测试
#### 1、根据当前demo项目分支号，下载对应的flutter版本(如：dev_3.10.6 -> 3.10.6)

#### 2、修改flutter_tools
在 [flutter_aop_flutter_tools](https://github.com/Flutter-Aop/flutter_aop_flutter_tools) 仓库相对应的分支下，下载 **aop.patch**文件（packages/flutter_tools/aop.patch）并 安装
```dart
cd path-for-flutter-git-repo
git apply --3way aop.patch
rm bin/cache/flutter_tools.stamp
```

#### 3.修改项目配置
```pubspec
...
environment:
  sdk: '>=3.0.5 <4.0.0'
dependencies:
  ...
  flutter_aop:
    git:
      url: git@github.com:Flutter-Aop/flutter_aop.git
      ref: dev_3.10.6      # 依赖于flutter版本相对应的ref
aop-annotation: false      # 开启aop 注解功能，注解使用方式参考：https://github.com/XianyuTech/aspectd
aop-constant-optimize:     # 开启字符常量优化，并配置哪些plugin需要混淆
  - xxx
```