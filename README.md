
# MS_Engage_2021_Program
#MS_Teams_Clone

A new Flutter project.
Made during MS ENGAGE PROGRAM 2021. 
My project is basically an improved version of the MS Teams with certain extra features. Currently MS Teams has only some  features like Videocall, Chat, Assignments Upload and some small features. I had tried improving the app by adding some more functionalities by:
The app has a multiple way authentication feature where all the credential details will be stored in firebase.
1. Increasing security by changing the joining code every time using some random function and adding a security code to join that particular meeting so that no 2 participants come by mistake to this meeting.The videocall functionality has been added ith the help of Jitsi Meet.
2.Previously the calendar couldn't be edited in for short time period or long time period but now we can view the calendar or our scheduled events on a 2week or single week format.
3.Earlier when we had to share any hardcopy of a document we couldnt get a pasteable pdf format so I had added a functionality of an OCR(Optical Character Recognition)which with the help of ML - DL helps in getting the document in an editable text format so that if we send the photo of a document all the text would be extracted from the document and would be edited easily using the flutter mobile vision package.
4.If we had to get any daily update of news then we had to switch tabs multiple times but now I had added a functionality to view view news within the app using api key from NewsApi.org
5. If we had to create a QR to transfer some confidential information then there wasn't any possible way but here I have added a feature to make QR code or scan any QR code instantly.
6. A to-do list helps in organizing the tasks and was of very much importance so I had also added a  To-do list which was not available earlier ,here we would get a notification about the task when it is deleted.
7. Along with all these features I had added a functionality to chat 
where all the chat data will be stored in back-end in the firebase database and all the pictures shared in chat will b stored in firebase storage .When we receive a new message we will be getting a notification about the message. 
8.The Assignments uploaded will also be stored in a file in firebase storage.

This project is made using Flutter and Firebase and I have followed AGILE Methodolgy .I had added some basic features along with the current MS Teams features like 

1.Added a  Realtime News feature using NewsApi.org

2.Added a Todo List

3.Added a QR code Creator and Scanner

4.OCR (optical character recognition)which converts an image directly to text format.

The current Existing features in the MS Teams included :
Assignment Uploading, Meetings feature and a Chat ,Calendar and  Activity Feature.
You can contact me at : amityadav1010101010@gmail.com
Video of Presentation of the app during final Submission:
https://youtu.be/AWJGwpJH4UM

All the Screens are present here:
https://drive.google.com/drive/folders/1WCxp09Uj3X8_YdfPCDQWe3f2JW56Ub0N?usp=sharing
For detailed explanation on each feature see my next video:
https://www.youtube.com/watch?v=aSj8qtuZXiM
## WIREFRAMES
https://www.figma.com/file/aK161mKNgtSdQXGXMYLuK4/Untitled?node-id=0%3A1
![Screenshot (7)](https://user-images.githubusercontent.com/56102543/125437556-d8da7bb9-2a22-4f62-951c-e1ea430de88c.png)
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
 # Requirements for running the app:
 (1) JAVA 11
 
 (2) Android Emulator with playstore(as playstore is a must for the working of OCR Feature[I used NEXUS 5P ]
 
 (3) The UI was made according to Pixel 3X and if used in any other then we will get yellow and black zebra lines as I got in the video Demonstration. 
 
