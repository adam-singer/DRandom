import 'package:drandom/drandom.dart';

void main()
{
    var DRandomNoSeed = new DRandom();
    var DRandomSeed = new DRandom.withSeed(new Date.now().millisecondsSinceEpoch%2147483647);

    print('With no seed');
    int i=10;
    while(i-->0)
    {
        print(DRandomNoSeed.Next());
    }

    print('With seed');
    i=10;
    while(i-->0)
    {
        print(DRandomSeed.Next());
    }

     print(DRandomSeed.NextFromMax(10));
     print(DRandomSeed.NextDouble());

     var m = DRandomSeed.NextIntsUnique(0,20,19);
     print(m);
     m.forEach((k,v) => print('${k},${v}'));
}
