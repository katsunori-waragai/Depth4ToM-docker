tom_training_datasets.zip

https://github.com/CVLAB-Unibo/Depth4ToM-code?tab=readme-ov-file#arrow_down-get-your-hands-on-the-data

## ディレクトリ構造
```commandline
"midas_v21", "dpt_large"　という２種類のモデルがある。
["Trans10K", "MSD"]　という2種類のデータセットがある。
データセットは、"train test validation"の3種類に分割されている。
.
./MSD
./MSD/test
./MSD/test/dpt_large_proxies # gen_virtual_depth.shで生成される
./MSD/test/images
./MSD/test/masks
./MSD/test/masks_proxy
./MSD/test/midas_v21_proxies　 # gen_virtual_depth.shで生成される
./MSD/train
./MSD/train/dpt_large_proxies　 # gen_virtual_depth.shで生成される
./MSD/train/images
./MSD/train/masks
./MSD/train/midas_v21_proxies　 # gen_virtual_depth.shで生成される
./Trans10K
./Trans10K/test
./Trans10K/test/dpt_large_proxies　 # gen_virtual_depth.shで生成される
./Trans10K/test/dpt_large_proxies/base
./Trans10K/test/images
./Trans10K/test/masks
./Trans10K/test/masks_proxy
./Trans10K/test/midas_v21_proxies
./Trans10K/train
./Trans10K/train/dpt_large_proxies　 # gen_virtual_depth.shで生成される
./Trans10K/train/images
./Trans10K/train/masks
./Trans10K/train/midas_v21_proxies　 # gen_virtual_depth.shで生成される
./Trans10K/validation
./Trans10K/validation/dpt_large_proxies　 # gen_virtual_depth.shで生成される
./Trans10K/validation/dpt_large_proxies/base
./Trans10K/validation/images
./Trans10K/validation/masks
./Trans10K/validation/midas_v21_proxies　 # gen_virtual_depth.shで生成される


```

## 生成されたディレクトリに含まれるもの
```commandline
root@orin:~/Depth4ToM-code/data/Trans10K/test/dpt_large_proxies# ls -lF | head
total 4531704
-rw-rw-r-- 1 1000 1000  786560 Dec 19  2023 1.npy
-rw-rw-r-- 1 1000 1000  272223 Dec 19  2023 1.png
-rw-rw-r-- 1 1000 1000  786560 Dec 19  2023 100.npy
-rw-rw-r-- 1 1000 1000  208652 Dec 19  2023 100.png

```

このディレクトリに、depthのnpyファイルとpngファイルが格納される。


~/Depth4ToM-code/datasets/trans10k# ls -lFt
total 2564
-rw-r--r-- 1 root root 139898 Jul 19 11:56 validation_dpt_large_base.txt
-rw-r--r-- 1 root root 566230 Jul 19 11:22 test_dpt_large_base.txt
-rw-r--r-- 1 root root 624416 Jul 19 09:27 train_dpt_large_base.txt
-rw-r--r-- 1 root root  48431 Jul 18 08:08 test.txt
-rw-r--r-- 1 root root  54708 Jul 18 08:08 train.txt
-rw-r--r-- 1 root root  10949 Jul 18 08:08 validation.txt
-rw-r--r-- 1 root root 573443 Jul 18 08:08 virtual_depth_dpt_large.txt
-rw-r--r-- 1 root root 573444 Jul 18 08:08 virtual_depth_midas_v21.txt


~/Depth4ToM-code/datasets/trans10k# head virtual_depth_midas_v21.txt 
train/images/8829.jpg train/midas_v21_proxies/8829.npy
train/images/4868.jpg train/midas_v21_proxies/4868.npy
train/images/10244.jpg train/midas_v21_proxies/10244.npy
train/images/605.jpg train/midas_v21_proxies/605.npy
train/images/8223.jpg train/midas_v21_proxies/8223.npy
train/images/2050.jpg train/midas_v21_proxies/2050.npy
train/images/7071.jpg train/midas_v21_proxies/7071.npy
train/images/7232.jpg train/midas_v21_proxies/7232.npy
train/images/5089.jpg train/midas_v21_proxies/5089.npy
train/images/4130.jpg train/midas_v21_proxies/4130.npy


output_listのファイル名
# output_list="datasets/"$dataset_lower"/"$split"_"$model"_"$exp".txt"

```commandline
~/Depth4ToM-code/datasets/trans10k# head validation_dpt_large_base.txt
/root/Depth4ToM-code/data/Trans10K/validation/images/7621.jpg /root/Depth4ToM-code/data/Trans10K/validation/dpt_large_proxies/base/7621.npy
/root/Depth4ToM-code/data/Trans10K/validation/images/2533.jpg /root/Depth4ToM-code/data/Trans10K/validation/dpt_large_proxies/base/2533.npy
/root/Depth4ToM-code/data/Trans10K/validation/images/6098.jpg /root/Depth4ToM-code/data/Trans10K/validation/dpt_large_proxies/base/6098.npy
/root/Depth4ToM-code/data/Trans10K/validation/images/8130.jpg /root/Depth4ToM-code/data/Trans10K/validation/dpt_large_proxies/base/8130.npy
/root/Depth4ToM-code/data/Trans10K/validation/images/3091.jpg /root/Depth4ToM-code/data/Trans10K/validation/dpt_large_proxies/base/3091.npy
/root/Depth4ToM-code/data/Trans10K/validation/images/1360.jpg /root/Depth4ToM-code/data/Trans10K/validation/dpt_large_proxies/base/1360.npy
/root/Depth4ToM-code/data/Trans10K/validation/images/9693.jpg /root/Depth4ToM-code/data/Trans10K/validation/dpt_large_proxies/base/9693.npy
/root/Depth4ToM-code/data/Trans10K/validation/images/1342.jpg /root/Depth4ToM-code/data/Trans10K/validation/dpt_large_proxies/base/1342.npy
/root/Depth4ToM-code/data/Trans10K/validation/images/4478.jpg /root/Depth4ToM-code/data/Trans10K/validation/dpt_large_proxies/base/4478.npy
/root/Depth4ToM-code/data/Trans10K/validation/images/6746.jpg /root/Depth4ToM-code/data/Trans10K/validation/dpt_large_proxies/base/6746.npy
```


dataset_txt="datasets/"$dataset_lower"/"$split".txt" # inference list

root@orin:~/Depth4ToM-code/datasets/trans10k# ls -lFt test.txt train.txt validation.txt
-rw-r--r-- 1 root root 48431 Jul 18 08:08 test.txt
-rw-r--r-- 1 root root 54708 Jul 18 08:08 train.txt
-rw-r--r-- 1 root root 10949 Jul 18 08:08 validation.txt
root@orin:~/Depth4ToM-code/datasets/trans10k# head test.txt
5428.jpg _
7910.jpg _
2373.jpg _
1949.jpg _
6049.jpg _
794.jpg _
7338.jpg _
5241.jpg _
7919.jpg _
8933.jpg _
