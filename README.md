# ODIN SMART APP 🧑🏽‍💻 📱

## Presentation 📈
<p align="justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Imagine an environment. An environment where you can direct your life with a single device or even an application you have installed on your mobile phone. You can learn the charging status of your car, as well as an environment where you can track the location of your car and the nearest charging stations. You don't need the TV remote anymore. Your remote controller can now disappear wherever it wants because you no longer need it. You can turn your home's lights on and off, and tell them what time to turn on and off. You can apply the same process to your curtains or anything that may be related to light. Forgot to turn off the power supplies when leaving the house? This is no longer a problem. This app will do that for you. Apart from these, you can access security cameras even when you are away from your home. This way, your mind will not be left behind. This application is also very suitable for development and any feature you can think of can be added.</p>

## Technical Part 💻 
<p align="justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In app, attention was paid to the concept of clean code in general. Code repetitions are avoided as much as possible. The customized MVVM pattern is blended with the BLoC structure. The testability of the written codes has been meticulously emphasized. TDD was not implemented due to time constraints, but unit tests were coded later. 
<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Firebase Authentication and Firebase Realtime Database are generally used as services. A different url is used just to access the weather data. The database structure used in the service structure is presented in the application folders as "assets/db.json". 
<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In app, the concept of Abstraction has not been used in general due to time constraints, but it will be easy to transition to a structure where this abstraction is used more intensively through the folder structure designed in accordance with the Clean Architecture. 
<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It is designed in such a way that the devices integrated into the application have a connection to the internet through a manager and communicate from there. For example, all these devices can be managed by a device connected to the main power input. It is also designed that it communicates via a chip developed for complex systems such as television and cars, and this is done over the internet. In addition, the bluetooth feature could be used for some devices, but since we needed the device for testing, this was suspended and communication on the internet was taken as a basis. 
<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;While the main screen is loading, data is drawn from the remote data source for almost all features. In order for this to work healthily and quickly, the concepts of Multi-Threading and Isolate were used while extracting data. A live video on Youtube was chosen as camera tests.</p>

## Packages Used in the Application ⚙️

### Firebase Services:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- firebase_core
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- firebase_auth
### Localization:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- easy_localization
### State Management
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- flutter_bloc
### Location Services
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- google_maps_flutter
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- geolocator
### Dependency Injection
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- get_it
### Remote Datasource
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- http
### Presenting Video Streams
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- youtube_player_flutter
### Test
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- mockito

## Upgradeable Parts 🛠

- The structure was created for local languages, but it was not used due to time constraints.
- Considered to manage power sources separately, but not done due to time constraints
- TouchPad feature was considered for Remote Controller but not made due to time constraints
- It was planned to add different devices, but could not be done due to time constraints.
- A quick study was carried out as a design. Icons, sizes and colors may change in the future, but the general architecture is considered appropriate.


## Screenshots
![IMG_1551](https://user-images.githubusercontent.com/43931758/157697473-b8c837f9-f9df-4b79-99fc-52334cd8f3f0.PNG)
![IMG_1552](https://user-images.githubusercontent.com/43931758/157697492-a7b16c01-5eeb-43e6-826e-7aac9b3c604b.PNG)
![IMG_1553](https://user-images.githubusercontent.com/43931758/157697496-ea0d99c6-a022-4848-8608-97b49a52deec.PNG)
![IMG_1547](https://user-images.githubusercontent.com/43931758/157697505-cce9a64a-8fee-41c1-a446-1ceff90eb0d2.PNG)
![IMG_1548](https://user-images.githubusercontent.com/43931758/157697511-019d18c9-cbc7-4fa3-8a36-09c8fcf3c009.PNG)
![IMG_1554](https://user-images.githubusercontent.com/43931758/157697517-38cef311-61e6-47cf-84c0-cc4576cfe089.PNG)
![IMG_1555](https://user-images.githubusercontent.com/43931758/157697522-d15de315-b510-4218-a3b1-e4b9277343a5.PNG)
![IMG_1550](https://user-images.githubusercontent.com/43931758/157697526-ca000e26-994d-42bc-933a-ae3a3cbe4906.PNG)
![IMG_1549](https://user-images.githubusercontent.com/43931758/157697531-f1946cde-bb30-4170-be4a-d794bbdb4a7c.PNG)

