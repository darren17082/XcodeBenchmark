echo "System Version:" "$(sw_vers -productVersion)"
xcodebuild -version | grep "Xcode"

echo "Hardware Overview"
system_profiler SPHardwareDataType | grep "Model Name:"
system_profiler SPHardwareDataType | grep "Model Identifier:"

system_profiler SPHardwareDataType | grep "Processor Name:"
system_profiler SPHardwareDataType | grep "Processor Speed:"
system_profiler SPHardwareDataType | grep "Total Number of Cores:"

system_profiler SPHardwareDataType | grep "L2 Cache (per Core):"
system_profiler SPHardwareDataType | grep "L3 Cache:"

system_profiler SPHardwareDataType | grep "Number of Processors:"
system_profiler SPHardwareDataType | grep "Hyper-Threading Technology:"

system_profiler SPHardwareDataType | grep "Memory:"
system_profiler SPSerialATADataType | grep "Model:"

sysctl -n machdep.cpu.brand_string
system_profiler | grep "Cores"
system_profiler | grep Processor
sysctl -a | sort | grep cpu
