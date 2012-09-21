# DRandom #
DRandom is a simple RPNG with similar interface as Random found in mono/C#

## Status: Alpha ##
This code is alpha and might not be cryptographically safe.  

## Getting Started ##
Create a Dart project and add a **pubspec.yaml** file to it

```
dependencies:
  drandom:
    git: https://github.com/financeCoding/DRandom.git
```
and run **pub install** to install **drandom** (including its dependencies). Now add import

```
#import('package:drandom/drandom.dart');
```

## Example ##
```
#import('package:drandom/drandom.dart');
void main() {
	var drandomNoSeed = new DRandom();
    int i=10;
    while(i-->0)
    {
        print(drandomNoSeed.Next());
    }
}
```

```
-328301571732893608860901703680
1579750147625889974316076892160
1003023346111235333632357826560
-149313288158603672047419654144
298531631412262242713845366784
-523480990482898402773689171968
-142446105031591768493515603968
141515709675211330212513972224
1390707775186541822270960041984
-26918580356064140629020508160
```

## License ##
See LICENSE 

## Contact ##
Email <financeCoding@gmail.com>

G+ <https://plus.google.com/104569492481999771226/posts>

Blogs: <http://financecoding.blogspot.com/> 
