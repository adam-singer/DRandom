#source('DRandom.dart');

void main()
{
    print ('Math.random() = ' + Math.random());
    print ('Math.random() = ' + Math.random());
    print ('Math.random() = ' + Math.random());
    print ('Math.random() = ' + Math.random());
    print ('Math.random() = ' + Math.random());
    
    var DRandomNoSeed = new DRandom();
    Date d = new Date.now();
    var DRandomSeed = new DRandom.withSeed(d.value%2147483647);
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
}
