//#library('DRandom');
// Not cryptographically safe.
// A weak seed will produce weak results. 
// Dart Math.random does not re seed its 
// rng so will produce the same results on every run. 
// Code referenced is mono/mcs/class/corelib/system/Random.cs
class DRandom
{
    //2147483647
    //-2147483648
    final int INTMAX = 2147483647;
    final int INTMIN = -2147483648;

    int MBIG;
    int MSEED = 161803398;
   
    int inext;
    int inextp;

    List<int> SeedArray;

    DRandom.withSeed(int Seed)
    {
        _init();
        print('Seed = ' + Seed);
        _seed(Seed);
    }
    DRandom() 
    {
        _init();
        int i = Math.random();
        int Seed = (i*MBIG).floor();
        print('Seed = ' + Seed);
        _seed(Seed);
    }
    
    void _seed(int Seed)
    {
        int ii;
        int mj;
        int mk;

        if (Seed == INTMIN)
        {
            mj = MSEED - (INTMAX + 1).abs();
        }
        else 
        {
            mj = MSEED - Seed.abs();
        }

        SeedArray[55] = mj;
        mk = 1;
        for (int i=1; i<55; i++)
        {
            ii = (21 * i) % 55;
            SeedArray[ii] = mk;
            mk = mj - mk;
            if (mk < 0)
            {
                mk += MBIG;
            }

            mj = SeedArray[ii];
        }

        for (int k=1; k<5; k++)
        {
            for (int i=1; i<56; i++)
            {
                SeedArray[i] -= SeedArray[1 + (i + 30) % 55];
                if (SeedArray[i] < 0)
                {
                    SeedArray[i] += MBIG;
                }
            }
        }

        inext = 0;
        inextp = 31;
    }

    void _init()
    {
        MBIG = INTMAX;
        SeedArray = new List<int>(56);
    }

    double Sample()
    {
        int retVal;

        if (++inext >= 56) 
        {
            inext=1;
        }

        if (++inextp >= 56)
        {
            inextp=1;
        }

        retVal = SeedArray[inext] - SeedArray[inextp];

        if (retVal < 0)
        {
            retVal += MBIG;
        }
            
        SeedArray[inext] = retVal;

        return retVal * (1.0 / MBIG);
    }

    int Next() 
    {
        int retVal = (Sample() * MBIG).floor();
        return retVal;
    }

    int NextFromMax(int maxValue)
    {
        throw new NotImplementedException();
        return 0;
    }

    int NextFromRange(int minValue, int maxValue)
    {
        throw new NotImplementedException();
        return 0;
    }

    List<int> NextInts()
    {
        throw new NotImplementedException();
    }

    double NextDouble()
    {
        throw new NotImplementedException();
        return 0.0;
    }
}
