# Synthetic Image Detection
**Are GAN generated images easy to detect? A critical analysis of the state-of-the-art**
<br />Diego Gragnaniello, Davide Cozzolino, Francesco Marra, Giovanni Poggi and Luisa Verdoliva.
<br />In IEEE International Conference on Multimedia and Expo (ICME), 2021.
<br />https://github.com/grip-unina/GANimageDetection

<hr />

## Stylegan2

### FFHQ
||ROC-AUC|Accuracy|Precision|Recall|
|---|:---:|:---:|:---:|:---:|
|stylegan2-config-f-psi-0.5|1.0|1.0|1.0|1.0|
|stylegan2-config-f-psi-1.0|1.0|1.0|1.0|1.0|

![image](./evaluation_results/stylegan2-ffhq.png)
### Car
### Cat
### Church
### Horse

## Stylegan3
Testing Data Fake (generated using [code](./images_generation/generate_stylegan3.sh), [docs](https://github.com/NVlabs/stylegan3)):
- FFHQ-U, config-t      (5k images)
- FFHQ-U, config-r      (5k images)
- AFHQv2, config-t      (5k images)
- AFHQv2, config-r      (5k images)
- Metfaces-U, config-t  (2k images)
- Metfaces-U, config-r  (2k images)

Testing Data Real (follewed this guide [https://github.com/NVlabs/stylegan3-detector](https://github.com/NVlabs/stylegan3-detector)): 
- FFHQ last 5K images
- AFHQv2 "test" folder (1467 images)
- Metfaces last 336 images

### FFHQ
||ROC-AUC|Accuracy|Precision|Recall|
|---|:---:|:---:|:---:|:---:|
|stylegan3-r-ffhqu-1024x1024|0.99831276|0.5004|1.0|0.0008|
|stylegan3-t-ffhqu-1024x1024|0.9999528799999999|0.611|1.0|0.222|

![image](./evaluation_results/stylegan3-ffhq.png)

### AFHQ_v2
||ROC-AUC|Accuracy|Precision|Recall|
|---|:---:|:---:|:---:|:---:|
|stylegan3-r-afhqv2-512x512|0.9956733469665984|0.4461110252048863|1.0|0.2836|
|stylegan3-t-afhqv2-512x512|0.9997738241308793|0.8427400649451059|1.0|0.7966|

![image](./evaluation_results/stylegan3-afhq_v2.png)

### Metfaces
||ROC-AUC|Accuracy|Precision|Recall|
|---|:---:|:---:|:---:|:---:|
|stylegan3-r-metfacesu-1024x1024|0.9560014880952381|0.2688356164383562|1.0|0.146|
|stylegan3-t-metfacesu-1024x1024|0.9958303571428572|0.8167808219178082|1.0|0.786|

![image](./evaluation_results/stylegan3-metfaces.png)

### All
||ROC-AUC|Accuracy|Precision|Recall|
|---|:---:|:---:|:---:|:---:|
|stylegan3-all-categories|0.9968246055661718|0.5846141573153221|1.0|0.349125|

![image](./evaluation_results/stylegan3-all.png)

## Gated Convolution Inpainting
- Fake images: grip-unina vipcup2022/gated_convolution_inpainting (2k images)
- Real images: coco dataset 2017 Test: http://images.cocodataset.org/zips/test2017.zip (2k images)

||ROC-AUC|Accuracy|Precision|Recall|
|---|:---:|:---:|:---:|:---:|
|gated_convolution_inpainting|0.56784725|0.52125|1.0|0.0425|

![image](./evaluation_results/gated_convolution_inpainting.png)

## GLIDE: Inpaiting and Image Generation
- Fake images: grip-unina vipcup2022/glide
    - inpainting (1k images)
    - text2img (1k images)
- Real images: coco dataset 2017 Test: http://images.cocodataset.org/zips/test2017.zip (1k images)

||ROC-AUC|Accuracy|Precision|Recall|
|---|:---:|:---:|:---:|:---:|
|inpainting|0.416831|0.5|0.0|0.0|
|text2img|0.684971|0.515|1.0|0.03|

![image](./evaluation_results/glide.png)

## Taming Transformers
Fake datasets: https://k00.fr/j626x093
- ffhq_k300_p1.0_fid9.6 (5k fake vs 5k real)
- celebahq_k400_p1.0_fid10.2 (5k fake vs 4804 real)
- cin_k* (10k fake vs 10k real)

||ROC-AUC|Accuracy|Precision|Recall|
|---|:---:|:---:|:---:|:---:|
|ffhq_k300_p1.0_fid9.6|0.9997090000000001|0.685|1.0|0.37|
|celebahq_k400_p1.0_fid10.2|0.9691025603663613|0.6730926152590779|1.0|0.359|
|cin_k250_p1.0_a1.0_fid15.98|0.9433610050000001|0.659|0.9953271028037384|0.3195|
|cin_k600_p1.0_a0.05_fid5.20|0.9519528099999999|0.66195|0.9963224026969046|0.3251|
|cin_k973_p0.88_a1.0_fid15.78|0.9388840150000001|0.65005|0.993747943402435|0.302|
|cin_kmixed_p1.0_a0.005_fid6.59|0.9447756|0.661|0.9963008631319359|0.3232|
|cin_kmixed_p1.0_a0.05_fid5.88|0.9484341250000001|0.6617|0.9975384615384615|0.3242|

![image](./evaluation_results/taming-transformers.png)
