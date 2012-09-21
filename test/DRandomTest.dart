#import('../lib/DRandom.dart');
#import('dart:math', prefix:'Math');

void main()
{
    Math.Random rnd = new Math.Random();
    print ('Math.random() = ${rnd.nextDouble()}');
    print ('Math.random() = ${rnd.nextDouble()}');
    print ('Math.random() = ${rnd.nextDouble()}');
    print ('Math.random() = ${rnd.nextDouble()}');
    print ('Math.random() = ${rnd.nextDouble()}');
    
    var DRandomNoSeed = new DRandom();
    Date d = new Date.now();
    var DRandomSeed = new DRandom.withSeed(d.millisecondsSinceEpoch%2147483647);
    print(DRandomNoSeed.MBIG);

    print ('printing with no seed'); 
    int i=10;
    while(i-->0)
    {
        print(DRandomNoSeed.Next());
    }

    print ('printing with seed');
    i=10;
    while(i-->0)
    {
        print(DRandomSeed.Next());
    }

     print (DRandomSeed.NextFromMax(10));   
     print (DRandomSeed.NextDouble());

     var m = DRandomSeed.NextIntsUnique(0,20,19);
     print(m);
     m.forEach((k,v) => print('${k},${v}'));
}
