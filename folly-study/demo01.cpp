 #include <folly/Benchmark.h>
    #include <vector>
    using namespace std;
    using namespace folly;
    BENCHMARK(insertFrontVector) {
      // Let's insert 100 elements at the front of a vector
      vector<int> v;
      for (unsigned int i = 0; i < 100; ++i) {
        v.insert(v.begin(), i);
      }
    }
    BENCHMARK(insertBackVector) {
      // Let's insert 100 elements at the back of a vector
      vector<int> v;
      for (unsigned int i = 0; i < 100; ++i) {
        v.insert(v.end(), i);
      }
    }
    int main() {
      runBenchmarks();
    }