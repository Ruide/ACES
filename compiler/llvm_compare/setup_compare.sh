set -e
# THIS_DIR=`dirname \`readlink -f $0\``
REPO_ROOT=$(readlink -f `dirname $0`/..)
PROJECT_ROOT_DIR=`dirname ${REPO_ROOT}`
LLVM_DIR=${PROJECT_ROOT_DIR}/llvm/llvm-release_40_original

echo "${LLVM_DIR}"

rm -f ./json-forwards.h
rm -f ./json.h
cp ${LLVM_DIR}/include/llvm/InitializePasses.h ./
cp ${LLVM_DIR}/include/llvm/LinkAllPasses.h ./
cp ${LLVM_DIR}/include/llvm/Transforms/Instrumentation.h ./
cp ${LLVM_DIR}/lib/LTO/LTOCodeGenerator.cpp ./
cp ${LLVM_DIR}/lib/Support/CMakeLists.txt ./lib-Support-CMakeLists.txt
# cp ${LLVM_DIR}/lib/Support/jsoncpp.cpp ./
rm -f ./jsoncpp.cpp
cp ${LLVM_DIR}/lib/Target/ARM/CMakeLists.txt ./lib-Target-Arm-CMakeLists.txt
cp ${LLVM_DIR}/lib/Transforms/IPO/PassManagerBuilder.cpp ./
cp ${LLVM_DIR}/lib/Transforms/Utils/CMakeLists.txt ./lib-Transforms-Utils-CMakeLists.txt
# cp ${LLVM_DIR}/lib/Transforms/Utils/HexboxAnalysis.cpp ./
rm -f ./HexboxAnalysis.cpp
# cp ${LLVM_DIR}/lib/Transforms/Utils/ExperimentAnalysis.cpp ./
rm -f ./ExperimentAnalysis.cpp
# cp ${LLVM_DIR}/lib/Transforms/Utils/HexboxApplication.cpp ./
rm -f ./HexboxApplication.cpp
cp ${LLVM_DIR}/lib/Transforms/Utils/Utils.cpp ./
cp ${LLVM_DIR}/lib/IR/Function.cpp ./
cp ${LLVM_DIR}/include/llvm/IR/Function.h ./


# Hexbox Alias Analysis
cp ${LLVM_DIR}/lib/Analysis/CMakeLists.txt ./lib-Analysis-CMakeLists.txt


# Backend
cp ${LLVM_DIR}/lib/Target/ARM/ARMInstrThumb.td ./
cp ${LLVM_DIR}/lib/Target/ARM/ARMInstrInfo.td ./
cp ${LLVM_DIR}/lib/Target/ARM/ARMISelLowering.cpp ./
cp ${LLVM_DIR}/lib/Target/ARM/ARMISelLowering.h ./
cp ${LLVM_DIR}/lib/Target/ARM/ARM.h ./
cp ${LLVM_DIR}/lib/Target/ARM/ARMTargetMachine.cpp ./
# cp ${LLVM_DIR}/lib/Target/ARM/MCExperimentPrinter.cpp ./
rm -f ./MCExperimentPrinter.cpp

#IR

cp ${LLVM_DIR}/include/llvm/IR/Instructions.h ./
cp ${LLVM_DIR}/lib/CodeGen/SelectionDAG/SelectionDAGBuilder.cpp ./


