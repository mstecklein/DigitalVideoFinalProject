import os, glob
import cv2
import numpy as np
import torch
from tools.frame_inpaint import DeepFillv1



pretrained_model = './pretrained_models/imagenet_deepfill.pth'
image_shape = [448, 896]
res_shape = None


scenes_paths = {
#"flamingo" : ("demo/flamingo/frames", "demo/flamingo/masks",  "demo/flamingo/frames_inpainted"),
"lady_running" : ("demo/lady-running/frames", "demo/lady-running/mask_bbox.png",  "demo/lady-running/frames_inpainted")#,
#"spiderman" : ("demo/spider-man/1/frames", "demo/spider-man/1/masks",  "demo/spider-man/1/frames_inpainted"),
}






deepfill = DeepFillv1(pretrained_model=pretrained_model,
                      image_shape=image_shape,
                      res_shape=res_shape)

for scene in scenes_paths.keys():
    print(scene,"-------------------------------------")
    frames_dir, masks_dir, out_dir = scenes_paths[scene]
    is_fixed_mask = os.path.isfile(masks_dir)
    fixed_mask = masks_dir
    
    for frame_path in sorted(glob.glob(os.path.join(frames_dir, "*"))):
        frame_name = os.path.split(frame_path)[-1].split(".")[-2]
        ext = os.path.split(frame_path)[-1].split(".")[-1]
        if is_fixed_mask:
            mask_path = fixed_mask
        else:
            mask_path = os.path.join(masks_dir, frame_name+".png")
        
        print("Frame path:", frame_path)
        print("Mask path:", mask_path)
        frame = cv2.imread(frame_path)
        mask = cv2.imread(mask_path, cv2.IMREAD_UNCHANGED)
        with torch.no_grad():
            frame_res = deepfill.forward(frame, mask)
        
        if not os.path.exists(out_dir):
            os.makedirs(out_dir)
        out_path = os.path.join(out_dir, frame_name+"."+ext)
        print("Writing to", out_path)
        cv2.imwrite(out_path, frame_res)

print("Done")
