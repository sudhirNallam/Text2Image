
ID=1
GPU=3
NC=4
CLS=0.5
INT=1.0
NGF=128
NDF=64
# flowers related data
FLOWERS_IMG_DIR=/mnt/data/oxford102
FLOWERS_META_DIR=/mnt/data/flowers_icml
FLOWERS_NET_TXT=/mnt/data/lm_sje_flowers_c10_hybrid_0.00070_1_10_trainvalids.txt_iter16400.t7
CHECKPOINT_DIR=/mnt/checkpoints


display_id=10${ID} \
gpu=${ID} \
dataset="flowers" \
name="flowers_v2_nc${NC}_cls${CLS}_int${INT}_ngf${NGF}_ndf${NDF}" \
cls_weight=${CLS} \
interp_weight=${INT} \
interp_type=1 \
niter=1 \
nz=100 \
lr_decay=0.5 \
decay_every=100 \
img_dir=${FLOWERS_IMG_DIR} \
data_root=${FLOWERS_META_DIR} \
classnames=${FLOWERS_META_DIR}/allclasses.txt \
trainids=${FLOWERS_META_DIR}/trainvalids.txt \
init_t=${FLOWERS_NET_TXT} \
nThreads=6 \
checkpoint_dir=${CHECKPOINT_DIR} \
numCaption=${NC} \
print_every=4 \
save_every=1 \
replicate=0 \
use_cudnn=1 \
ngf=${NGF} \
ndf=${NDF} \
th main_cls_int.lua

