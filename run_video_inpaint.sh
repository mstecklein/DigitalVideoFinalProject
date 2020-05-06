# Flamingo
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/flamingo/frames --MASK_ROOT ./demo/flamingo/masks --img_size 448 896 --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/my_retrained_models/stage1/DFI_6999.pth --PRETRAINED_MODEL_2 ./pretrained_models/my_retrained_models/stage2/DFI_7799.pth --PRETRAINED_MODEL_3 ./pretrained_models/my_retrained_models/stage3/DFI_7199.pth --MS --th_warp 3 --DATA_ROOT ./demo/flamingo/Flow --flow_root ./demo/flamingo/Flow_res/stage3_res # no FlowNet2, no DFC, my retrained model
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/flamingo/frames --MASK_ROOT ./demo/flamingo/masks --img_size 448 896 --DFC --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/my_retrained_models/stage1/DFI_6999.pth --PRETRAINED_MODEL_2 ./pretrained_models/my_retrained_models/stage2/DFI_7799.pth --PRETRAINED_MODEL_3 ./pretrained_models/my_retrained_models/stage3/DFI_7199.pth --MS --th_warp 3 --DATA_ROOT ./demo/flamingo/Flow # no FlowNet2, my retrained model
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/flamingo/frames --MASK_ROOT ./demo/flamingo/masks --img_size 448 896 --DFC --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/resnet50_stage1.pth --PRETRAINED_MODEL_2 ./pretrained_models/DAVIS_model/davis_stage2.pth --PRETRAINED_MODEL_3 ./pretrained_models/DAVIS_model/davis_stage3.pth --MS --th_warp 3 --DATA_ROOT ./demo/flamingo/Flow # no FlowNet2
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/flamingo/frames --MASK_ROOT ./demo/flamingo/masks --img_size 448 896 --DFC --FlowNet2 --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/resnet50_stage1.pth --PRETRAINED_MODEL_2 ./pretrained_models/DAVIS_model/davis_stage2.pth --PRETRAINED_MODEL_3 ./pretrained_models/DAVIS_model/davis_stage3.pth --MS --th_warp 3
echo ""
echo ""
echo ""
echo ""
echo "--------------------------- Done with Flamingo ---------------------------"
echo ""
echo ""
echo ""
echo ""



# Short Flamingo
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/short_flamingo/frames --MASK_ROOT ./demo/short_flamingo/masks --img_size 448 896 --DFC --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/my_retrained_models/stage1/DFI_6999.pth --PRETRAINED_MODEL_2 ./pretrained_models/DAVIS_model/davis_stage2.pth --PRETRAINED_MODEL_3 ./pretrained_models/DAVIS_model/davis_stage3.pth --MS --th_warp 3 --DATA_ROOT ./demo/short_flamingo/Flow # no FlowNet2, my retrained model
CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/short_flamingo/frames --MASK_ROOT ./demo/short_flamingo/masks --img_size 448 896 --DFC --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/resnet50_stage1.pth --PRETRAINED_MODEL_2 ./pretrained_models/DAVIS_model/davis_stage2.pth --PRETRAINED_MODEL_3 ./pretrained_models/DAVIS_model/davis_stage3.pth --MS --th_warp 3 --DATA_ROOT ./demo/short_flamingo/Flow # no FlowNet2
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/short_flamingo/frames --MASK_ROOT ./demo/short_flamingo/masks --img_size 448 896 --DFC --FlowNet2 --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/resnet50_stage1.pth --PRETRAINED_MODEL_2 ./pretrained_models/DAVIS_model/davis_stage2.pth --PRETRAINED_MODEL_3 ./pretrained_models/DAVIS_model/davis_stage3.pth --MS --th_warp 3




# Lady Running
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/lady-running/frames --MASK_ROOT ./demo/lady-running/mask_bbox.png --img_size 448 896 --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/my_retrained_models/stage1/DFI_6999.pth --PRETRAINED_MODEL_2 ./pretrained_models/my_retrained_models/stage2/DFI_7799.pth --PRETRAINED_MODEL_3 ./pretrained_models/my_retrained_models/stage3/DFI_7199.pth --MS --th_warp 3 --FIX_MASK --DATA_ROOT ./demo/lady-running/Flow --flow_root ./demo/lady-running/Flow_res/stage3_res # no FlowNet2, no DFC, my retrained model
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/lady-running/frames --MASK_ROOT ./demo/lady-running/mask_bbox.png --img_size 448 896 --DFC --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/my_retrained_models/stage1/DFI_6999.pth --PRETRAINED_MODEL_2 ./pretrained_models/my_retrained_models/stage2/DFI_7799.pth --PRETRAINED_MODEL_3 ./pretrained_models/my_retrained_models/stage3/DFI_7199.pth --MS --th_warp 3 --FIX_MASK --DATA_ROOT ./demo/lady-running/Flow # no FlowNet2, my retrained model
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/lady-running/frames --MASK_ROOT ./demo/lady-running/mask_bbox.png --img_size 448 896 --DFC --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/resnet50_stage1.pth --PRETRAINED_MODEL_2 ./pretrained_models/DAVIS_model/davis_stage2.pth --PRETRAINED_MODEL_3 ./pretrained_models/DAVIS_model/davis_stage3.pth --MS --th_warp 3 --FIX_MASK --DATA_ROOT ./demo/lady-running/Flow # no FlowNet2
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/lady-running/frames --MASK_ROOT ./demo/lady-running/mask_bbox.png --img_size 448 896 --DFC --FlowNet2 --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/resnet50_stage1.pth --PRETRAINED_MODEL_2 ./pretrained_models/DAVIS_model/davis_stage2.pth --PRETRAINED_MODEL_3 ./pretrained_models/DAVIS_model/davis_stage3.pth --MS --th_warp 3 --FIX_MASK
echo ""
echo ""
echo ""
echo ""
echo "--------------------------- Done with Lady ---------------------------"
echo ""
echo ""
echo ""
echo ""




# Spider-man
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/spider-man/1/frames --MASK_ROOT ./demo/spider-man/1/masks --img_size 448 896 --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/my_retrained_models/stage1/DFI_6999.pth --PRETRAINED_MODEL_2 ./pretrained_models/my_retrained_models/stage2/DFI_7799.pth --PRETRAINED_MODEL_3 ./pretrained_models/my_retrained_models/stage3/DFI_7199.pth --MS --th_warp 3 --DATA_ROOT ./demo/spider-man/1/Flow --flow_root ./demo/lady-running/Flow_res/stage3_res # no FlowNet2, no DFC, my retrained model
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/spider-man/1/frames --MASK_ROOT ./demo/spider-man/1/masks --img_size 448 896 --DFC --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/my_retrained_models/stage1/DFI_6999.pth --PRETRAINED_MODEL_2 ./pretrained_models/my_retrained_models/stage2/DFI_7799.pth --PRETRAINED_MODEL_3 ./pretrained_models/my_retrained_models/stage3/DFI_7199.pth --MS --th_warp 3 --DATA_ROOT ./demo/spider-man/1/Flow # no FlowNet2, my retrained model
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/spider-man/1/frames --MASK_ROOT ./demo/spider-man/1/masks --img_size 448 896 --DFC --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/resnet50_stage1.pth --PRETRAINED_MODEL_2 ./pretrained_models/DAVIS_model/davis_stage2.pth --PRETRAINED_MODEL_3 ./pretrained_models/DAVIS_model/davis_stage3.pth --MS --th_warp 3 --DATA_ROOT ./demo/spider-man/1/Flow # no FlowNet2
#CUDA_VISIBLE_DEVICES=0 python tools/video_inpaint.py --frame_dir ./demo/spider-man/1/frames --MASK_ROOT ./demo/spider-man/1/masks --img_size 448 896 --DFC --FlowNet2 --Propagation --PRETRAINED_MODEL_1 ./pretrained_models/resnet50_stage1.pth --PRETRAINED_MODEL_2 ./pretrained_models/DAVIS_model/davis_stage2.pth --PRETRAINED_MODEL_3 ./pretrained_models/DAVIS_model/davis_stage3.pth --MS --th_warp 3
