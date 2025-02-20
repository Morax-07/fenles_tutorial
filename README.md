# <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKplh8VVUkjMLnDNlo3Bc2s2PKyxKzJJ9R2A&s" alt="Fenles logo" width="50px" height="50px"/>        FENLES TUTORIAL  


<br />
<br />
<br />



## Installation
  To start the static version of the project you need to **install Flutter** by going [here] (https://docs.flutter.dev/get-started/install) and following the instructions.  
  Then you need to **install NodeJS** by going [here](https://nodejs.org/en/download) and installing a version between **18.0.0 and 20.x.x**.  
  Next open the project in **Visual Studio Code** (if not already installed do that by going [here](https://code.visualstudio.com)) and install the **Flutter extension**.

<br />
<br />

  
## Static Version
  In order to run the **Static Version** go to **everisfridaypubsapp -> lib -> main.dart** and debug it.

<br />
<br />


## Dynamic Version
  In order to run the **Static Version** you need to **start your API** first by going to into **my-project** directory and run
  
```bash
npm run develop
```

Navigate with your browser to [http://localhost:1337](http://localhost:1337):
- Create an **Account**
- Go to **Content-Types Builder**
- Click **"Create new Collection Type"**
- Enter ***Pubs*** as **collection name** 
- Enter ***Pub*** as **API ID (Singular)** and ***Pubs*** as **Plural**

<br />

Now we have to create a **model Pub**.
**Create a model with theese fields**:
- name - Text
- address - Text
- picture - Media (Select the Type **Single media**)
- avgPrice - Number (Select the Type **Integer**)

<br />

Now feel free to create how many ***Pubs*** you want.

<br />

Now go to **Settings -> USERS & PERMISSIONS PLUGIN -> Roles -> Public -> Pub** and check the **Select all** checkbox.

<br />

To check if everything is forking fine **navigate to the page** [http://localhost:1337/api/pubs](http://localhost:1337/api/pubs) or **open the terminal** and paste this command:

```bash
curl localhost:1337/api/pubs
```

<br />

You should now get an output similar to this:
![image](https://fenles.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F0e67ce7f-0356-47e4-bee3-368eb94866c8%2F409339d8-d2f1-480d-a91e-c8193d8df43b%2Fimage.png?table=block&id=4046071a-e16e-4e89-8034-cd854155649f&spaceId=0e67ce7f-0356-47e4-bee3-368eb94866c8&width=1420&userId=&cache=v2)

Then go to **everisfridaypubs_app -> lib -> main.dart** and debug it.

<br />
<br />

***

<br />

🧑🏻‍💻 Author: Mora Francesco  
🗓️ Date: 2025-02-20  
🗺️ Location: Barcellona, Spain

Project made during **Fenles trainingship** (from 2025-02-16 to 2025-03-01)
