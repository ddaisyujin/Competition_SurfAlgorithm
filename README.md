# Competition_SurfAlgorithm  
  
## Surf 알고리즘을 통한 시차 보정  
surf(Speeded up robust features)  
surf 설명: https://en.wikipedia.org/wiki/Speeded_up_robust_features  
대충 요약하자면, 빠르게 특징점을 찾아내는 알고리즘  
<br><br>

## 사용 목적  
2대 이상의 카메라를 평행하게 위치하여 물체를 찍을 때, 상을 중심으로 이미지를 겹칠 예정  
시차 보정(O), 왜곡 보정(X)  
  
  - 실험환경  
  카메라는 일직선을 이뤄야함.  
![실험환경](https://user-images.githubusercontent.com/35206992/103025145-8859e080-4594-11eb-9451-51754dd57d55.png)  
  
  
  - 결과
![이미지합3](https://user-images.githubusercontent.com/35206992/103025267-cc4ce580-4594-11eb-9f50-70db00c6d808.JPG)
![이미지합2](https://user-images.githubusercontent.com/35206992/103025272-ce16a900-4594-11eb-8911-60258acf067a.JPG)
![이미지합](https://user-images.githubusercontent.com/35206992/103025277-d1119980-4594-11eb-9b7c-c3de31194dc0.JPG)


## 사용 언어  
Matlab  
