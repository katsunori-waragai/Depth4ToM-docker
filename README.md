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

## 一括処理
scripts/generate_virtual_depth.sh

対象とするデータ・セットに対して、virtual depthを算出するスクリプト

実行させる前に、スクリプトを読むと良い。
```
root="path_to_dataset_root"
```
という記述があるので、ダウンロードしたデータに合わせて書き直すこと。

このなかでrun.pyが呼び出されているので、run.pyの使い方が分かる。


## TODO
- weights/ ディレクトリをmount するようにして、一度weights.zip をダウンロードし, unzip したら、それが維持できるようにすること。
- 適切に動作したら、TensorRT で変換したモデルを使うようにすること。
- USB カメラとしてleft, right の画像を得て動作させること。
- ZED SDK のカメラとして読み込んだ画像からこのモデルでdepth計算をさせること

