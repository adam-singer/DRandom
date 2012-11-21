//#import('../lib/drandom.dart');
import 'package:drandom/drandom.dart';
import 'package:unittest/unittest.dart';

void main() {
  group('DRandom Tests', () {
    test('NextDouble', () {
      var drandom = new DRandom.withSeed(1);
      expect(drandom.NextDouble(), equals(0.3668545910002918));
      expect(drandom.NextDouble(), equals(0.20793473031741322));
      expect(drandom.NextDouble(), equals(0.9534165486476461));
      expect(drandom.NextDouble(), equals(0.25244181428684004));
    });
    test('Next', () {
      var drandom = new DRandom.withSeed(1);
      expect(drandom.Next(), equals(787814235));
      expect(drandom.Next(), equals(446536433));
      expect(drandom.Next(), equals(2047446447));
      expect(drandom.Next(), equals(542114668));
      expect(drandom.Next(), equals(1948695961));
    });
    test('NextFromMax', () {
      var drandom = new DRandom.withSeed(1);
      expect(drandom.NextFromMax(10), equals(3));
      expect(drandom.NextFromMax(9), equals(1));
      expect(drandom.NextFromMax(8), equals(7));
      expect(drandom.NextFromMax(7), equals(1));
      expect(drandom.NextFromMax(6), equals(5));
    });
    test('NextFromRange', () {
      var drandom = new DRandom.withSeed(1);
      expect(drandom.NextFromRange(1, 100), equals(37));
      expect(drandom.NextFromRange(1, 50), equals(11));
      expect(drandom.NextFromRange(2, 3), equals(2));
      expect(drandom.NextFromRange(3, 4), equals(3));
      expect(drandom.NextFromRange(1, 3), equals(2));
    });
    test('NextInts', () {
      var drandom = new DRandom.withSeed(1);
      expect(drandom.NextInts(10), orderedEquals([787814235, 446536433, 2047446447, 542114668, 1948695961, 780511039, 1618872875, 1295684380, 1801045183, 765841297]));
      expect(drandom.NextInts(1), orderedEquals([1843725396]));
    });
    test('NextIntsUnique', () {
      var drandom = new DRandom.withSeed(1);
      var r = drandom.NextIntsUnique(1, 10, 9);
      expect(r[1], equals(4));
      expect(r[2], equals(2));
      expect(r[3], equals(9));
      expect(r[4], equals(3));
      expect(r[5], equals(7));
      expect(r[6], equals(6));
      expect(r[7], equals(8));
      expect(r[8], equals(5));
      expect(r[9], equals(1));
    });

  });
}
