# Competition_SurfAlgorithm  
  
## Surf 알고리즘을 통한 시차 보정 <br> 간단한 예제(with Matlab)  
surf(Speeded up robust features)  
surf 설명: https://en.wikipedia.org/wiki/Speeded_up_robust_features  
간단하게 요약하자면, 빠르게 특징점을 찾아내는 알고리즘  
<br><br>

## 사용 목적  
2대 이상의 카메라를 평행하게 위치하여 물체를 찍을 때, 객체를 중심으로 이미지를 겹칠 예정  
시차 보정(O), 왜곡 보정(X)  
  
  - 실험환경  
  카메라는 일직선을 이뤄야함.  
![실험환경](https://user-images.githubusercontent.com/35206992/103025145-8859e080-4594-11eb-9451-51754dd57d55.png)  
  
  
  ## 결과    
  ---
  ### 이미지를 크롭했을 때
<br>

![image](https://user-images.githubusercontent.com/35206992/103025503-4bdab480-4595-11eb-90e0-ddd0d14ce2b5.png)

---

![image](https://user-images.githubusercontent.com/35206992/103025492-44b3a680-4595-11eb-83eb-2cf45225d350.png)
<br><br><br>

---

<br><br><br>
  ### 이미지를 이동했을 때
<br>

![image](https://user-images.githubusercontent.com/35206992/123571471-3c1e8000-d805-11eb-8f71-6272ce182f95.png)

![image](https://user-images.githubusercontent.com/35206992/123571860-1776d800-d806-11eb-81db-771b5b7becf2.png)
<br><br><br><br>

---

<br><br><br>
  ### 영상 시차보정
<br>

![slow](https://user-images.githubusercontent.com/35206992/123573234-848b6d00-d808-11eb-9356-2d8c9c43f781.gif)

<br><br><br><br>

---

<br><br><br>
## 사용 언어  
Matlab <br> 
<br>
<br>
<br>

## 그 외 매트랩 feature detection  
https://kr.mathworks.com/help/vision/feature-detection-and-extraction.html
<br>
<br>
<br>
<br>
<br>

