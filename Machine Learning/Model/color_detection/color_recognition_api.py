# -*- coding: utf-8 -*-
"""Color recognition fix.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1fnlxI7tnhKdBZhPOvtYdX86IfQ2RbC9p
"""

import cv2
import numpy as np
import matplotlib.pyplot as plt
import requests
from flask import Flask, request, jsonify
from collections import Counter
from io import BytesIO

app = Flask(__name__)

# API endpoint
@app.route('/analyze-image', methods=['POST'])
def analyze_image():
    #3D Array of general color : red, green, blue, black, white, orange, purple, pink, grey, yellow, brown
    #RGB value is divided into class 0-4, 0 is <51.2, 1 is <102.4, 2 is < 153.6, 3 is < 204.8, 4 <=255, example 000 = 0,0,0 and 444 = 255,255,255
    color = [#000
      [#000
          ["Black", "Blue", "Blue", "Blue", "Blue"],#000 - 004
          ["Green", "Blue", "Blue", "Blue", "Blue"],#010 - 014
          ["Green", "Green", "Blue", "Blue", "Blue"],#020 - 024
          ["Green", "Green", "Green", "Blue", "Blue"],#030 - 034
          ["Green", "Green", "Green", "Blue", "Blue"],#040 - 044
      ],
      [#100
          ["Red", "Purple", "Purple", "Purple", "Purple"], #100 - 104
          ["Yellow", "Gray", "Purple", "Purple", "Purple"], #110 - 114
          ["Green", "Green", "Blue", "Blue", "Blue"], #120 - 124
          ["Green", "Green", "Green", "Blue", "Blue"], #130 - 134
          ["Green", "Green", "Green", "Blue", "Blue"], #140 - 144
      ],
      [
          ["Red", "Red", "Purple", "Purple", "Purple"], #200 - 204
          ["Brown", "Red", "Purple", "Purple", "Purple"], #210 - 214
          ["Yellow", "Gray", "Gray", "Blue", "Blue"], #220 - 224
          ["Yellow", "Green", "Green", "Blue", "Blue"], #230 - 234
          ["Yellow", "Green", "Green", "Green", "Blue"], #240 - 244
      ],
      [
          ["Red", "Pink", "Purple", "Purple", "Purple"], #300 - 304
          ["Orange", "Red", "Pink", "Purple", "Purple"], #310 - 314
          ["Yellow", "Orange", "Red", "Purple", "Purple"], #320 - 324
          ["Yellow", "Yellow", "Gray", "Gray", "Purple"], #330 - 334
          ["Yellow", "Yellow", "Green", "Green", "Blue"], #340 - 344
      ],
      [
          ["Red", "Pink", "Pink", "Purple", "Purple"], #400 - 404
          ["Orange", "Red", "Pink", "Purple", "Purple"], #410 - 414
          ["Orange", "Orange", "Red", "Pink", "Purple"], #420 - 424
          ["Yellow", "Yellow", "Orange", "Pink", "Purple"], #430 - 434
          ["Yellow", "Yellow", "Yellow", "Yellow", "White"], #440 - 444
      ],
    ]

    #Code for reading image and convert cv2 image default color BGR into RGB
    # Get the image URL from the user
    image_url = request.json['image_url']

    response = requests.get(image_url)
    image_data = response.content

    # Load the image data into a numpy array
    img = cv2.imdecode(np.frombuffer(image_data, np.uint8), cv2.IMREAD_COLOR)
    # img = cv2.imread('/content/sunflowers.jpg')
    img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)

    #Create kernel to resize shape for perform averaging pixels by 5x5, so if img default size is 250x250 will become 50x50
    #we only resize width and height, and keep the dim color of img =3 which is img.shape[2]
    #interpolation is used for determined pixel value after resize the image, inter_linear -> calculate new pixel value by weighted average 4 nearest pixel in the original image
    shape = (5, 5)
    reduced_img = cv2.resize(img, (img.shape[1] // shape[1], img.shape[0] // shape[0]), interpolation=cv2.INTER_LINEAR)
    print(reduced_img.shape)

    #Empty list for contain result of classify color
    img_color = []

    #Perform loop from 0 to height of reduced_img
    for i in range(0, reduced_img.shape[0]):
    #Perform loop from 0 to height of reduced_img
      for j in range(0, reduced_img.shape[1]):
        #Accessing pixel value of reduced_img[i,j, (0/1/2)] then divide by 50 to get value into 0-4 so we can classify the color based on our list
        #notes: [i,j,(0/1/2)] = [height, width, channels]
        r = int(reduced_img[i, j, 0]) // 50
        g = int(reduced_img[i, j, 1]) // 50
        b = int(reduced_img[i, j, 2]) // 50

        #len(color), len(color[r], len(color[r][g] = 5, it count value in each 3d array))
        #check if r,g,b is having value more than 5 then continue
        if r >= len(color) or g >= len(color[r]) or b >= len(color[r][g]):
          continue
        #store recognized color in list img_color
        img_color.append(color[r][g][b])

    # Count the occurrences of each recognized color
    color_counter = Counter(img_color)

    total_count = sum(color_counter.values())

    # Get the top five most common colors
    top_five_colors = color_counter.most_common(5)

    plt.imshow(reduced_img)
    plt.axis('off')
    plt.show()

    # Print the top five colors result
    for color, count in top_five_colors:
      percentage = (count / total_count) * 100
      print(f"Color: {color} - Percentage: {percentage:.2f}%")

    # Return the result as JSON response
    return jsonify({'result': top_five_colors})

if __name__ == '__main__':
    app.run()