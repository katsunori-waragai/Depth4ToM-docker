# boost_gt.zip のダウンロード
https://amsacta.unibo.it/id/eprint/6876/
https://amsacta.unibo.it/id/eprint/6876/1/booster_gt.zip

https://cvlab-unibo.github.io/booster-web/

https://amsacta.unibo.it/id/eprint/6876/1/booster_gt.zip
## pdf
[Open Challenges in Deep Stereo: the Booster Dataset](https://arxiv.org/pdf/2206.04671)


## 特徴
- これはステレオ画像を含む。
- scripts/table2.sh table3.sh で利用している。
- trainの側のフォルダ構成が違うことに注意
*.npy ファイル、 warped_mask_cat_col.png がある。

## unzip
```commandline

cd data
mkdir boost
unzip booster_gt.zip
```

## ディレクトリ構造
```commandline
./test
./test/balanced
./test/balanced/Balance
./test/balanced/Balance/camera_00
./test/balanced/Balance/camera_02
./test/balanced/Barrel
./test/balanced/Barrel/camera_00
./test/balanced/Barrel/camera_02
./test/balanced/Bidet
./test/balanced/Bidet/camera_00
./test/balanced/Bidet/camera_02
./test/balanced/Blender
./test/balanced/Blender/camera_00
./test/balanced/Blender/camera_02
./test/balanced/Bottles
./test/balanced/Bottles/camera_00
./test/balanced/Bottles/camera_02
./test/balanced/Bowl
./test/balanced/Bowl/camera_00
./test/balanced/Bowl/camera_02
./test/balanced/Computer
./test/balanced/Computer/camera_00
./test/balanced/Computer/camera_02
./test/balanced/Cooker
./test/balanced/Cooker1
./test/balanced/Cooker1/camera_00
./test/balanced/Cooker1/camera_02
./test/balanced/Cooker/camera_00
./test/balanced/Cooker/camera_02
./test/balanced/Dinner
./test/balanced/Dinner/camera_00
./test/balanced/Dinner/camera_02
./test/balanced/Jars
./test/balanced/Jars/camera_00
./test/balanced/Jars/camera_02
./test/balanced/Library
./test/balanced/Library/camera_00
./test/balanced/Library/camera_02
./test/balanced/Lid
./test/balanced/Lid/camera_00
./test/balanced/Lid/camera_02
./test/balanced/Microwave1
./test/balanced/Microwave1/camera_00
./test/balanced/Microwave1/camera_02
./test/balanced/Mirror1
./test/balanced/Mirror1/camera_00
./test/balanced/Mirror1/camera_02
./test/balanced/Nintendo
./test/balanced/Nintendo/camera_00
./test/balanced/Nintendo/camera_02
./test/balanced/Oven
./test/balanced/Oven/camera_00
./test/balanced/Oven/camera_02
./test/balanced/Pillow
./test/balanced/Pillow/camera_00
./test/balanced/Pillow/camera_02
./test/balanced/Pots
./test/balanced/Pots/camera_00
./test/balanced/Pots/camera_02
./test/balanced/ShotGlasses
./test/balanced/ShotGlasses/camera_00
./test/balanced/ShotGlasses/camera_02
./test/balanced/Tanks
./test/balanced/Tanks/camera_00
./test/balanced/Tanks/camera_02
./test/balanced/TV3
./test/balanced/TV3/camera_00
./test/balanced/TV3/camera_02
./test/balanced/Washer1
./test/balanced/Washer1/camera_00
./test/balanced/Washer1/camera_02
./test/balanced/Water
./test/balanced/Water/camera_00
./test/balanced/Water/camera_02
./test/balanced/Window
./test/balanced/Window1
./test/balanced/Window1/camera_00
./test/balanced/Window1/camera_02
./test/balanced/Window/camera_00
./test/balanced/Window/camera_02
./test/unbalanced
./test/unbalanced/Balance
./test/unbalanced/Balance/camera_00
./test/unbalanced/Balance/camera_01
./test/unbalanced/Barrel
./test/unbalanced/Barrel/camera_00
./test/unbalanced/Barrel/camera_01
./test/unbalanced/Bidet
./test/unbalanced/Bidet/camera_00
./test/unbalanced/Bidet/camera_01
./test/unbalanced/Blender
./test/unbalanced/Blender/camera_00
./test/unbalanced/Blender/camera_01
./test/unbalanced/Bottles
./test/unbalanced/Bottles/camera_00
./test/unbalanced/Bottles/camera_01
./test/unbalanced/Bowl
./test/unbalanced/Bowl/camera_00
./test/unbalanced/Bowl/camera_01
./test/unbalanced/Computer
./test/unbalanced/Computer/camera_00
./test/unbalanced/Computer/camera_01
./test/unbalanced/Cooker
./test/unbalanced/Cooker1
./test/unbalanced/Cooker1/camera_00
./test/unbalanced/Cooker1/camera_01
./test/unbalanced/Cooker/camera_00
./test/unbalanced/Cooker/camera_01
./test/unbalanced/Dinner
./test/unbalanced/Dinner/camera_00
./test/unbalanced/Dinner/camera_01
./test/unbalanced/Jars
./test/unbalanced/Jars/camera_00
./test/unbalanced/Jars/camera_01
./test/unbalanced/Library
./test/unbalanced/Library/camera_00
./test/unbalanced/Library/camera_01
./test/unbalanced/Lid
./test/unbalanced/Lid/camera_00
./test/unbalanced/Lid/camera_01
./test/unbalanced/Microwave1
./test/unbalanced/Microwave1/camera_00
./test/unbalanced/Microwave1/camera_01
./test/unbalanced/Mirror1
./test/unbalanced/Mirror1/camera_00
./test/unbalanced/Mirror1/camera_01
./test/unbalanced/Nintendo
./test/unbalanced/Nintendo/camera_00
./test/unbalanced/Nintendo/camera_01
./test/unbalanced/Oven
./test/unbalanced/Oven/camera_00
./test/unbalanced/Oven/camera_01
./test/unbalanced/Pillow
./test/unbalanced/Pillow/camera_00
./test/unbalanced/Pillow/camera_01
./test/unbalanced/Pots
./test/unbalanced/Pots/camera_00
./test/unbalanced/Pots/camera_01
./test/unbalanced/ShotGlasses
./test/unbalanced/ShotGlasses/camera_00
./test/unbalanced/ShotGlasses/camera_01
./test/unbalanced/Tanks
./test/unbalanced/Tanks/camera_00
./test/unbalanced/Tanks/camera_01
./test/unbalanced/TV3
./test/unbalanced/TV3/camera_00
./test/unbalanced/TV3/camera_01
./test/unbalanced/Washer1
./test/unbalanced/Washer1/camera_00
./test/unbalanced/Washer1/camera_01
./test/unbalanced/Water
./test/unbalanced/Water/camera_00
./test/unbalanced/Water/camera_01
./test/unbalanced/Window
./test/unbalanced/Window1
./test/unbalanced/Window1/camera_00
./test/unbalanced/Window1/camera_01
./test/unbalanced/Window/camera_00
./test/unbalanced/Window/camera_01
./train
./train/balanced
./train/balanced/Bathroom
./train/balanced/Bathroom/camera_00
./train/balanced/Bathroom/camera_02
./train/balanced/Bedroom
./train/balanced/Bedroom/camera_00
./train/balanced/Bedroom/camera_02
./train/balanced/Bottle
./train/balanced/Bottle1
./train/balanced/Bottle1/camera_00
./train/balanced/Bottle1/camera_02
./train/balanced/Bottle/camera_00
./train/balanced/Bottle/camera_02
./train/balanced/BottledWater
./train/balanced/BottledWater/camera_00
./train/balanced/BottledWater/camera_02
./train/balanced/Bottles1
./train/balanced/Bottles1/camera_00
./train/balanced/Bottles1/camera_02
./train/balanced/Bucket
./train/balanced/Bucket/camera_00
./train/balanced/Bucket/camera_02
./train/balanced/Canteen
./train/balanced/Canteen/camera_00
./train/balanced/Canteen/camera_02
./train/balanced/Case
./train/balanced/Case/camera_00
./train/balanced/Case/camera_02
./train/balanced/CashBox
./train/balanced/CashBox/camera_00
./train/balanced/CashBox/camera_02
./train/balanced/CoffeeMaker
./train/balanced/CoffeeMaker/camera_00
./train/balanced/CoffeeMaker/camera_02
./train/balanced/Cooker1
./train/balanced/Cooker1/camera_00
./train/balanced/Cooker1/camera_02
./train/balanced/Cosmetics
./train/balanced/Cosmetics/camera_00
./train/balanced/Cosmetics/camera_02
./train/balanced/DogHouse
./train/balanced/DogHouse/camera_00
./train/balanced/DogHouse/camera_02
./train/balanced/Door
./train/balanced/Door/camera_00
./train/balanced/Door/camera_02
./train/balanced/ExtractorFan
./train/balanced/ExtractorFan/camera_00
./train/balanced/ExtractorFan/camera_02
./train/balanced/Fridge
./train/balanced/Fridge/camera_00
./train/balanced/Fridge/camera_02
./train/balanced/Lunch
./train/balanced/Lunch/camera_00
./train/balanced/Lunch/camera_02
./train/balanced/Microwave
./train/balanced/Microwave/camera_00
./train/balanced/Microwave/camera_02
./train/balanced/Mirror
./train/balanced/Mirror/camera_00
./train/balanced/Mirror/camera_02
./train/balanced/Moka
./train/balanced/Moka1
./train/balanced/Moka1/camera_00
./train/balanced/Moka1/camera_02
./train/balanced/Moka/camera_00
./train/balanced/Moka/camera_02
./train/balanced/Motorcycle
./train/balanced/Motorcycle/camera_00
./train/balanced/Motorcycle/camera_02
./train/balanced/Mouthwash
./train/balanced/Mouthwash/camera_00
./train/balanced/Mouthwash/camera_02
./train/balanced/OilCan
./train/balanced/OilCan/camera_00
./train/balanced/OilCan/camera_02
./train/balanced/Oven1
./train/balanced/Oven1/camera_00
./train/balanced/Oven1/camera_02
./train/balanced/Oven2
./train/balanced/Oven2/camera_00
./train/balanced/Oven2/camera_02
./train/balanced/Pots1
./train/balanced/Pots1/camera_00
./train/balanced/Pots1/camera_02
./train/balanced/Shower
./train/balanced/Shower/camera_00
./train/balanced/Shower/camera_02
./train/balanced/Sink
./train/balanced/Sink/camera_00
./train/balanced/Sink/camera_02
./train/balanced/SoapDishes
./train/balanced/SoapDishes/camera_00
./train/balanced/SoapDishes/camera_02
./train/balanced/Tablet
./train/balanced/Tablet/camera_00
./train/balanced/Tablet/camera_02
./train/balanced/Toilet
./train/balanced/Toilet/camera_00
./train/balanced/Toilet/camera_02
./train/balanced/TV
./train/balanced/TV1
./train/balanced/TV1/camera_00
./train/balanced/TV1/camera_02
./train/balanced/TV2
./train/balanced/TV2/camera_00
./train/balanced/TV2/camera_02
./train/balanced/TV/camera_00
./train/balanced/TV/camera_02
./train/balanced/Vodka
./train/balanced/Vodka/camera_00
./train/balanced/Vodka/camera_02
./train/balanced/Washer
./train/balanced/Washer/camera_00
./train/balanced/Washer/camera_02
./train/unbalanced
./train/unbalanced/Bathroom
./train/unbalanced/Bathroom/camera_00
./train/unbalanced/Bathroom/camera_01
./train/unbalanced/Bedroom
./train/unbalanced/Bedroom/camera_00
./train/unbalanced/Bedroom/camera_01
./train/unbalanced/Bottle
./train/unbalanced/Bottle1
./train/unbalanced/Bottle1/camera_00
./train/unbalanced/Bottle1/camera_01
./train/unbalanced/Bottle/camera_00
./train/unbalanced/Bottle/camera_01
./train/unbalanced/BottledWater
./train/unbalanced/BottledWater/camera_00
./train/unbalanced/BottledWater/camera_01
./train/unbalanced/Bottles1
./train/unbalanced/Bottles1/camera_00
./train/unbalanced/Bottles1/camera_01
./train/unbalanced/Bucket
./train/unbalanced/Bucket/camera_00
./train/unbalanced/Bucket/camera_01
./train/unbalanced/Canteen
./train/unbalanced/Canteen/camera_00
./train/unbalanced/Canteen/camera_01
./train/unbalanced/Case
./train/unbalanced/Case/camera_00
./train/unbalanced/Case/camera_01
./train/unbalanced/CashBox
./train/unbalanced/CashBox/camera_00
./train/unbalanced/CashBox/camera_01
./train/unbalanced/CoffeeMaker
./train/unbalanced/CoffeeMaker/camera_00
./train/unbalanced/CoffeeMaker/camera_01
./train/unbalanced/Cooker1
./train/unbalanced/Cooker1/camera_00
./train/unbalanced/Cooker1/camera_01
./train/unbalanced/Cosmetics
./train/unbalanced/Cosmetics/camera_00
./train/unbalanced/Cosmetics/camera_01
./train/unbalanced/DogHouse
./train/unbalanced/DogHouse/camera_00
./train/unbalanced/DogHouse/camera_01
./train/unbalanced/Door
./train/unbalanced/Door/camera_00
./train/unbalanced/Door/camera_01
./train/unbalanced/ExtractorFan
./train/unbalanced/ExtractorFan/camera_00
./train/unbalanced/ExtractorFan/camera_01
./train/unbalanced/Fridge
./train/unbalanced/Fridge/camera_00
./train/unbalanced/Fridge/camera_01
./train/unbalanced/Lunch
./train/unbalanced/Lunch/camera_00
./train/unbalanced/Lunch/camera_01
./train/unbalanced/Microwave
./train/unbalanced/Microwave/camera_00
./train/unbalanced/Microwave/camera_01
./train/unbalanced/Mirror
./train/unbalanced/Mirror/camera_00
./train/unbalanced/Mirror/camera_01
./train/unbalanced/Moka
./train/unbalanced/Moka1
./train/unbalanced/Moka1/camera_00
./train/unbalanced/Moka1/camera_01
./train/unbalanced/Moka/camera_00
./train/unbalanced/Moka/camera_01
./train/unbalanced/Motorcycle
./train/unbalanced/Motorcycle/camera_00
./train/unbalanced/Motorcycle/camera_01
./train/unbalanced/Mouthwash
./train/unbalanced/Mouthwash/camera_00
./train/unbalanced/Mouthwash/camera_01
./train/unbalanced/OilCan
./train/unbalanced/OilCan/camera_00
./train/unbalanced/OilCan/camera_01
./train/unbalanced/Oven1
./train/unbalanced/Oven1/camera_00
./train/unbalanced/Oven1/camera_01
./train/unbalanced/Oven2
./train/unbalanced/Oven2/camera_00
./train/unbalanced/Oven2/camera_01
./train/unbalanced/Pots1
./train/unbalanced/Pots1/camera_00
./train/unbalanced/Pots1/camera_01
./train/unbalanced/Shower
./train/unbalanced/Shower/camera_00
./train/unbalanced/Shower/camera_01
./train/unbalanced/Sink
./train/unbalanced/Sink/camera_00
./train/unbalanced/Sink/camera_01
./train/unbalanced/SoapDishes
./train/unbalanced/SoapDishes/camera_00
./train/unbalanced/SoapDishes/camera_01
./train/unbalanced/Tablet
./train/unbalanced/Tablet/camera_00
./train/unbalanced/Tablet/camera_01
./train/unbalanced/Toilet
./train/unbalanced/Toilet/camera_00
./train/unbalanced/Toilet/camera_01
./train/unbalanced/TV
./train/unbalanced/TV1
./train/unbalanced/TV1/camera_00
./train/unbalanced/TV1/camera_01
./train/unbalanced/TV2
./train/unbalanced/TV2/camera_00
./train/unbalanced/TV2/camera_01
./train/unbalanced/TV/camera_00
./train/unbalanced/TV/camera_01
./train/unbalanced/Vodka
./train/unbalanced/Vodka/camera_00
./train/unbalanced/Vodka/camera_01
./train/unbalanced/Washer
./train/unbalanced/Washer/camera_00
./train/unbalanced/Washer/camera_01


## データの１例
du -a train/balanced/Bottle
9208	train/balanced/Bottle/camera_00/im0.png
8200	train/balanced/Bottle/camera_00/im1.png
17412	train/balanced/Bottle/camera_00
48320	train/balanced/Bottle/disp_00.npy
68	train/balanced/Bottle/mask_cat_col.png
52	train/balanced/Bottle/mask_02.png
44	train/balanced/Bottle/mask_00.png
48320	train/balanced/Bottle/disp_02.npy
9176	train/balanced/Bottle/camera_02/im0.png
8224	train/balanced/Bottle/camera_02/im1.png
17404	train/balanced/Bottle/camera_02
4	train/balanced/Bottle/calib_00-02.xml
44	train/balanced/Bottle/mask_cat.png
131672	train/balanced/Bottle

```


- 最初から disp_00.npy 視差のデータが含まれていることに注意

### Q: データセットに含まれている視差データは、どうやって計算しているのか
## Depth4ToMの中で利用状況
scripts/table2.sh
scripts/table3.sh
で利用している。


