# Depth4ToM-docker
docker environment for  Depth4ToM

## 目的
- 透明物体や反射する物体に対するdepthの計算を改善すること

## original repogitory
https://github.com/CVLAB-Unibo/Depth4ToM-code

## pretrained model

[Pretrained Models] (https://github.com/CVLAB-Unibo/Depth4ToM-code?tab=readme-ov-file#inbox_tray-pretrained-models)

Note weights.zip is 9GB

move downloaded weights.zip to weights/ folder.

## datasets
以下の記述にしたがってデータセットをダウンロードする。
以下の2通りのデータセットがある。
["Trans10K", "MSD"]

https://github.com/CVLAB-Unibo/Depth4ToM-code?tab=readme-ov-file#arrow_down-get-your-hands-on-the-data

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

1.9G	MSD/train/midas_v21_proxies
2.8G	MSD/train/dpt_large_proxies
125M	MSD/train/images
13M	MSD/train/masks
4.9G	MSD/train
3.9M	MSD/test/masks_proxy
601M	MSD/test/midas_v21_proxies
890M	MSD/test/dpt_large_proxies
37M	MSD/test/images
3.8M	MSD/test/masks
1.5G	MSD/test
6.4G	MSD

44M	Trans10K/test/masks_proxy
2.6G	Trans10K/test/dpt_large_proxies
467M	Trans10K/test/images
3.1G	Trans10K/test
3.1G	Trans10K/


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


## 一括処理
scripts/generate_virtual_depth.sh

対象とするデータ・セットに対して、virtual depthを算出するスクリプト

実行させる前に、スクリプトを読むと良い。
```
root="path_to_dataset_root"
```
という記述があるので、ダウンロードしたデータに合わせて書き直すこと。

このなかでrun.pyが呼び出されているので、run.pyの使い方が分かる。

gen_virtual_depth.sh
docker環境用に修正した上記のscript
```
cd scripts
bash gen_virtual_depth.sh
```
として実行する。


## TODO
- weights/ ディレクトリをmount するようにして、一度weights.zip をダウンロードし, unzip したら、それが維持できるようにすること。
- 適切に動作したら、TensorRT で変換したモデルを使うようにすること。
- USB カメラとしてleft, right の画像を得て動作させること。
- ZED SDK のカメラとして読み込んだ画像からこのモデルでdepth計算をさせること

