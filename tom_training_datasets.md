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


