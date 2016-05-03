#!/bin/bash
kernel1=' linux-3.4'
kernel2=' dan-3.4'
list="config_linux_kernel.sh build_linux_kernel.sh build_mali_driver.sh"

if [ x"$(sed -n "/cd$kernel1/p" config_linux_kernel.sh)" = x"" ];then
    sed_cmd="s/cd$kernel2/cd$kernel1/"
else
    sed_cmd="s/cd$kernel1/cd$kernel2/"
fi


for i in $list
do
   sed -i "$sed_cmd"  $i
done
