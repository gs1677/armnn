export BASEDIR=/home/tobii.intra/gs1677/ARMNN2/armnn-pi
cd $BASEDIR
export ARMNN_MAJOR_VERSION=21
export ARMNN_MINOR_VERSION=11
export TFLITE_PARSER_MAJOR_VERSION=24
export TFLITE_PARSER_MINOR_VERSION=3
export ONNX_PARSER_MAJOR_VERSION=24
export ONNX_PARSER_MINOR_VERSION=3
mkdir armnn-dist
mkdir armnn-dist/armnn
mkdir armnn-dist/armnn/lib
cp $BASEDIR/armnn/build/libarmnn.so.$ARMNN_MAJOR_VERSION.$ARMNN_MINOR_VERSION $BASEDIR/armnn-dist/armnn/lib
ln -s libarmnn.so.$ARMNN_MAJOR_VERSION.$ARMNN_MINOR_VERSION $BASEDIR/armnn-dist/armnn/lib/libarmnn.so.$ARMNN_MAJOR_VERSION
ln -s libarmnn.so.$ARMNN_MAJOR_VERSION $BASEDIR/armnn-dist/armnn/lib/libarmnn.so
ln -s libarmnn.so.$ARMNN_MAJOR_VERSION $BASEDIR/armnn-dist/armnn/lib/libarmnn.so.27
cp $BASEDIR/armnn/build/libarmnnTfLiteParser.so.$TFLITE_PARSER_MAJOR_VERSION.$TFLITE_PARSER_MINOR_VERSION $BASEDIR/armnn-dist/armnn/lib
ln -s libarmnnTfLiteParser.so.$TFLITE_PARSER_MAJOR_VERSION.$TFLITE_PARSER_MINOR_VERSION $BASEDIR/armnn-dist/armnn/lib/libarmnnTfLiteParser.so.$TFLITE_PARSER_MAJOR_VERSION
ln -s libarmnnTfLiteParser.so.$TFLITE_PARSER_MAJOR_VERSION $BASEDIR/armnn-dist/armnn/lib/libarmnnTfLiteParser.so
cp $BASEDIR/armnn/build/libarmnnOnnxParser.so.$ARMNN_MAJOR_VERSION.$ARMNN_MINOR_VERSION $BASEDIR/armnn-dist/armnn/lib
ln -s
libarmnnOnnxParser.so.$ONNX_PARSER_MAJOR_VERSION.$ONNX_PARSER_MINOR_VERSION $BASEDIR/armnn-dist/armnn/lib/libarmnnOnnxParser.so.$ONNX_PARSER_MAJOR_VERSION
ln -s libarmnnOnnxParser.so.$ONNX_PARSER_MAJOR_VERSION $BASEDIR/armnn-dist/armnn/lib/libarmnnOnnxParser.so
cp $BASEDIR/protobuf-arm/lib/libprotobuf.so.23.0.0 $BASEDIR/armnn-dist/armnn/lib/libprotobuf.so
cp $BASEDIR/protobuf-arm/lib/libprotobuf.so.23.0.0 $BASEDIR/armnn-dist/armnn/lib/libprotobuf.so.23
cp -r $BASEDIR/armnn/include $BASEDIR/armnn-dist/armnn/include

# Copy backends
mkdir -p $BASEDIR/armnn-dist/src/backends/backendsCommon/test/
cp -r $BASEDIR/armnn/build/src/backends/backendsCommon/test/testSharedObject $BASEDIR/armnn-dist/src/backends/backendsCommon/test/testSharedObject/

cp -r $BASEDIR/armnn/build/src/backends/backendsCommon/test/testDynamicBackend/ $BASEDIR/armnn-dist/src/backends/backendsCommon/test/testDynamicBackend/
cp -r $BASEDIR/armnn/build/src/backends/backendsCommon/test/backendsTestPath1/ $BASEDIR/armnn-dist/src/backends/backendsCommon/test/backendsTestPath1/

mkdir -p $BASEDIR/armnn-dist/src/backends/backendsCommon/test/backendsTestPath2
cp $BASEDIR/armnn/build/src/backends/backendsCommon/test/backendsTestPath2/Arm_CpuAcc_backend.so $BASEDIR/armnn-dist/src/backends/backendsCommon/test/backendsTestPath2/

ln -s Arm_CpuAcc_backend.so $BASEDIR/armnn-dist/src/backends/backendsCommon/test/backendsTestPath2/Arm_CpuAcc_backend.so.1
ln -s Arm_CpuAcc_backend.so.1 $BASEDIR/armnn-dist/src/backends/backendsCommon/test/backendsTestPath2/Arm_CpuAcc_backend.so.1.2
ln -s Arm_CpuAcc_backend.so.1.2 $BASEDIR/armnn-dist/src/backends/backendsCommon/test/backendsTestPath2/Arm_CpuAcc_backend.so.1.2.3
cp $BASEDIR/armnn/build/src/backends/backendsCommon/test/backendsTestPath2/Arm_GpuAcc_backend.so $BASEDIR/armnn-dist/src/backends/backendsCommon/test/backendsTestPath2/
ln -s nothing $BASEDIR/armnn-dist/src/backends/backendsCommon/test/backendsTestPath2/Arm_no_backend.so

mkdir -p $BASEDIR/armnn-dist/src/backends/backendsCommon/test/backendsTestPath3

cp -r $BASEDIR/armnn/build/src/backends/backendsCommon/test/backendsTestPath5/ $BASEDIR/armnn-dist/src/backends/backendsCommon/test/backendsTestPath5
cp -r $BASEDIR/armnn/build/src/backends/backendsCommon/test/backendsTestPath6/ $BASEDIR/armnn-dist/src/backends/backendsCommon/test/backendsTestPath6

mkdir -p $BASEDIR/armnn-dist/src/backends/backendsCommon/test/backendsTestPath7

cp -r $BASEDIR/armnn/build/src/backends/backendsCommon/test/backendsTestPath9/ $BASEDIR/armnn-dist/src/backends/backendsCommon/test/backendsTestPath9

mkdir -p $BASEDIR/armnn-dist/src/backends/dynamic/reference
cp $BASEDIR/armnn/build/src/backends/dynamic/reference/Arm_CpuRef_backend.so $BASEDIR/armnn-dist/src/backends/dynamic/reference/

# tar -zcvf armnn_lib.tar.gz armnn-dist/
# sudo cp armm_cos.tar.gz /var/www/html/armnn_cos.tar.gz
