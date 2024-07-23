# Depth4ToM-docker
docker environment for  Depth4ToM

## 目的
- 透明物体や反射する物体に対するdepthの計算を改善すること

## original repository
https://github.com/CVLAB-Unibo/Depth4ToM-code

## pretrained model

[Pretrained Models] (https://github.com/CVLAB-Unibo/Depth4ToM-code?tab=readme-ov-file#inbox_tray-pretrained-models)

Note weights.zip is 9GB

move downloaded weights.zip to weights/ folder.
#### weights
```
du weights
2571052	weights/Table 3/Ft. Virtual Depth (Proxy)
2571052	weights/Table 3/Ft. Virtual Depth (GT)
5142108	weights/Table 3
1756740	weights/Base
1756732	weights/Table 2/Ft. Base
1756728	weights/Table 2/Ft. Virtual Depth
3513464	weights/Table 2
10412316	weights
```

-rw-rw-r-- 1 1000 1000 1376378527 Oct  1  2023 weights/Base/dpt_large-base.pt
-rw-rw-r-- 1 1000 1000  422509849 Oct  1  2023 weights/Base/midas_v21-base.pt

# なぜモデルファイルが２とおりあるのか
model="dpt_large" # ["midas_v21", "dpt_large"]

```commandline

du -a weights/
9603304	weights/weights.zip
4	weights/place_weight_files_here.txt
1344124	weights/Table 3/Ft. Virtual Depth (Proxy)/dpt_large_final.pt
1226924	weights/Table 3/Ft. Virtual Depth (Proxy)/midas_v21_final.pt
2571052	weights/Table 3/Ft. Virtual Depth (Proxy)
1344124	weights/Table 3/Ft. Virtual Depth (GT)/dpt_large_final.pt
1226924	weights/Table 3/Ft. Virtual Depth (GT)/midas_v21_final.pt
2571052	weights/Table 3/Ft. Virtual Depth (GT)
5142108	weights/Table 3
1344124	weights/Base/dpt_large-base.pt
412612	weights/Base/midas_v21-base.pt
1756740	weights/Base
4	weights/weights
1344124	weights/Table 2/Ft. Base/dpt_large_final.pt
412604	weights/Table 2/Ft. Base/midas_v21_final.pt
1756732	weights/Table 2/Ft. Base
1344124	weights/Table 2/Ft. Virtual Depth/dpt_large_final.pt
412600	weights/Table 2/Ft. Virtual Depth/midas_v21_final.pt
1756728	weights/Table 2/Ft. Virtual Depth
3513464	weights/Table 2
20015628	weights/
```

gen_virtual_depth.sh ではスクリプトを書き換えることで、両方を実行できるようになっている。
scripts/table2.sh, scripts/table3.shでは、両方のモデルに対して実行している。



## datasets
以下の記述にしたがってデータセットをダウンロードする。
以下の2通りのデータセットがある。
["Trans10K", "MSD"]
https://github.com/CVLAB-Unibo/Depth4ToM-code?tab=readme-ov-file#arrow_down-get-your-hands-on-the-data

#### what is datasetst_txt
```
 head datasets/booster/train_stereo.txt 
Bathroom/camera_00/im0.png Bathroom/disp_00.npy Bathroom/calib_00-02.xml
Bathroom/camera_00/im1.png Bathroom/disp_00.npy Bathroom/calib_00-02.xml
Bathroom/camera_00/im2.png Bathroom/disp_00.npy Bathroom/calib_00-02.xml
Bedroom/camera_00/im0.png Bedroom/disp_00.npy Bedroom/calib_00-02.xml
Bedroom/camera_00/im1.png Bedroom/disp_00.npy Bedroom/calib_00-02.xml
Bedroom/camera_00/im2.png Bedroom/disp_00.npy Bedroom/calib_00-02.xml
Bottle/camera_00/im0.png Bottle/disp_00.npy Bottle/calib_00-02.xml
Bottle/camera_00/im1.png Bottle/disp_00.npy Bottle/calib_00-02.xml
Bottle1/camera_00/im0.png Bottle1/disp_00.npy Bottle1/calib_00-02.xml
Bottle1/camera_00/im1.png Bottle1/disp_00.npy Bottle1/calib_00-02.xml
```

#### downloaded datasets
tom_training_datasets.zip
[tom_training_datasets について](tom_training_datasets.md)
#### 別のデータ・セット　boost_gt.zip のダウンロード
[booster_gt.zip について](booster.md)

# Docker
```
bash docker_build.sh
bash docker_run.sh

bash reinstall-opencv.sh
```

## usage

```
# python3 run.py -h
usage: run.py [-h] [-i INPUT_PATH] [--dataset_txt DATASET_TXT] [--mask_path MASK_PATH] [--cls2mask CLS2MASK [CLS2MASK ...]] [--it IT] [-o OUTPUT_PATH] [--output_list OUTPUT_LIST]
              [--save_full_res] [-m MODEL_WEIGHTS] [-t MODEL_TYPE]

optional arguments:
  -h, --help            show this help message and exit
  -i INPUT_PATH, --input_path INPUT_PATH
                        folder with images
  --dataset_txt DATASET_TXT
                        dataset txt file
  --mask_path MASK_PATH
                        folder with mask images
  --cls2mask CLS2MASK [CLS2MASK ...]
                        classes to mask
  --it IT               number of iteration to run midas
  -o OUTPUT_PATH, --output_path OUTPUT_PATH
                        folder for output images
  --output_list OUTPUT_LIST
                        output list of generated depths as txt file
  --save_full_res       save original resolution
  -m MODEL_WEIGHTS, --model_weights MODEL_WEIGHTS
                        path to the trained weights of model
  -t MODEL_TYPE, --model_type MODEL_TYPE
                        model type: dpt_large, midas_v21
                        
```


```
# python3 create_proxy_stereo.py -h
usage: create_proxy_stereo.py [-h] [--mono_root MONO_ROOT] [--stereo_root STEREO_ROOT] [--stereo_ext STEREO_EXT] [--scale_factor_16bit_stereo SCALE_FACTOR_16BIT_STEREO]
                              [--mask_root MASK_ROOT] [--output_root OUTPUT_ROOT] [--debug]

optional arguments:
  -h, --help            show this help message and exit
  --mono_root MONO_ROOT
                        folder with mono predictions
  --stereo_root STEREO_ROOT
                        folder with stereo predictions
  --stereo_ext STEREO_EXT
                        stereo extension.
  --scale_factor_16bit_stereo SCALE_FACTOR_16BIT_STEREO
                        16bit scale factor used during saving
  --mask_root MASK_ROOT
                        folder with semantic masks
  --output_root OUTPUT_ROOT
                        folder with semantic masks
  --debug
```


```
# python3 finetune.py -h           
usage: finetune.py [-h] [--exp_name EXP_NAME] [--training_datasets TRAINING_DATASETS [TRAINING_DATASETS ...]]
                   [--training_datasets_dir TRAINING_DATASETS_DIR [TRAINING_DATASETS_DIR ...]] [--training_datasets_txt TRAINING_DATASETS_TXT [TRAINING_DATASETS_TXT ...]]
                   [-o OUTPUT_PATH] [-m MODEL_PATH] [-t MODEL_TYPE] [-e EPOCHS] [-bs BATCH_SIZE] [--continue_train] [--step_save STEP_SAVE] [--step_log STEP_LOG]
                   [--step_log_images STEP_LOG_IMAGES]

optional arguments:
  -h, --help            show this help message and exit
  --exp_name EXP_NAME
  --training_datasets TRAINING_DATASETS [TRAINING_DATASETS ...]
                        training datasets
  --training_datasets_dir TRAINING_DATASETS_DIR [TRAINING_DATASETS_DIR ...]
                        list of files for each training dataset
  --training_datasets_txt TRAINING_DATASETS_TXT [TRAINING_DATASETS_TXT ...]
                        list of files for each training dataset
  -o OUTPUT_PATH, --output_path OUTPUT_PATH
                        where to save the model
  -m MODEL_PATH, --model_path MODEL_PATH
                        path to the trained weights of model
  -t MODEL_TYPE, --model_type MODEL_TYPE
                        model type: dpt_large, midas_v21
  -e EPOCHS, --epochs EPOCHS
                        number of epochs
  -bs BATCH_SIZE, --batch_size BATCH_SIZE
                        batch_size
  --continue_train      load optimizer and scheduler state dict
  --step_save STEP_SAVE
                        number of steps to save the model
  --step_log STEP_LOG   number of steps to save the model
  --step_log_images STEP_LOG_IMAGES
                        number of steps to save the model

```

## 一括処理
scripts/generate_virtual_depth.sh
対象とするデータ・セットに対して、virtual depthを算出するスクリプト
Monocular Virtual Depth Generation
単眼のdepth 計算なので、まだほしいものにはなっていない。

- スクリプトの修正
    ```
    root="path_to_dataset_root"
    ```
    という記述があるので、ダウンロードしたデータに合わせて書き直すこと。
    (このなかでrun.pyが呼び出されているので、run.pyの使い方が分かる。
- 修正後の実行
```
cd scripts
bash gen_virtual_depth.sh
```

# Q　--mask_path を指定しないとどうなるのか？

推測を行う前に、どこが透明もしくは反射物体であるかを知っているなんて仮定しているのだろうか？

# Q　
ステレオネットワークを微調整するために、我々のマージ戦略でプロキシ深度マップを生成するには、create_proxy_stereo.pyを使用することができます。 上記で説明したように、我々はステレオネットワークを微調整するためのコードを公開しません。 しかし、我々の実装はRAFT-StereoとCREStereoの公式コードに基づいています。

DeepL.com で見る


# https://github.com/CVLAB-Unibo/Depth4ToM-code にあるコードについて

loss.py モジュール


# Q ：　ある領域が透明物体がある領域だという情報をどうやって取得するのだろう？
- この実装ではどうやっているのだろうか？
- 拡散反射モデルで説明がつかない領域であることをどうやったら知ることができるのだろう。

## scripts/table2.sh scripts/table3.sh の実行手順
- scripts/table2.sh の冒頭のdataset_rootを変更すること
```commandline
### Change this path ###
dataset_root="/media/data2/Booster/train/balanced"

```

- bash table2.sh を実行する。

```commandline
root@orin:~/Depth4ToM-code/scripts# bash table2.sh
Namespace(cls2mask=[1], dataset_txt='datasets/booster/train_stereo.txt', input_path='/root/Depth4ToM-code/data/booster/train/balanced', it=1, mask_path='', model_type='midas_v21', model_weights='weights/Base/midas_v21-base.pt', output_list='', output_path='results/Base/midas_v21', save_full_res=False)
initialize
device: cuda
Loading weights:  None
Using cache found in /root/.cache/torch/hub/facebookresearch_WSL-Images_main
start processing
  processing /root/Depth4ToM-code/data/booster/train/balanced/Bathroom/camera_00/im0.png (1/228)
  processing /root/Depth4ToM-code/data/booster/train/balanced/Bathroom/camera_00/im1.png (2/228)
  processing /root/Depth4ToM-code/data/booster/train/balanced/Bathroom/camera_00/im2.png (3/228)
  processing /root/Depth4ToM-code/data/booster/train/balanced/Bedroom/camera_00/im0.png (4/228)
  processing /root/Depth4ToM-code/data/booster/train/balanced/Bedroom/camera_00/im1.png (5/228)
  processing /root/Depth4ToM-code/data/booster/train/balanced/Bedroom/camera_00/im2.png (6/228)
  processing /root/Depth4ToM-code/data/booster/train/balanced/Bottle/camera_00/im0.png (7/228)
  processing /root/Depth4ToM-code/data/booster/train/balanced/Bottle/camera_00/im1.png (8/228)
  processing /root/Depth4ToM-code/data/booster/train/balanced/Bottle1/camera_00/im0.png (9/228)

  processing /root/Depth4ToM-code/data/booster/train/balanced/Washer/camera_00/im6.png (228/228)
finished
Number of samples 228
evaluate_mono.py:66: RuntimeWarning: divide by zero encountered in divide
  gt = baseline * fx / gt
CLASS       delta1.25   delta1.20   delta1.15   delta1.10   delta1.05   mae         absrel      rmse        
All         94.55       91.71       85.66       74.00       50.12       90.83       0.07        120.53      
ToM         87.42       83.36       72.62       59.63       36.30       122.39      0.12        140.39      
Other       94.57       91.80       85.99       74.01       50.28       91.08       0.07        119.86 
```


tables3.sh も同様に編集する。

bash table3.sh で実行できる。


## TODO
- 適切に動作したら、TensorRT で変換したモデルを使うようにすること。
- USB カメラとしてleft, right の画像を得て動作させること。
- ZED SDK のカメラとして読み込んだ画像からこのモデルでdepth計算をさせること
