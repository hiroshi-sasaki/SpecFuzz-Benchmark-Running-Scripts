#run the executable of jsmn
echo "The results when $1% fences are inserted: " >> /home/zhongfa/benchmarks/run/results/results-jsmn.txt
cd /home/zhongfa/benchmarks/run/bench
# seq 1 10 | parallel -j10 -k 'cd ./jsmn-{} && start=$(date +%s%N) && ./patched perf.json && end=$(date +%s%N) && nanoseconds=$((end - start)) && seconds=$((nanoseconds)) && echo "$seconds" >> /home/zhongfa/benchmarks/run/results/results-jsmn.txt'
seq 1 10 | parallel -j10 -k 'cd ./jsmn-{} && (time ./patched perf.json) 2>> /home/zhongfa/benchmarks/run/results/results-jsmn.txt'
echo "The results when $1% fences done" >> /home/zhongfa/benchmarks/run/results/results-jsmn.txt
