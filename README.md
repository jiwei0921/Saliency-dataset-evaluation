# Saliency-dataset-evaluation
This repo can compute the ratio of **obj.area** and **obj.contrast** on binary saliency dataset. This Toolbox contains two evaluation metrics, including obj(object).area and obj.contrast.    

Note: 
* obj.area: the mean ratio of foreground into masks on dataset.   
* obj.contrast: the mean value of color contrast for all RGB image.     

## Citation
```
@article{Saliency-dataset-evaluation,
    Author = {Wei Ji},
    Title = {Evaluation Toolbox for Salient Detection Dataset.},
    Journal = {https://github.com/jiwei0921/Saliency-dataset-evaluation/},
    Year = {2019}
}
```

## Requirement 
* MATLAB

## Compute obj.area or obj.contrast
1. Set the path of dataset in (comput_fore_area_ratio) / contrast_value.m
2. run .m file

Note: there are two methods to compute obj.contrast. (4-near neighbor and 8-near neighbor) 

## Saliency maps evaluation
This link near all evaluation metrics for salient object detection including E-measure, S-measure, F-measure, MAE scores and PR curves or bar metrics.
The link is [here](https://github.com/jiwei0921/Saliency-Evaluation-Toolbox).

## Related Citation
```
@article{Saliency-Evaluation-Toolbox,
    Author = {Wei Ji},
    Title = {Evaluation Toolbox for Salient Object Detection.},
    Journal = {https://github.com/jiwei0921/Saliency-Evaluation-Toolbox/},
    Year = {2019}
}
```
