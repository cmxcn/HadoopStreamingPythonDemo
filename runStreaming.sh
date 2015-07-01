#!/bin/bash
HADOOP_HOME=/usr/local/hadoop
INPUT_PATH=input
OUTPUT_PATH=output
echo "Clearing output path: $OUTPUT_PATH"
$HADOOP_HOME/bin/hadoop fs -rm -r $OUTPUT_PATH
 
${HADOOP_HOME}/bin/hadoop jar\
   ${HADOOP_HOME}/share/hadoop/tools/lib/hadoop-streaming-2.5.2.jar\
  -files mapper.py,reducer.py\
  -input $INPUT_PATH\
  -output $OUTPUT_PATH\
  -mapper 'python3 mapper.py'\
  -reducer 'python3 reducer.py'
